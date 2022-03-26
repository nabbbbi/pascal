program queue;
type
   itemptr = ^item;
   item	   = record
		data : integer;
		next : itemptr;
	     end;
   var
      last,first,tmp : itemptr;
      n		 : integer;
      begin
	 first:=nil;
	 while not SeekEof do
	    begin
	       if first = nil then
		  begin
		     new(first); {in first was nil, after new first take address of new memory} {create the first element}
		     last:=first {declare it the last}
		  end
	       else
		  begin
		     new(last^.next); 
		     last:=last^.next
		  end;
	       read(n);
	       last^.data:=n; {fill}
	       last^.next:=nil
	    end;
	 tmp:=first;
	 while first <> nil do
	    begin
	       writeln(first^.data);
	       first:=first^.next
	    end;
	 while tmp <> nil do
	    begin
	       first:=tmp;
	       tmp:=tmp^.next;
	       dispose(first)
	    end
      end.
