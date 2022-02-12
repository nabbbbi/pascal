program HelloFile;
const
   message = 'Hello World!';
   filename = 'hello.txt';
   var
      f	: text;
      begin
	 {$I-}
	 assign(f,filename);
	 rewrite(f);
	 if IOResult <> 0 then
	    begin
	       writeln('Could not open text file!');
	       halt(1)
	    end;
	 writeln(f,message);
	 if IOResult <> 0 then
	    begin
	       writeln('Could not write message!');
	       halt(1)
	    end;
	 close(f)
      end.
