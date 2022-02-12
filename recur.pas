program recur;
procedure PrintChars(ch : char; count: integer);
begin
   if count > 0 then
      begin
	 write(ch);
	 PrintChars(ch,count - 1)
      end
end;
var
   x : integer;
begin
	 readln(x);
   PrintChars('&',x);
   writeln
      end.
