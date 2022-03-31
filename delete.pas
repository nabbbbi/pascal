program deletqueue;
type
   itemptr = ^item;
   item	   = record
		data : longint;
		next : itemptr;
	     end;
type
   queueoflongint = record
		       first, last : itemptr;
		    end;

procedure QOLinit(var queue : queueoflongint);
   begin
      queue.first:=nil;
      queue.last:=nil
   end;

procedure QOLput(var queue : queueoflongint; n : longint);
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

procedure QOLget(var queue : queueoflongint; var n : longint);
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

function QOLisempty(var queue : queueoflongint): boolean;
begin
   QOLisempty:=queue.first=nil
end;

var
   q : queueoflongint;
   n : longint;
   begin
      QOLinit(q);
      while not SeekEof do
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
