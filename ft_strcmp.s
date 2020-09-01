;Prototype
;int ft_strcmp(const char *s1, const char *s2);

section .text
	global _ft_strcmp

_ft_strcmp:
	mov	rax, 0 ; rax �� 0���� �ʱ�ȭ
	mov	rbx, 0 ; rbx �� 0���� �ʱ�ȭ
	mov	rcx, 0 ; rcx �� 0���� �ʱ�ȭ
	jmp	compare ; compare�� �̵�

compare:
	mov	al, byte [rdi + rcx] ; al�� ���ڿ� *s1�� rcx��° ���ڷ� �ʱ�ȭ
	mov	bl, byte [rsi + rcx] ; bl�� ���ڿ� *s2�� rcx��° ���ڷ� �ʱ�ȭ
	cmp	al, bl ; al, bl �� ��
	jne	different ; �ٸ��� different�� �̵�
	je	same ; ������ same���� �̵�

different:
	sub	rax, rbx ; rax���� rbx ����
	ret ; rax �� ����

same:
	cmp	al, 0 ; al�� 0(NULL) ��
	je	exit ; ������ exit�� �̵�
	inc	rcx ; rcx++
	jmp	compare ; compare�� �̵�

exit:
	mov	rax, 0 ; rax�� 0���� �ʱ�ȭ
	ret ; rax �� ����