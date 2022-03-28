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

procedure OneStringPush(var os : TestStrings; text:string);
var
   tmp : TestStrings;
begin
   new(tmp);
   tmp^.t:=text;
   tmp^.next:=os;
   os:=tmp
end;

procedure OneStringPop(var os : TestStrings; var text : string);
   begin
      text:=os^.t
   end;

{function OneStringisempty(var os :TestStrings): boolean;
begin
   OneStringisempty:=os=nil
end;}

var
   text	: string;
   os	: TestStrings;
   begin
      OneStringInit(os);
      while not SeekEof do
	 begin
      read(text);
      OneStringPush(os,text)
	 end;
      writeln(text)

   end.
