;Prototype
;size_t ft_strlen(const char *s);

section .text
	global _ft_strlen

_ft_strlen:
	mov	rax, 0 ; ������ rax �� 0���� �ʱ�ȭ
	jmp	count ; count�� �̵�

count:
	cmp	BYTE [rdi + rax], 0 ; 1����Ʈ�� �а�, 0(NULL) �� ��
	je	done ; ���� NULL �̶��? done ���� �̵�
	inc	rax ; rax++
	jmp	count ; count�� �̵�

done:
	ret ; rax �� ����
