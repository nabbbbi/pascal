program qol;
type
   LongItemPtr	   = ^LongItem;
   LongItem	   = record
			data : integer;
			next : LongItemPtr;
		     end;    
   QueueOfLongints = record
			first,last : LongItemPtr;
		     end;
procedure QOLInit (var queue: QueueOfLongints);
begin
   queue.first:=nil;
   queue.last:=nil
end;
procedure QOLPut (var queue : QueueOfLongints; n:integer);
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
procedure QOLGet (var queue : QueueOfLongints; var n:integer);
var
   tmp : LongItemPtr;
begin
   n:=queue.first^.data;
   tmp:=queue.first;
   queue.first:=queue.first^.next;
   if queue.first = nil then
      queue.last:=nil;
   dispose(tmp)
end;
function QOLIsEmpty (queue: QueueOfLongints):boolean;
begin
   QOLIsEmpty:=queue.first=nil
end;
var
   q : QueueOfLongints;
   n : integer;
   begin
      QOLInit(q);
      while not SeekEof do
	 begin
	    read(n);
	    QOLPut(q,n)
	 end;
      while QOLIsEmpty(q) do
	 QOLGet(q,n);
   end.
