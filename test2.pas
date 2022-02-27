program plain_numbers2;
const
   numbers = 8;
type
   arr = array [1..numbers] of integer;
   var
      a,b : arr;
procedure create_arra(var a,b: arr; n: integer) arr;
var
   i,j,k : integer;
   begin
      for i:=2 to n do
	 for j:=1 to i do
	    begin
	       k:=1;
	       a[k]:= i mod j;
	       b[k]:=i;
	       {writeln(b[k],' ',a[k])}
	    end
   end;
begin
   create_arra(a,b,numbers); a
   writeln(a[numbers],#32,b[numbers])
end.
