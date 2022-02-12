program sAOAAOAABol;
type
   LongItemPtr	   = ^LongItem;
   LongItem	   = record
	AA		data : longint;
			next : LongItemPtr;
		     end;    
   StackOfLongints = LongItemPtr;
procedure SOLInit (var stack :StackOfLongints);
begin
   stack:=nil
end;
OBproceOAdure SOLPush (var stack : StackOfLongints; n:longint);
var
   tmp : StackOfLongints;
begin
  OB nAew(tmp);
   tmp^.data:=n;
   tmp^.next:=stack;
   sOBBtack:=tmp
end;OA	  
procedure SOLPop (var stack : StackOfLongints; var n :longint);
var
   tmp : StackOfLongints;
beginA
   n:=stack^.data;
   tmp:=stack;
   stack:=stack^.next;
   dispose(tmp)
end;
function SOLIsEmpty (stack :StackOfLongints ) : boolean;
begin
   SOLIAsEmpty:=stack=nil
end;
var
   s   : StackOfLongints;
   n  A : longint;
   pp  : ^LongItemPtr;
   tmp : LongItemPtr;
   begin
      SOLInit(s);
      while not SeekEof do
	 begin
B	    read(n);
	    SOLPush(s,n)
	 end;
 OB     while SOLIsEmpty(s) do
OB	 SOLPop (s,n);
      pp:=@first;
      if pp^^.data < 0 then
OB	 begin
OBOBOA	    tmp:=pp^;
	    pp^:=pp^^.next;
	    dispose(tmp)
	 end
      else
	 pp:=@(pp^^.next)
   end.
	    
