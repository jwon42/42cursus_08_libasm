;Prototype
;ssize_t ft_write(int fd, void *buff, size_t nbyte);

section .text
	global _ft_write
	extern ___error

_ft_write:
	mov		rax, 0x2000004 ; OSX �̱� ������ upper bits �� 2�� ����, 4�� write �ý����� �ѹ�
	syscall ; �ý�����
	jc		_err ; ������ �ִٸ� carry flag on
	ret ; rax �� ����

_err:
	push	rax; ���ÿ� rax ��(���� �ּ�) ����
	call	___error ; ___error ȣ��
	pop		rdx ; ���ÿ� �ִ� ���� rdx�� ����
	mov		[rax], rdx ; rax �ּҴ� �������� �ʰ� ���� rdx�� ������ ����
	mov		rax, -1 ; rax �� -1 ����
	ret ; rax �� ����