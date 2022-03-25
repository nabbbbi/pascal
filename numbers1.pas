program Numbers1;
const
   n = 6;
type	   
   itemptr = ^item;
   item	   = record
		data : integer;
		next : itemptr;
	     end;    
var
   first,tmp : itemptr;
   begin
      first:=nil;
	    new(tmp); {create element}
	    tmp^.data:=n; {fill the element}
	    tmp^.next:=first;
      first:=tmp; {list element in the lis}
      writeln(first^.data)
   end.
