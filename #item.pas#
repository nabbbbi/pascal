program itemlist;
type
   itemtr = ^item; {we can create type address before creating type inself}
   item	  = record
	       data : integer;
	       next : itemtr; {point to the next item in list}
	    end;
procedure iteml;
var
   first : itemtr;
   begin
      new(first); {first will point to the first element of the list}
      first^.data:=25; {first^ is whole first element with 2 fields}
      new(first^.next); {because element is record access to the to fields}
      first^.next^.data:=36;{possible with element's name and dot and fiels's naem}
      new(first^.next^.next);{new will create dynamic variable and address of that variable put in 'first' pointer}
      first^.next^.next^.data:=49;
      first^.next^.next^.next:=nil;
      dispose(first)
   end;
begin
   iteml
end.
