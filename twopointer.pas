program twop;
procedure two;
var
   p,q : ^string;
   begin
      new(p); 
      q:=p; {we can allocate address from p pointer to q pointer}
      dispose(q) {dynamic address wont change}
   end;
begin
   two
end.
