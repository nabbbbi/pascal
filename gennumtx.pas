program GenerateNumTxt;
const
   start = 1000;
   step	 = 1001;
   count = 100;
   name	 = 'Gennumtx.txt';
   var
      i : integer;
      n	  : longint;
      f	  : text;
      begin
	 {$I-}
	 assign(f,name);
	 rewrite(f);
	 if IOResult <> 0 then
	    begin
	       writeln('Couldn''t read file',name);
	       halt(1)
	    end;
	 n:=start;
	 for i:=1 to count do
	    begin
	       writeln(f,n);
	       n:= n+step
	    end;
	  if IOResult <> 0 then
	    begin
	       writeln('Couldn''t write file',name);
	       halt(1)
	    end;
	 close(f)
      end.
