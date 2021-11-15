{$asmmode intel}
{$output format asw}
const
m = 2;
n = 1;
var
big,small,i,j,t: integer;
arr: array[0..m,0..n] of integer;
begin
for i:= 0 to m do
begin
for j:= 0 to n do
begin
Write('������ ',i,',',j,' ����� ���ᨢ�: ');
Read(arr[i,j]);
end;
end;
Writeln('��� ���ᨢ:');
for i:= 0 to m do
begin
for j:= 0 to n do
begin
Write(arr[i,j],' ')
end;
Writeln();
end;

asm
mov ecx,m+1
mov si,0
mov di,0

@3:
push ecx
mov ecx,n
@1:
push esi
lea ebx,arr
mov ax,n+1  //������⢮ �-⮢ � ��ப�, +1 � ��稭����� � 0
mul si      //i*������⢮ �-⮢
add ax,di   //�ਡ���塞 ��� j
shl ax,1    //㬭����� �� 2
add bx,ax   //�ਡ���塞 ����祭��� ᬥ饭��
mov ax, [ebx+2]
cmp ax, [ebx]
jl @small
je @2

@big:
add big,1
jmp @2

@small:
add small,1
push dx
mov dx,[ebx]
mov [ebx],ax
mov [ebx+2],dx
pop dx

@2:
pop esi
loop @1
pop ecx

inc si
mov di,0
loop @3

end;
Writeln();
Writeln(big);
Writeln(small);
Writeln();
Writeln('��� ���ᨢ ��᫥ �믮������ ��ࠡ�⪨:');
for i:= 0 to m do
begin
for j:= 0 to n do
begin
Write(arr[i,j],' ')
end;
Writeln();
end;
Readln();
end.
