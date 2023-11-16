program zad2_1;
var
  i, count, n1, n2, sum: integer;
  product: int64;
  a : array[1..20] of integer;
  
begin
  product:= 1;

//задается массив с диапозоном из 20ти чисел  
  for i:= 1 to 20 do
  begin
    a[i]:= random(-22, 93);
    write('a[',i,']=', a[i]:4, '     ');
  end;
  writeln;
  

//опеределить количество четных чисел на нечетных позициях  
  writeln;
  for i:= 1 to 20 do
  begin
    if (a[i] mod 2 = 0) and (i mod 2 <> 0) then count:= count + 1;
  end;
  writeln('количество четных чисел на нечетных позициях = ', count);
  
  
//вычисление произведения нечетных элементов массива
  writeln;
  for i:= 1 to 20 do
  begin
    if a[i] mod 2 <> 0 then product:= product * a[i];
  end;
  writeln('произведения нечетных элементов массива = ', product);


//нахождение суммы элементов массива по заданному промежутку
  writeln;
  writeln('введите промежуток от n1 до n2');
  readln(n1, n2);
  for i:= n1 to n2 do
  begin
    sum:= sum + a[i];
  end;
  writeln('сумма элементов массива = ', sum);
end.