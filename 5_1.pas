program zad5_1;
const
  n = 20;
var
  arr1: array[1..n] of integer;
  arr2: array[1..n] of integer;
  sum1, sum2, i: integer;
  
BEGIN
// задается первый массив, считается сумма его элементов
  for i:= 1 to n do
    begin
    arr1[i]:= random(100);
    sum1:= sum1 + arr1[i];
    write('a1[',i,']=', arr1[i]:4, '     ');
    end;
  writeln;
  write('сумма элементов первого массива = ', sum1);
  
  writeln;
  writeln;
  writeln;
  
// задается второй массив, считается сумма его элементов
  for i:= 1 to n do
    begin
    arr2[i]:= random(100);
    sum2:= sum2 + arr2[i];
    write('a2[',i,']=', arr2[i]:4, '     ');
    end;
  writeln;
  write('сумма элементов второго массива = ', sum2);
  
  writeln;
  writeln;
  writeln;
  
// сравнение сум и умножение элементов
  if sum1 < sum2 then
  begin
    writeln('первый массив меньше: ');
    for i:= 1 to n do 
      begin
      arr1[i]:= arr1[i] * 10;
      write('a1[',i,']=', arr1[i]:4, '     ');
      end;
  end;
  
  if sum2 < sum1 then
  begin
    writeln('второй массив меньше: ');
    for i:= 1 to n do  
      begin
      arr2[i]:= arr2[i] * 10;
      write('a2[',i,']=', arr2[i]:4, '     ');
      end;
  end;
END.