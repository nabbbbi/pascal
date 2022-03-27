program mystack;
type
   itemptr = ^item; {point to item. Pointer can contain only variable item type}
   item	   = record
		text : char;
		next : itemptr;
	     end;
type
   StackOfString = itemptr;

{empty list. Program will stop,call to procedure, procedure do process 
with var parameter and return result to the program. Programm will
continue his work with that var parameter as the variables}
procedure SOSinit(var stack : StackOfString);                   
begin
   stack:=nil {it will be unofficialy the first element of list}
end;

{this procedure will add new element to my list. 'n:char' will be 
read from the input. Processes with tmp will be processing only 
within procedure}
procedure SOSpush(var stack : StackOfString; n:char);
var
   tmp : StackOfString;
begin
   new(tmp);
   tmp^.text:=n;
   tmp^.next:=stack;
   stack:=tmp
end;

{this procedure will draws element to my list}
procedure SOSpop(var stack : StackOfString; var n : char);
var
   tmp : StackOfString;
begin
   n:=stack^.text;
   tmp:=stack;
   stack:=stack^.next;
   dispose(tmp)
end;

{check empty list or not before drawing. Because we can't draw 
element if it is not present in list.}
function SOSisempty(stack : StackOfString): boolean;
begin
   SOSisempty:=stack=nil
end;

var
   s   : StackOfString;
   str : char;
   begin
      SOSinit(s);
      while not eof do
	 begin
	    read(str);
	    SOSpush(s,str)
	 end;
      while not SOSisempty(s) do
	 begin
	    SOSpop(s,str);
	    writeln(str)
	 end
   end.
	    
