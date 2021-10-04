{$asmmode intel}
{$output format asw}
var a, c: longint;
begin
a:= 999;
asm
lea esi, a
lea edi, c
mov bl, 10
mov edx,4

@1:
mov al,[esi]
mul bl
add al,ch
mov ch,ah
mov [edi], al
inc esi
inc edi
sub edx,1
jnz @1

end;
Writeln(c);
Writeln(a*10);
Readln();
end.
