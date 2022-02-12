program PrintDigits;
procedure PrintDigitOfNumber(n : integer);
begin
   if n > 0 then
      begin
	 PrintDigitOfNumber(n div 10);
	 write(n mod 10, ' ')
      end
end;
var
   x : integer;
   begin
      read(x);
      PrintDigitOfNumber(x)
   end.

	 
