#define __SYSCALL_32BIT_ARG_BYTES 16
#include "SYS.h"

#ifndef SYS_access_extended
#error "SYS_access_extended not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__i386__) || defined(__x86_64__) || defined(__ppc__) || defined(__arm__) || defined(__arm64__)
__SYSCALL2(___access_extended, access_extended, 4, cerror_nocancel)
#endif

#if defined(__i386__)
	.globl	_accessx_np
	.set	_accessx_np, ___access_extended
#endif

#if defined(__x86_64__)
	.globl	_accessx_np
	.set	_accessx_np, ___access_extended
#endif

#if defined(__ppc__)
	.globl	_accessx_np
	.set	_accessx_np, ___access_extended
#endif

#if defined(__arm__)
	.globl	_accessx_np
	.set	_accessx_np, ___access_extended
#endif

#if defined(__arm64__)
	.globl	_accessx_np
	.set	_accessx_np, ___access_extended
#endif

