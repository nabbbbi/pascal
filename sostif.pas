program sostif;
var
   a,t : integer;
   b   : integer = 56;
   begin
      while not eof do
	 begin
      read(a);
      if a>b then
	 begin
	    t:=a;
	    a:=b;
	    b:=t;
	    writeln(a)
	 end;
	 end;
   end.
