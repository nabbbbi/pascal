program dynamic;
procedure dyn;
var
   p : ^string;
   q : string;
   begin
      write('type text, beach: 6');
      readln(q);
      new(p); {create dynamic variable from the heap}
      p:=@q; {put address of p variable to p pointer}
      writeln(p^);
      dispose(p) {absolve dynamic variable}
   end;
begin
   dyn
   
end.
