program zad9_2;
const
  n = 20;
var
  arr: array[1..n] of integer;
  i, index_plus, variable, index_min, min_el: integer;
  
BEGIN
  min_el:= 30;
// задается массив
  for i:= 1 to n do
    begin
    arr[i]:= random(-30, 30);
    write('arr[',i,']=', arr[i]:3, '     ');
    end;
    
  writeln; 
  
// определение первого положительного элемента
  for i:= 1 to n do
    if arr[i] > 0 then 
    begin
      index_plus:= i;
      variable:= arr[i];
      break
    end;
    println('первый положительный элемент = ', variable, ' , индекс этого элемента = ', index_plus);


// определение наименьшего элемента массива 
  for i:= 1 to n do
  if min_el > arr[i] then 
  begin
    min_el:= arr[i];
    index_min:= i;
  end;
  println('наименьший элемент = ', min_el, ' , индекс этого элемента = ', index_min);
  println;
  
  if index_plus = 1 then
    begin
    for i:= 2 to index_plus - 1 do
      begin
      if i = index_min then continue;
      write('arr[',i,']=', arr[i]:3, '     ');
      end;
    
    for i:= index_plus + 1 to n do
      begin
      if i = index_min then continue;
      write('arr[',i,']=', arr[i]:3, '     ');
      end;
    end;
  println;
  
  if index_plus > 1 then
    begin
    for i:= 1 to index_plus - 1 do
        begin
        if i = index_min then continue;
        write('arr[',i,']=', arr[i]:3, '     ');
        end;
    
    for i:= index_plus + 1 to n do
       begin
       if i = index_min then continue;
       write('arr[',i,']=', arr[i]:3, '     ');
       end;
    end;
END.