.POSIX:

.SUFFIXES: .cc .c .m .o .S

LIBOBJCLIBNAME=objc
LIBOBJC=libobjc
LIBOBJCXX=libobjcxx

INSTALL ?= install
SILENT ?= @

SYSLIBS = -Wl,-Bstatic,-lgcc -Wl,-Bdynamic -lcrystax -lc -ldl

WFLAGS = -Wall -Wextra -Werror
WFLAGS += -Wno-deprecated-objc-isa-usage

override CFLAGS += -std=gnu99 -fPIC -fexceptions $(WFLAGS)
override CXXFLAGS += -fPIC -fexceptions $(WFLAGS)
override CPPFLAGS += -DTYPE_DEPENDENT_DISPATCH -DGNUSTEP
override CPPFLAGS += -D__OBJC_RUNTIME_INTERNAL__=1 -D_XOPEN_SOURCE=500 -D__BSD_VISIBLE=1 -D_BSD_SOURCE=1

# Suppress warnings about incorrect selectors
override CPPFLAGS += -DNO_SELECTOR_MISMATCH_WARNINGS
# Some helpful flags for debugging.
#override CPPFLAGS += -g -O0 -fno-inline
override CPPFLAGS += -O3 -g

override OBJCFLAGS += -fobjc-exceptions

ifeq (1,$(shell echo __clang__ | $(CC) -x c -E - | grep -v '^\#'))
override CFLAGS += -fno-integrated-as
override CXXFLAGS += -fno-integrated-as
override ASMFLAGS += -fno-integrated-as
override OBJCFLAGS += -fintegrated-as
endif

PREFIX?= /usr/local
LIB_DIR= ${PREFIX}/lib
HEADER_DIR= ${PREFIX}/include

OBJCXX_OBJECTS = \
	objcxx_eh.o

OBJECTS = \
	NSBlocks.o\
	Protocol2.o\
	abi_version.o\
	alias_table.o\
	arc.o\
	associate.o\
	blocks_runtime.o\
	block_to_imp.o\
	block_trampolines.o\
	caps.o\
	category_loader.o\
	class_table.o\
	dtable.o\
	eh_personality.o\
	encoding2.o\
	gc_none.o\
	hash_table.o\
	hooks.o\
	ivar.o\
	legacy_malloc.o\
	loader.o\
	mutation.o\
	properties.o\
	protocol.o\
	runtime.o\
	sarray2.o\
	selector_table.o\
	sendmsg2.o\
	statics_loader.o\
	toydispatch.o

define add-objc_msgSend-implementation
OBJECTS += $$(if $$(filter 1,$$(shell echo $(1) | $$(CC) -x c -E - | grep -v '^\#')),objc_msgSend.$(2).o)
endef

$(foreach __p,\
    __arm__:arm \
    __i386__:x86-32 \
    __x86_64__:x86-64 \
    __mips_n32:mips-n32 \
    ,$(eval $(call add-objc_msgSend-implementation,$(firstword $(subst :, ,$(__p))),$(lastword $(subst :, ,$(__p))))))

ifeq (,$(filter objc_msgSend.%,$(OBJECTS)))
OBJECTS += objc_msgSend.noimpl.o
endif

all: $(LIBOBJC).a $(LIBOBJCXX).so

warning:
	@echo '********************************************************************************'
	@echo '*********************************** WARNING ************************************'
	@echo '********************************************************************************'
	@echo The Makfile build is deprecated, and should not be used.
	@echo Please use cmake.  The recommended procedure is:
	@echo $ mkdir Build
	@echo $ cd Build
	@echo cmake .. -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
	@echo "make && sudo -E make install"

$(LIBOBJCXX).so: $(LIBOBJC).so $(OBJCXX_OBJECTS)
	@echo Linking shared Objective-C++ runtime library...
	$(SILENT)$(CXX) -shared \
            -Wl,-soname=$(LIBOBJCXX).so -nostdlib $(LDFLAGS) \
            -o $@ $(OBJCXX_OBJECTS) $(SYSLIBS)

$(LIBOBJC).so: $(OBJECTS)
	@echo Linking shared Objective-C runtime library...
	$(SILENT)$(CC) -shared \
            -Wl,-soname=$(LIBOBJC).so -nostdlib $(LDFLAGS) \
            -o $@ $(OBJECTS) $(SYSLIBS)

$(LIBOBJC).a: $(OBJECTS)
	@echo Linking static Objective-C runtime library...
	$(SILENT)$(AR) rcs $@ $(OBJECTS)

.cc.o: Makefile
	@echo Compiling `basename $<`...
	$(SILENT)$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c $< -o $@

.c.o: Makefile
	@echo Compiling `basename $<`...
	$(SILENT)$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

.m.o: Makefile
	@echo Compiling `basename $<`...
	$(SILENT)$(CC) $(CPPFLAGS) $(CFLAGS) $(OBJCFLAGS) -c $< -o $@

.S.o: Makefile
	@echo Assembling `basename $<`...
	$(SILENT)$(CC) $(CPPFLAGS) $(ASMFLAGS) -c $< -o $@

$(INSTALL): all
	@echo Installing libraries...
	$(SILENT)install -d $(LIB_DIR)
	$(SILENT)install -m 444 $(LIBOBJC).so $(LIB_DIR)
	$(SILENT)install -m 444 $(LIBOBJCXX).so $(LIB_DIR)
	$(SILENT)install -m 444 $(LIBOBJC).a $(LIB_DIR)
	$(SILENT)echo Installing headers...
	$(SILENT)install -d $(HEADER_DIR)/objc
	$(SILENT)install -m 444 objc/*.h $(HEADER_DIR)/objc

clean:
	@echo Cleaning...
	$(SILENT)rm -f $(OBJECTS)
	$(SILENT)rm -f $(OBJCXX_OBJECTS)
	$(SILENT)rm -f $(LIBOBJC).so
	$(SILENT)rm -f $(LIBOBJCXX).so
	$(SILENT)rm -f $(LIBOBJC).a
