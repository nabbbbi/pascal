program skip_indent;
var
   c	       : char;
   know, print : boolean;
   begin
      {we don't know whether write line or not}
      know:=false;
      {don't matter. just to resolve compliler issue}
      print:=false;
      while not SeekEof do
	 begin
	    read(c);
	    if c = #10 then 
	       begin
		  {will write writeln only if print or know is true else do
		  nothing. print wil be true if line was writing. if not print
		  will be false and writeln not be set. Just nothing would
happen}
		  if know and print then 
		     writeln;
		  {know is true if we know type or not the line. We now it 
only after set logical variable print}
		  know:=false
	       end
	    else
	       begin
		  {we don't know yet but it is time to know it}
	       if not know then 
		  begin
		  print:= (c <> ' ') and (c <> #9);
		     {at this we know: type line or not; if print is true
		     line will be typed, if print line wont be typed. We
know all of this, right? Because of that know is true}
		     know:=true;
		     {print is get his value. and it wont change until
		     we met c = #10. Print is true or false depents by
		     condition. Print wont change his value since it 
		     was assigned once until we met c = #10. if we met c = #10
print will assing values again}
		  if print then 
		     write(c)
		  end
	       end
	 end;
      writeln
   end.
