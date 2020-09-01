;Prototype
;char *ft_strcpy(const char *dst, const char *src);

section .text
	global _ft_strcpy

_ft_strcpy:
	mov	rcx, 0 ; rcx �� 0���� �ʱ�ȭ
	mov	rbx, 0 ; rbx �� 0���� �ʱ�ȭ
	cmp	rsi, 0 ; rsi�� 0(NULL) ��
	je	exit ; ������ exit���� �̵�

copy:
	mov	bl, byte [rsi + rcx] ; bl�� ���ڿ� *src�� rcx��° ���ڷ� �ʱ�ȭ
	mov	byte [rdi + rcx], bl ; ���ڿ� *dst�� rcx��° ���ڸ� bl�� �ʱ�ȭ
	inc	rcx ; rcx++
	cmp	bl, 0 ; bl�� 0(NULL) ��
	je	exit ; ������ exit���� �̵�
	jmp	copy ; copy�� �̵�

exit:
	mov	rax, rdi ; rax�� rdi �� ����
	ret ; rax �� ����