program test3;
procedure ff;
var
   f : text;
   s : string;
   begin
      assign(f,'/home/pi/some.txt'); {assign var to file}
      reset(f); {open file in read mode}
      while not SeekEof(f) do
	 begin
      read(f,s);
      readln(f);
      writeln(s)
	 end;
      close(f)
   end;
begin
   ff
end.
