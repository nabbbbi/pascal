program test2;
const
   pathtofile = '/home/pi/some.txt';
type
   itemptr = ^item;
   item	   = record
		txt  : string;
		next : itemptr;
	     end;
type
   stringsfromfile = itemptr;

procedure QOSinit(var first, last :  stringsfromfile);
   begin
      first:=nil; {make list empty}
      last:=nil;
   end;

procedure readfromfile(var first,last : stringsfromfile);
var
   f : text;
   s : string;
begin
   assign(f,pathtofile);
   reset(f);
   while not SeekEof(f) do
      begin
	 if first=nil then
	 begin
	    new(first);
            last:=first
	 end
      else
      begin
	 new(last^.next);
	 last:=last^.next
      end;
	 read(f,s);
	 readln(f);
	 last^.txt:=s;
	 last^.next:=nil
      end;
   close(f)
end;

procedure QOSput(var first,last	: stringsfromfile; s:string);
begin
   if first=nil then
      begin
	 new(first);
	 last:=first
      end
   else
      begin
	 new(last^.next);
	 last:=last^.next
      end;
   last^.txt:=s;
   last^.next:=nil
end;

procedure QOSget(var first,last	: stringsfromfile; var s : string);
var
   tmp : stringsfromfile;
begin
   s:=first^.txt;
   tmp:=first;
   first:=first^.next;
   if first=nil then {because last address is always nil}
      last:=nil;
   dispose(tmp)
end;

procedure QOSdel(first : stringsfromfile);
var
   tmp : itemptr;
   pp  : ^itemptr;
begin
   pp:=@first;
   while pp^ <> nil do
      begin
   if pp^^.txt = ParamStr(1) then
      begin
	 tmp:=pp^;
	 pp^:=pp^^.next;
	 dispose(tmp)
      end
   else
      pp:=@(pp^^.next)
      end
end;

procedure QOSrewrite(var first : stringsfromfile; var s : string);
var
   tmp : itemptr;
   f   : text;
begin
   assign(f,pathtofile);
   rewrite(f);
   while first <> nil do
      begin
	 s:=first^.txt;
	 tmp:=first;
	 writeln(f,s);
	 first:=first^.next;
	 dispose(tmp)
      end;
   close(f)
end;

function QOSisempty(var first : stringsfromfile): boolean;
begin
   QOSisempty:=first=nil
end;

var
   s	      : string;
   first,last : stringsfromfile;
   begin
      QOSinit(first,last);
      readfromfile(first,last);{list is ready}
      if ParamCount > 0 then
	 begin
	    QOSdel(first); {delete usury item}
	    QOSrewrite(first,s)
	 end;
      while not QOSisempty(first) do {begin reading}
	 begin
	    QOSget(first,last,s);
	    writeln(s)
	 end
   end.
	    
	    
