program zad13_2;
const
  n = 20;
var
  arr: array[1..n] of integer;
  i, min_el, max_el, max_el1, min_el1, index_min, index_max: integer;
  
BEGIN
  max_el:= -30;
  min_el:= 30;
// задается массив
  for i:= 1 to n do
    begin
    arr[i]:= random(-30, 30);
    write('arr[',i,']=', arr[i]:3, '     ');
    end;
    
  writeln;
  writeln;
  
// нахождение наименьшего и наибольшего элемента
  for i:= 1 to n do
  begin
    if arr[i] > max_el then 
    begin
    max_el:= arr[i];
    index_max:= i;
    end;
    
    if arr[i] < min_el then 
    begin
    min_el:= arr[i];
    index_min:= i;
    end;
  end;
  
  writeln('max = ', max_el, ', индекс = ', index_max);
  writeln('min = ', min_el, ', индекс = ', index_min); 
  writeln;
  
   max_el1:= max_el;
   min_el1:= min_el;
  
  for i:= 1 to n do
  begin
    if i = index_max then arr[i]:= min_el1;
    write('arr[',i,']=', arr[i]:3, '     ');
  end;
  
    writeln;
    writeln;
  
  for i:= 1 to n do
  begin
    if i = index_min then arr[i]:= max_el1;
    write('arr[',i,']=', arr[i]:3, '     ');
  end;
  
END.