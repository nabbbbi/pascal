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
      QueueOfString = itemptr;
      
      

procedure QOSinit(var first,last : QueueOfString);
begin
   first:=nil;
   last:=nil
end;

procedure QOSput(var first,last : QueueOfString; s : string);
begin
   if first = nil then
      begin
	 new(first);
	 last:=first
      end
   else
      begin
	 new(last^.next);
	 last:=last^.next
      end;
   last^.info:=s;
   last^.next:=nil
end;

procedure QOSdel(var first : QueueOfString);
var
   tmp :  QueueOfString ;
   pp  : ^QueueOfString;
begin
   pp:=@first;
   if pp^^.data = ParamStr(1) then
      begin
	 tmp:=pp^;
	 pp^:=pp^^.next;
	 dispose(tmp)
      end
   else
      pp:=@(pp^^.next)
end;

procedure QOSget(var first,last : QueueOfString; var s : string);
var
   tmp : itemptr;
begin
   s:=first^.info;
   new(tmp);
   tmp:=first;
   first:=first^.next;
   if first = nil then
      last := nil;
   dispose(tmp)
end;

function QOSisempty(var first : QueueOfString):boolean;
begin
   QOSisempty:=first=nil
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
   first,last : QueueOfString;
   info	 : string;
   f	 : text;
   begin
      {$I-}
     { if ParamCount < 1 then
	 begin
	    writeln('Couldn''t specifize info for delete');
	    halt(1)
	 end;}
      write('Type info for queue: ');
      QOSinit(first,last);
      while not SeekEof do
	 begin
	    read(info);
	    QOSput(first,last,info)
	 end;
      while not QOSisempty(first,last) do
	 begin
	    QOSget(first,last,info);
	    Addtofile(f,info)
	 end
   end.
