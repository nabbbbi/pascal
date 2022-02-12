program k;
type
   v = array [1..5] of integer;
   var
      a	: v = (25,63,7,15,89);
      i,c	: integer;
      begin
	 while not eof do
		  begin
		     for i:=1 to 5 do
			begin
	       read(c);
			   a[i]:=c
		  end;
	 for i:=1 to 5 do
	    writeln(a[i])
		  end;
      end.
