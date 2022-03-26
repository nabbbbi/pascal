program Numbers1;
type	   
   itemptr = ^item;
   item	   = record
		data : integer;
		next : itemptr;
	     end;    
var
   first,tmp : itemptr;
   n	     : integer;
   begin
      first:=nil;
      while not SeekEof do
	 begin
	 read(n);
	    new(tmp); {create element}
	    tmp^.data:=n; {fill the element}
	    tmp^.next:=first;
      first:=tmp {list element in the lis}
	 end;
      writeln(tmp^.data)
   end.
