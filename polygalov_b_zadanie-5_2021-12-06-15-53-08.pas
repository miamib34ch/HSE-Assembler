{$ASMMODE INTEL}
{$OUTPUT FORMAT ASW}
var
x,S,y: real;
n: longword;
begin
write('Введите х: ');
readln(x);
write('Введите n: ');
readln(n);
y:= ((exp(2*ln(x))/4 + x/2 + 1)*exp(x/2*ln(exp(1))));
asm
finit
mov ecx, n
mov n,1

fld x
fld1
fld1
faddp st(1), st
fdivp st(1), st    //x/2

fld1
fld st(1)

fld1               //n!  1

@1:

fild n
fmul st
fld1
faddp st(1), st    //n^2+1

fdiv st(0),st(1)
fmul st(0),st(2)

fxch st(1)
fild n
fld1
faddp st(1),st
fmulp st(1),st
fxch st(1)

fxch st(2)
fmul st,st(4)
fxch st(2)

faddp st(3),st
inc n

loop @1

fxch st(2)
fst S
end;

writeln(S);
writeln(y);
readln();
end.
