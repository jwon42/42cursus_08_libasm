;Prototype
;ssize_t ft_read(int fd, void *buff, size_t nbyte);

section .text
	global _ft_read
	extern ___error

_ft_read:
	mov		rax, 0x2000003 ; OSX �̱� ������ upper bits �� 2�� ����, 3�� read �ý����� �ѹ�
	syscall ; �ý�����
	jc		_err ; ������ �ִٸ� carry flag on
	ret ; rax �� ����

_err:
	push	rax ; ���ÿ� rax ��(���� �ּ�) ����
	call	___error ; ___error ȣ��
	pop		rdx ; ���ÿ� �ִ� ���� rdx�� ����
	mov		[rax], rdx ; rax �ּҴ� �������� �ʰ� ���� rdx�� ������ ����
	mov		rax, -1 ; rax �� -1 ����
	ret ; rax �� ����