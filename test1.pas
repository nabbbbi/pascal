program test;
type
   itemtr = ^item;
   item	  = record
	       data : integer;
	       next : itemtr;
	    end;
   var
      first,last,tmp,tmp1 : itemtr;
      n		 : integer;
      begin
	 first:=nil;
	 while not SeekEof do
	    begin
	       read(n);
	       if first = nil then
		  begin
		     new(first);
		     last:=first
		  end
	       else
		  begin
		     new(last^.next);
		     last:=last^.next
		  end;
	       last^.data:=n;
	       last^.next:=nil
	    end;
	 tmp:=first;
	 tmp1:=first;
	 while tmp <> nil do
	    begin
	       writeln(tmp^.data);
	       tmp:=tmp^.next
	    end;
	 while tmp1 <> nil do
	    begin
	       writeln(tmp1^.data);
	       tmp1:=tmp1^.next
	    end
      end.
