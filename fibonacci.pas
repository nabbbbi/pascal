program fibonfunct;
function Fibonacci(n : integer):longint;
var
   i	 : integer;
   p,q,r : longint;
   begin
   if n<=0 then
      Fibonacci:=0
   else
      begin
	 q:=0;
	 r:=1;
	 for i:=2 to n do
	    begin
	       p:=q;
	       q:=r;
	       r:=p+q
	    end;
	 Fibonacci:=r
      end;
   end;
var
   x : integer;
begin
   x:=Fibonacci(20);
   writeln(x)
end.
