override MYDIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
override TOPDIR := $(abspath $(MYDIR)/..)

ABI ?= armeabi armeabi-v7a armeabi-v7a-hard x86 mips arm64-v8a x86_64 mips64
TOOLCHAIN_VERSION ?= clang3.7
WITH_TESTS ?= yes

#========================================================================================

__comma := ,
__empty :=
__space := $(__empty) $(__empty)

define commas-to-spaces
$(subst $(__comma),$(__space),$(1))
endef

define spaces-to-commas
$(subst $(__space),$(__comma),$(1))
endef

# $1: ABI
define builddir
$(or $(strip $(BUILDDIR)),$(MYDIR)/out/$(1)/build)
endef

# $1: ABI
define installdir
$(or $(strip $(INSTALLDIR)),$(MYDIR)/out/$(1)/install)
endef

define abis
$(call commas-to-spaces,$(ABI))
endef

define downcase
$(strip \
$(subst A,a,$(subst B,b,$(subst C,c,$(subst D,d,$(subst E,e,$(subst F,f,$(subst G,g,\
$(subst H,h,$(subst I,i,$(subst J,j,$(subst K,k,$(subst L,l,$(subst M,m,$(subst N,n,\
$(subst O,o,$(subst P,p,$(subst Q,q,$(subst R,r,$(subst S,s,$(subst T,t,$(subst U,u,\
$(subst V,v,$(subst W,w,$(subst X,x,$(subst Y,y,$(subst Z,z,$(1))))))))))))))))))))))))))))
endef

define is-true
$(if $(filter 1 yes true on,$(call downcase,$(1))),yes)
endef

define is-verbose
$(or $(call is-true,$(VERBOSE)),$(call is-true,$(V)))
endef

#========================================================================================

.PHONY: all
all: build

.PHONY: rebuild
rebuild:
	@$(MAKE) --no-print-directory clean
	@$(MAKE) --no-print-directory build

.PHONY: configure
configure: $(addprefix configure-,$(call abis))

.PHONY: build
build: $(addprefix build-,$(call abis))

.PHONY: test
test: $(addprefix test-,$(call abis))

.PHONY: install
install: $(addprefix install-,$(call abis))

.PHONY: clean
clean: $(addprefix clean-,$(call abis))

define add-build-rule
.PHONY: configure-$(1)
configure-$(1): | $$(call builddir,$(1))
	$$(if $$(strip $$(wildcard $$(NDK))),\
		$$(eval override NDK := $$(wildcard $$(NDK))),\
		$$(error NDK is not specified)\
	)
	$$(strip cd $$(call builddir,$(1)) && \
		cmake \
			-DWITH_TESTS=$$(WITH_TESTS) \
			-DCMAKE_INSTALL_PREFIX=$$(call installdir,$(1)) \
			-DCMAKE_TOOLCHAIN_FILE=$$(NDK)/cmake/toolchain.cmake \
			-DANDROID_ABI=$(1) \
			-DANDROID_TOOLCHAIN_VERSION=$$(TOOLCHAIN_VERSION) \
			$$(TOPDIR) \
	)

.PHONY: build-$(1)
build-$(1): configure-$(1)
	$$(MAKE) --no-print-directory -C $$(call builddir,$(1)) $$(if $$(is-verbose),VERBOSE=1)

.PHONY: test-$(1)
test-$(1):
	$$(MAKE) --no-print-directory -C $$(call builddir,$(1)) test ARGS="$$(strip \
		$$(if $$(is-verbose),-V) \
		$$(foreach __t,$$(call commas-to-spaces,$$(TEST) $$(TESTS)),-R $$(__t)) \
	)"

.PHONY: install-$(1)
install-$(1): build-$(1)
	$$(MAKE) --no-print-directory -C $$(call builddir,$(1)) install

.PHONY: clean-$(1)
clean-$(1):
	$$(if $$(wildcard $$(call builddir,$(1))),-rm -Rf $$(call builddir,$(1)))
	$$(if $$(wildcard $$(dir $$(call builddir,$(1)))),@rmdir $$(dir $$(call builddir,$(1))) >/dev/null 2>&1 || true)

$$(call builddir,$(1)):
	mkdir -p $$@
endef

$(foreach __abi,$(call abis),\
    $(eval $(call add-build-rule,$(__abi)))\
)
