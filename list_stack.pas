program liststack;
type
   itemptr = ^item;
   item	   = record
		data : integer;
		next : itemptr;
	     end;
   var
      first, tmp : itemptr;
      n		 : integer;
      begin
	 first:=nil;  {this makes list empty}
	 while not SeekEof do {numbers reading cyrcle}
	    begin
	       read(n);
	       new(tmp); {create the element}
	       tmp^.data:=n; {filling the element}
	       tmp^.next:=first; 
	       first:=tmp {enlist the element to the list}
	    end;
	tmp:=first; {go through the list from beginning}{it is possible becausetmp/first element store field with address of next element. With this field we can go through the whole list } {whole meaning of stack}
	 while tmp <> nil do {to the end of list}
	    begin
	       writeln(tmp^.data);
	       tmp:=tmp^.next {segue to the next element}
	    end;
	 while first <> nil do
	    begin
	       tmp:=first; {remember first address}
	       first:=first^.next; {exclude it}
	       dispose(tmp) {drop from memory}
	    end
      end.
