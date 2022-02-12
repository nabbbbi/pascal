program repyear;
var
   year	: integer;
   begin
      repeat
	 read(year)
	 until
      (year >= 1900) and (year <= 2021)
   end.
