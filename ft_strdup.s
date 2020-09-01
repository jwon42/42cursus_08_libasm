;Prototype
;char *ft_strdup(const char *s1);

section .text
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	push	rdi ; ���ÿ� rdi ����
	call	_ft_strlen ; ft_strlen ȣ��
	mov		rdi, rax ; rdi�� ft_strlen ��ȯ �� ����
	call	_malloc ; malloc ȣ��
	cmp		rax, 0 ; malloc���� �Ҵ�� ������ 0(NULL) ��
	je		exit ; ���ٸ� exit�� �̵�
	pop		rsi ; ���ÿ� �����ߴ� ���� �̾ƿͼ� rsi�� ����
	mov		rdi, rax ; rdi�� malloc ��ȯ �� ����
	sub		rsp, 8 ; 8����Ʈ ��ŭ ���� ����
	call	_ft_strcpy ; ft_strcpy ȣ��
	add		rsp, 8 ; 8����Ʈ ��ŭ ���ؼ� ����
	jmp		exit ; exit�� �̵�

exit:
	ret ; rax �� ����