program plain_numbers;
procedure plain (n : integer);
type
   arr	= record
	     ii	: integer;
	     rr	: integer;
	  end;	
   arr1	= array [1..10] of arr;
var
   {r,}i,j : integer;
   t	 : arr1;
   begin
      for i:=2 to n do
	 begin
	    for j:=1 to i do
	       begin
		  t[j].rr:= i mod j;
		  t[j].ii:=i;
		  writeln(t[j].ii,' ',t[j].rr)
	       end;
	 end
   end;
begin
   plain(5)
end.
