program fil;
const
   filename = '~/git/pascal/some.txt';
   message	    = 'Hello, World!';
      var
	 f : text;
	 begin
	    {$I-}
	    if IOResult = 0 then
	       writeln()
	    assign(f,filename);
	    rewrite(f);
	    writeln(f,message);
	    close(f)
	 end.
