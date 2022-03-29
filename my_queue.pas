program myqueue;
type
   itemptr = ^item;
   item	   = record
		info : string;
		next : itemptr;
	     end;

type
   QueueOfString = record
		      first,last : itemptr;
		   end;

procedure QOSinit(var queue : QueueOfString);
begin
   queue.first:=nil;
   queue.last:=nil
end;

procedure QOSput(var queue : QueueOfString; s : string);
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
   queue.last^.info:=s;
   queue.last^.next:=nil
end;

procedure QOSget(var queue : QueueOfString; var s : string);
var
   tmp : itemptr;
begin
   s:=queue.first^.info;
   new(tmp);
   tmp:=queue.first;
   queue.first:=queue.first^.next;
   if queue.first = nil then
      queue.last := nil;
   dispose(tmp)
end;

function QOSisempty(var queue : QueueOfString):boolean;
begin
   QOSisempty:=queue.first=nil
end;

var
   queue : QueueOfString;
   info	 : string;
   begin
      write('Type info for queue: ');
      QOSinit(queue);
      while not SeekEof do
	 begin
	    read(info);
	    QOSput(queue,info)
	 end;
      while not QOSisempty(queue) do
	 begin
	    QOSget(queue,info);
	    writeln(info)
	 end
   end.
