program tes;
const
   filename = 'testing.txt';
var
   f : text;
   begin
      {$I-}
      assign(f,filename);
      rewrite(f);
       if IOResult <> 0 then
	 begin
	    writeln('Couldn''t assign');
	    halt(1)
	 end;
      writeln(f,'2.0',#9,'3.0',#9,'5.0',#10,'0.5',#9,'12.0');
       if IOResult <> 0 then
	 begin
	    writeln('Couldn''t assign');
	    halt(1)
	 end;
      close(f)
   end.
