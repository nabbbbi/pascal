program queu;
type
   itemptr = ^item;
   item	   = record
		data : integer;
		next : itemptr;
	     end;
type
   QueueOfLongint = record
		       first,last : itemptr;
		    end;

procedure QOLinit (var queue :  QueueOfLongint);
begin
   queue.first:=nil;
   queue.last:=nil
end;

procedure QOLput(var queue : QueueOfLongint; n:longint );
begin
   if queue.first = nil then
      begin
	 new(queue.first);
	 queue.last:=queue.first
      end
	 else
	    begin
	       new(queue.last^.next);
	       queue.last:=queue.last^.next
	    end;
	 queue.last^.data:=n;
   queue.last^.next:=nil
end;

procedure QOLget (var queue : QueueOfLongint; var n:longint);
var
   tmp : itemptr;
begin
   n:=queue.first^.data;
   tmp:=queue.first;
   queue.first:=queue.first^.next;
   if queue.first = nil then
      queue.last:=nil;
   dispose(tmp)
end;	  

function QOLisempty(var queue : QueueOfLongint): boolean;
begin
   QOLisempty:=queue.first=nil
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
