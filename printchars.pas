program ma;
procedure PrintChars(ch	: char; count : integer);
begin
   if count > 0 then
      begin
	 writeln(ch);
	 PrintChars(ch, count - 1)
      end
end;
var
   i  : integer;
   ch : char;
begin
   i:=10;
   ch:='#';
   PrintChars(ch,i)
end.
