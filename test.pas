program plain_numbers;
procedure plain (n : integer);
var
   r,i,j : integer;
   begin
      for i:=2 to n do
	 begin
	    for j:=1 to i do
	       begin
		  r:=i mod j;
		  writeln(i,' ',r)
	       end;
	 end
   end;
begin
   plain(5)
end.
