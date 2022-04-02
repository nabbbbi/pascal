program test;
const
   pathtofile	= '/home/pi/some.txt';
type
   itemptr = ^item;
   item	   = record
		data : string;
		next : itemptr;
	     end;

type
   queueofstrings =itemptr;

procedure QOSinit(var first,last : queueofstrings);
begin
   first:=nil;
   last:=nil
end;

procedure QOSput(var first,last	: queueofstrings; s : string);
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
   last^.data:=s;
   last^.next:=nil
end;

procedure QOSget(var first, last : queueofstrings; var s : string);
var
   tmp : itemptr;
begin
   s:=first^.data;
   new(tmp);
   tmp:=first;
   first:=first^.next;
   if first = nil then
      last:=nil;
   dispose(tmp)
end;

function QOSisempty(var first : queueofstrings):boolean;
begin
   QOSisempty:=first=nil
end;

procedure Addtofile (s : string);
var
   f : text;
begin
   assign(f,pathtofile);
   append(f);
   if IOResult <> 0 then
      begin
	 writeln('Error while trying open the file');
	 halt(1)
      end;
   writeln(f,s);
   close(f)
end;

procedure QOSdel(var first : queueofstrings; var s:string);
var
   tmp : itemptr;
   pp  : ^itemptr;
begin
   pp:=@first;
   if pp^^.data = ParamStr(1) then
      begin
	 tmp:=pp^;
	 pp^:=pp^^.next;
	 dispose(tmp)
      end
   else
      pp:=@(pp^^.next);
   s:=pp^^.data
end;

var
   first,last : queueofstrings;
   s	      : string;
   begin
      QOSinit(first,last);
      while not SeekEof do
	 begin
	    readln(s);
	    QOSput(first,last,s)
	 end;
      while not QOSisempty(first) do
	 if ParamCount > 0 then
	    begin
	    QOSdel(first,s);
	       writeln(s)
	    end
	    else
	 begin
	    QOSget(first,last,s);
	    Addtofile(s)
	 end
   end.
