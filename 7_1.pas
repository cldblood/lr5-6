program zad7_1; //определить длину максимальную неубывающего участка
const
  n = 10;
var
  arr: array[1..n] of integer;
  i, j, cmax, cmin: integer;

BEGIN
  cmax := 0;
  cmin := 1;
  
// задается массив
  for i:= 1 to n do
    begin
    arr[i]:= random(30);
    write('arr[',i,']=', arr[i]:3, '     ');
    end;
    
  writeln;
    
// определение длины неубывающего участка
  for i:= 1 to n - 1 do
    begin
    if arr[i] < arr[i + 1] then cmin := cmin + 1
    else 
      
    // если цепочка прерывается, то наибольший результат сохраняется, а счетчик обнуляется
      begin 
      if cmin > cmax then cmax := cmin;
      cmin := 1;
      end;
     // writeln('№', i, ' = ', cmin, ' min//max ', cmax);
      
    end;
  writeln('макс. длина неубывающего участка =  ', cmax);
  
END.