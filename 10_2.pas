program zad10_2;
const
  n = 20;
var
  arr: array[1..n] of integer;
  i: integer;
  
BEGIN

// задается массив
  for i:= 1 to n do
    begin
    arr[i]:= random(-30, 30);
    write('arr[',i,']=', arr[i]:3, '     ');
    end;
    
  writeln;
  writeln;
  
// 
  for i:= 1 to n do
  begin
    if arr[i] < 0 then continue
    else write('arr[',i,']=', arr[i]:3, '     ');
  end;
END.