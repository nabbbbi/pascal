Program my_dequ;

type
   itemptr = ^item;
   item	   = record
		data : longint;
		next,prev : itemptr;
	     end;
type
   dequeoflongints = record
			first,last : itemptr;
		     end;

procedure DOLinit (var deque: dequeoflongints);
begin
   deque.first:=nil;
   deque.last:=nil
end;

procedure DOLpushfront(var deque : dequeoflongints; n : longint);
var
   tmp : itemptr;
begin
   new(tmp);
   tmp^.data:=n;
   tmp^.prev:=nil;
   tmp^.next:=deque.first;
   if deque.first = nil then
      deque.last:=tmp
      else
   deque.first^.prev:=tmp;
   deque.first:=tmp
end;

procedure DOLpushback(var deque	: dequeoflongints; n : longint);
var
   tmp : itemptr;
begin
   new(tmp);
   tmp^.data:=n;
   tmp^.prev:=deque.last;
   tmp^.next:=nil;
   if deque.last = nil then
      deque.first:=tmp
      else
   deque.last^.next:=tmp;
   deque.last:=tmp
end;

procedure DOLpopfront(var deque	: dequeoflongints; var n : longint);
begin
   n:=deque.first^.data;
   deque.first:=deque.first^.next
end;

procedure DOLpopback(var deque : dequeoflongints; var n : longint);
begin
   n:=deque.last^.data;
   deque.last:=deque.last^.prev
end;

function DOLisempty(var deque : dequeoflongints):boolean;
begin
   DOLisempty:=(deque.first=nil) and (deque.last=nil)
end;

var
   d : dequeoflongints;
   n : longint;
   begin
      DOLinit(d);
      while not SeekEof do
	 begin
	    read(n);
	    DOLpushfront(d,n);
	    DOLpushback(d,n)
	 end;
      while not DOLisempty(d) do
	 begin
	    DOLpopfront(d,n);
	    DOLpopback(d,n);
	    writeln(n)
	 end
   end.
