program zad1;
const
  n = 20; 
var
  massiv : array [1..n] of integer;
  i : integer;

begin
// заполнение массива с клавиатуры
  for i:=1 to n do
  begin
   write('massiv[',i,']=');
   read(massiv[i]);
  end;

// вывод получившегося массива  
  writeln;
  writeln('vash massiv: ');
    for i:=1 to n do
     write(massiv[i],'  ');
    
// замена положительных элементов на ноль and возведение отрицательных элементов в квадрат
  for i:=1 to n do
  begin
    if massiv[i] > 0 then massiv[i]:= 0
    else massiv[i] := sqr(massiv[i]);
  end;

// вывод
  writeln;
  writeln('-----------------');
  writeln('vash new massiv: ');
  for i:=1 to n do
    write(massiv[i],'  ');
end.