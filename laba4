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
Write('‚¢¥¤¨â¥ ',i,',',j,' í«¥¬¥­â ¬ áá¨¢ : ');
Read(arr[i,j]);
end;
end;
Writeln('‚ è ¬ áá¨¢:');
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
mov ax,n+1  //ª®«¨ç¥áâ¢® í«-â®¢ ¢ áâà®ª¥, +1 âª ­ ç¨­ ¥âáï á 0
mul si      //i*ª®«¨ç¥áâ¢® í«-â®¢
add ax,di   //¯à¨¡ ¢«ï¥¬ ¥éñ j
shl ax,1    //ã¬­®¦ ¥¬ ­  2
add bx,ax   //¯à¨¡ ¢«ï¥¬ ¯®«ãç¥­­®¥ á¬¥é¥­¨¥
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
Writeln('‚ è ¬ áá¨¢ ¯®á«¥ ¢ë¯®«­¥­¨ï ®¡à ¡®âª¨:');
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
