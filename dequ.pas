program Deq;
type
   LongItem2Ptr	= ^LongItem2;
   LongItem2	= record
		     data      : longint;
		     prev,next : LongItem2Ptr;
		  end;	       
   LongDeque	= record
		     first,last	: LongItem2Ptr;
		  end;
procedure LongDequeInit (var deque : LongDeque);
begin
   deque.first:=nil;
   deque.last:=nil
end;
procedure LongDequePushFront (var deque	: LongDeque; n: longint);
   var
      tmp :  LongItem2Ptr;
      begin
	 read(n);
	 new(tmp);
	 tmp^.data:=n;
	 tmp^.prev:=nil;	 tmp^.next:=deque.first;
	 if deque.first = nil then
	    deque.last:=tmp
	    else
	       deque.first^.prev:=tmp;
	 deque.first:=tmp
end;	  
procedure LongDequePushBack (var deque : LongDeque; n : longint);
var
   tmp :  LongItem2Ptr;
begin
   read(n);
   new(tmp);
   tmp^.data:=n;
   tmp^.next:=nil;
   tmp^.prev:=deque.last;
   if deque.last = nil then
      deque.first:=tmp
      else
	 deque.last^.next:=tmp;
   deque.last:=tmp
end;	  
procedure LongDequePopFront (var deque : LongDeque; var n: longint);
var
   tmp :  LongItem2Ptr;
begin
   n:=deque.first^.data;
   new(tmp);
   tmp:=deque.first;
   deque.first:=deque.first^.next;
   dispose(tmp)
end;
procedure LongDequePopBack (var deque : LongDeque; var n: longint);
var
   tmp :  LongItem2Ptr;
begin
    n:=deque.last^.data;
   new(tmp);
   tmp:=deque.last;
   deque.last:=deque.last^.prev;
   dispose(tmp)
end;
Function LongDequeIsEmpty (var deque : LongDeque): boolean;
begin
   LongDequeIsEmpty:= (deque.first=nil) and (deque.last = nil)
end;
var
   d : LongDeque;
   n : longint;
   begin
      LongDequeInit(d);
      while not SeeKEof do
	 begin
	    read(n);
	    LongDequePushFront(d,n);
	    LongDequePushBack(d,n)
	 end;
      while LongDequeIsEmpty(d) do
	 begin
	    LongDequePopFront(d,n);
	    LongDequePopBack(d,n)
	 end
   end.
