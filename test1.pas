program plain_numbers2;
const
   numbers = 4;
type
   arr = array [1..numbers] of integer;
   var
      a,b : arr;
procedure create_arra(var a,b: arr; n: integer);
var
   j,k,i : integer;
   begin
      for i:=2 to n do
	 for j:=1 to i do
	    begin
	       k:=1;
	       a[k]:= i mod j;
	       b[k]:=j;
	       writeln(b[k],#32,a[k])
	    end
   end;
begin
   create_arra(a,b,numbers);
   writeln(a[4])
end.
