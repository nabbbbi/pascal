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
	    if c = #10 then {enter}
	       begin
		  if print and know then {}
		     writeln;
		  know:=false {are we printing?}
	       end
		  else
		     begin
		     if not know then
			begin
			   print:= (c <> ' ') and (c <> #9); {any symbol barring "space" and "tabulation"}
			   know:=true {Yes! We printing}
			end;
		  if print then
		     write(c)
	       end
	 end
   end.
