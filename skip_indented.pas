program Skip_Indented;
var
   c	      : char;
   print,know : boolean;
   begin
      print:=false;
      know:=false;
      while not eof do
	 begin
	    read(c);
	    if c = #10 then
	       begin
		  if print and know then
		     writeln;
		  know:=false
	       end
		  else
		     begin
		     if not know then
			begin
			   print:= (c <> ' ') and (c <> #9);
			   know:=true
			end;
		  if print then
		     write(c)
	       end
	 end
   end.
