program odnosv;
type
   numbertr = ^number;
   number   = record
		 data  : integer;
		 next : numbertr;
	      end;
var
   c	 : integer;
   first : numbertr;
   begin
      {$I-}
       new(first);
      while not eof do
	 begin
	    readln(c);
	    if IOResult <> 0 then
	       begin
		  writeln('Couldn''t read');
		  halt(1)
	       end;
	    first^.data:=c;
	    new(first^.next)
	 end
   end.
