program interf;
type
   itemptr = ^item;
   item	   = record
		data : integer;
		next : itemptr;
	     end;
   type
      StackOfLongint = itemptr;

procedure SOLinit (var stack : StackOfLongint);
begin
   stack:=nil
end;
   
procedure SOLpush (var stack : StackOfLongint; n:longint );
var
   tmp : StackOfLongint;
begin
   new(tmp);
   tmp^.data:=n;
   tmp^.next:=stack;
   stack:=tmp
end;

procedure SOLpop (var stack : StackOfLongint; var n: longint );
var
   tmp : StackOfLongint;
begin
   n:=stack^.data;
   tmp:=stack;
   stack:=stack^.next;
   dispose(tmp)
end;

function SOLisempty(var stack : StackOfLongint ): boolean;
begin
   SOLisempty:=stack=nil
end;   
var
   n : longint;
   s : StackOfLongint;
   begin
      SOLinit(s);
      while not SeekEof do
	 begin
	    read(n);
	    SOLpush(s,n)
	 end;
      while not SOLisempty(s) do
	 begin
	    SOLpop(s,n);
	    writeln(n)
	 end
   end.
