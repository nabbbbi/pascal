program mul;
var
   x,y : integer;
   begin
      {$I-}
      read(x,y);
      if IOResult = 0 then
	 writeln(x*y)
      else
	 writeln('Can''t analysis')
   end.
