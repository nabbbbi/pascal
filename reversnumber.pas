program reversnumber;
function doreversnumber(n,m : longint):longint; {function 1}
begin
   if n = 0 then
      doreversnumber:= m
   else
      doreversnumber:=doreversnumber(n div 10, m*10 + n mod 10) {function 2}
end;
function reversnumber(n	: longint):longint;
begin
   reversnumber:=doreversnumber(n,0)
end;
var
   x : integer;
   begin
      readln(x);
      reversnumber(x);
      writeln(x)
   end.
