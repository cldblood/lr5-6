program zad4_1;
const
  n = 30;
var
  i, i1 : integer;
  a : array[1..n] of integer;
  b : array[1..n] of integer;
begin
  // задается массив с диапозоном из 30ти чисел  
  for i:= 1 to n do
  begin
    a[i]:= random(-99, 67);
    write('a[',i,']=', a[i]:4, '     ');
  end;
  writeln;
  
  // присвоение четных элементов А массиву Б и вывод второго
  writeln;
  for i:= 1 to n do
    if a[i] mod 2 = 0 then
      repeat
        i1:= i1 + 1;
        b[i1]:= a[i];
        write('b[',i1,']=', b[i1]:4, '     ');
        break
      until i1>n
end.