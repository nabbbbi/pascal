program powerproc;
procedure Power(    x : real; var quad, cube, fourth, fifth:real);
begin
   quad:=x*x;
   cube:=quad*x;
   fourth:=cube*x;
   fifth:=fourth*x
end;
var
   p,q,r,n,x : real;
   begin
      read(x);
      Power(x,p,q,r,n);
      writeln(p,q,r,n)
   end.
   
