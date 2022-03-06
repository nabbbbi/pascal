program plain_numbers;
const
   numbers = 22;
var
   i,j : integer;
   pl  : boolean; 
   begin
      for i:=2 to numbers do
	 begin
	    pl:=true;
	    for j:=2 to i-1 do
		  if (i mod j = 0) then
			pl:=false;
		  if pl = true then
		     write(i,#32)
	 end;
      writeln
end.
