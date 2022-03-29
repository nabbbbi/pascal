program skip_indent;
var
   c	       : char;
   know, print : boolean;
   begin
      know:=false; {don't know whether printing or not}
      print:=false; {don't matter. just for compiler issue}
      while not SeekEof do
	 begin
	    read(c);
	    if c = #10 then 
	       begin
		  {At the beginnig know and print false and because of that we do anything.just
		  skip it. After line writng is done know and print will be absolutly true}
		  if know and print then {means the line writing is done}
		     {if bouth true >> writeln}
		     writeln; 
		  know:=false {for new line. Because we don't know expect from new line}
	       end
	    else
	       begin
		  {'not know' will be in two occasions:
		  1) 'Enter' is done and we do  know:=false in preced actions
		  2) At the beginning. where know is false
		  Other wise this part will be skipped to 'if print..'}
	       if not know then 
		  begin
		  print:= (c <> ' ') and (c <> #9);
		     {know is true and in the  next iteration this cyrcle will be skipped because  
if know is false (not know)}
		  know:=true
		     {Now, know will be true until program meet c=#10.}
		  end;
		  {because print is true cyrcle will just type c}
		  if print then 
		     write(c) {type until we met c = #10}
	       end
	 end;
      writeln
   end.
