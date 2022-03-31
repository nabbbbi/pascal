program queu;
type
   itemptr = ^item; 
   item	   = record {create type for each element as record}
		data : integer;
		next : itemptr;
	     end;
type
   QueueOfLongint = record
		       first,last : itemptr; {2 because we need two pointers}
		    end;

procedure QOLinit (var queue :  QueueOfLongint);
begin
   queue.first:=nil; {initialising}
   queue.last:=nil
end;

procedure QOLput(var queue : QueueOfLongint; n:longint );
begin
   if queue.first = nil then 
      begin
	 new(queue.first); {we don't have any elements to use last^.next pointer. because of that we make one}
	 queue.last:=queue.first
      end
	 else
	    begin
	       new(queue.last^.next); {we already have one and we continue create queue list}
	       queue.last:=queue.last^.next
	    end;
	 queue.last^.data:=n; {fill queue}
   queue.last^.next:=nil
end;

procedure QOLget (var queue : QueueOfLongint; var n:longint);
var
   tmp : itemptr;
begin
   n:=queue.first^.data;
   tmp:=queue.first; {bount address with two pointer in order to delete one}
   queue.first:=queue.first^.next;
   if queue.first = nil then {end of list like in QOLinit}
      queue.last:=nil;
   dispose(tmp)
end;	  

function QOLisempty(var queue : QueueOfLongint): boolean;
begin
   QOLisempty:=queue.first=nil {first or last nil, it doesn't matter}
end;

var
   q : QueueOfLongint;
   n : longint;
   begin
      QOLinit(q);
      while not eof do
	 begin
	    read(n);
	    QOLput(q,n)
	 end;
      while not QOLisempty(q) do
	 begin
	    QOLget(q,n);
	    writeln(n)
	 end
   end.
