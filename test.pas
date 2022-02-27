program plain_numbers;
type
   arr	= record
	     ii	: integer;
	     r	: integer;
	  end;	
   arr1	= array [1..10] of arr;
var
   t : arr1;
procedure plain (n : integer);
var
   i,j : integer;
   begin
      for i:=2 to n do
	 begin
	    for j:=1 to i do
	       begin
		  t[j].r:= i mod j; 
		  t[j].ii:=i;
		  writeln(t[j].ii,' ',t[j].r) {shows all divider}
	       end;
	 end;
      { for j:=1 to n do
	 writeln(t[j].ii,' ', t[j].r)} {shows 1 dividers = n}
   end;
begin
  plain(9) 
end.
