{$asmmode intel}
{$output format asw}
var a, c: longint; //longint - 4 байтные числа
begin
a:= 999;
asm
lea esi, a
lea edi, c
mov bl, 10 //умножение на 1 байтовое число
mov edx, 4

@1:
mov al,[esi]      //берём 0 байт, копируем в al
mul bl            //умножение
add al,ch         //добавляем к al ch(в нём ah от прошлого цикла, для первого 0)
mov ch,ah 
mov [edi], al     //записываем полученный байт в 0 байт числа вывода
inc esi           //esi:=esi+1
inc edi
sub edx,1
jnz @1

end;
Writeln(c);
Writeln(a*10);
Readln();
end.
