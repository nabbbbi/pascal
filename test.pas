program fil;
const
   filename = '/home/pi/some.txt';
   message  = 'Hello, world';
   var
      f	: text;
      begin
	 {$I-}
	 assign(f,filename); {concatenate file variable and name of file in directory}
	 append(f); {open file and we can write from then beginning}
	 if IOResult <> 0 then
	    begin
	       writeln('Could''t open file');
	       halt(1)
	    end;
	 writeln(f,message); {just ckeck what we writing}
	 if IOResult <> 0 then
	    begin
	       writeln('Could''t analys input');
	       halt(1)
	    end;
	 close(f)
      end.
