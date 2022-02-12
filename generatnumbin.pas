program GenerateNumberBin;
const
   name	 = 'numbers.bin';
   step	 = 1001;
   start = 1000;
   count = 100;
      var
	 f : file of integer;
	 i,n : integer;
	 begin
	    assign(f,name);
	    rewrite(f);
	    n:=start;
	    for i:=1 to count do
	       begin
		  write(f,n);
		  n:=n+step
	       end;
	    close(f)
	 end.
