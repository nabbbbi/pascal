program myqueue;
const
   path	= '/home/pi/some.txt';
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

procedure QOSdel (var queue : QueueOfString);
var
   tmp : itemptr;
   pp  : ^itemptr ;
begin
   pp:=@queue.first;
   if pp^^.data = ParamStr(1) then
      begin
	 new(tmp);
	 tmp:=pp^;
	 pp^:=pp^.next;
	 dispose(tmp)
      end;
   else
      pp:=@(pp^^.next)
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

procedure addtofile (var f : text; n : string);
begin
   assign(f,path); {assign f variable with file}
   append(f);
   if IOResult <> 0 then
     begin
	writeln('Couldn''t append text to the file')
     end;
   writeln(f,n);
   close(f)
end;

var
   queue : QueueOfString;
   info	 : string;
   f	 : text;
   begin
      {$I-}
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
	    Addtofile(f,info)
	 end
   end.
