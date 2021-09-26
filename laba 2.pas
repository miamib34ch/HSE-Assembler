{$ASMMODE INTEL}
{$OUTPUT FORMAT ASW}
var a, b, c, d: integer;
begin
readln(a);
readln(b);
readln(c);
readln(d);
asm
mov AX,a
mov BX,b
mov CX,c
push d
mov DI,0ah  //10
mul DI
add AX,BX
mul DI
add AX,CX
mul DI
pop DX
add AX,DX
mov b,AX
end;
writeln(b);
readln();
end.
