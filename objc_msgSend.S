#include "common.S"
#include "asmconstants.h"
#if __x86_64
#include "objc_msgSend.x86-64.S"
#elif __i386
#include "objc_msgSend.x86-32.S"
#elif __arm__
#include "objc_msgSend.arm.S"
#elif defined(__ARM_ARCH_ISA_A64)
#include "objc_msgSend.aarch64.S"
#elif (defined(__mips_n64) || defined(__mips_n32)) && !defined(__ANDROID__)
#include "objc_msgSend.mips.S"
#elif defined(__ANDROID__) && defined(__mips__) && !defined(__mips64)
#include "objc_msgSend.mips-noimpl.S"
#elif defined(__ANDROID__) && defined(__mips__) && defined(__mips64)
#include "objc_msgSend.mips64-noimpl.S"
#else
#error objc_msgSend() not implemented for your architecture
#endif
#ifdef __ELF__
.section .note.GNU-stack,"",%progbits
#endif
