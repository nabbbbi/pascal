program test;
type
   itemptr = ^item;
   item	   = record
		t    : string;
		next : itemptr;
	     end;
type
   TestStrings = itemptr;

procedure OneStringInit(var os : TestStrings);
begin
   os:=nil;
end;

procedure OneString(var os : TestStrings; text:string);
var
   tmp : itemptr;
begin
   new(tmp);
   tmp^.t:=text;
   tmp^.next:=os;
   os:=tmp
end;

var
   text	: string;
   os	: TestStrings;
   begin
      OneStringInit(os);
      read(text);
      OneString(os,text);
      writeln(text)
   end.
