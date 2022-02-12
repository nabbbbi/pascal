program rdkey;
uses crt;
var
   c,cc	: char;
   begin
      repeat
	 c:=ReadKey;
	 cc:=c;
	 if (c < #32) or (c > #126) then
	    cc:='?';
	 writeln(ord(c),'(',cc,')')
until
c = ' '
end.
	 
   
