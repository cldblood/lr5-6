program zad3_1;
const
  n = 20;
var
  i, max, max_index, min, min_index, aliquot, j, k : integer;
  a : array[1..n] of integer;
  
begin
  min:= 66;
// задается массив с диапозоном из 20ти чисел  
  for i:= 1 to n do
  begin
    a[i]:= random(-52, 65);
    write('a[',i,']=', a[i]:4, '     ');
  end;
  writeln;
  writeln;

// сортировка массива
  for i:= 1 to n do
    for j:= i + 1 to n do
      if a[i] < a[j] then 
      begin
        k := a[i];
        a[i] := a[j];
        a[j] := k; 
      end;
  writeln;
  
// проверка элементов массива на уникальность
  i:= 1;
   for i:= 1 to n do
     for j:= i + 1 to n do
      if (a[i] = a[j]) then a[j]:= a[j] - 2;
   
  for i := 1 to n do write('a[',i,']=', a[i]:4, '     ');
  writeln; 
  
// нахождение наибольшего элемента массива и его номера
  writeln;
  for i:= 1 to n do
  begin
    if a[i]> max then 
      begin
      max:= a[i];
      max_index:= i;
      end;
  end;
  writeln('наибольший элемент = ', max, ' и его индекс = ', max_index);


// нахождение наименьшего положительного элемента массива и его номера
  writeln;
  for i:= 1 to n do
  begin
    if (a[i] < min) and (a[i] > 0) then
    begin
      min:= a[i];
      min_index:= i;
    end;
  end;
  writeln('наименьший положительный элемент = ', min, ' и его индекс = ', min_index);

// нахождение номера последнего элемента массива кратного 5
  writeln;
  for i:= 1 to n do
  begin
    if a[i] mod 5 = 0 then aliquot:= i;
  end;
  writeln('номер последнего элемента массива кратного 5 = ', aliquot);

end.