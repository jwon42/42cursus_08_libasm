## :notebook_with_decorative_cover: libasm

#### :page_facing_up: Mandatory part

- The library must be called **libasm.a**
- You must submit a **main** that will test your functions and that will compile with your library to show that it’s functional.
- You must **rewrite the following functions in asm**:
  - ft_strlen (man 3 strlen)
  - ft_strcpy (man 3 strcpy)
  - ft_strcmp (man 3 strcmp)
  - ft_write (man 2 write)
  - ft_read (man 2 read)
  - ft_strdup (man 3 strdup, you can call to malloc)
- You must **check for errors during syscalls and properly set them when needed**
- Your code must set the variable errno properly.
- For that, you are allowed to call the extern ___error.

