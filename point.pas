program point;
procedure poin(               n : real);
var
   q : ^real; {address type}
   begin
      q:=@n;
      writeln(q^)
   end;
begin
   poin(  2.8)
end.
