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
		  if print and know then {now knowing printing or not}
		     writeln;
		  know:=false {stil don't know}
		  end
	    else
	       begin
		  if not know then {if knowing, that's what we should do}
		     begin
			print:= (c <> ' ') and (c <> #9); {exclude 'space' and 'tabulation'}
			know:= true {know we printing}
		     end;
		  if print then
		     write(c)
	       end
	 end
   end.
