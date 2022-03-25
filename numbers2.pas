program numbers2;
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
	 first:=nil; {this makes list empty}
	 n:=0;
	 while not SeekEof do {numbers reading cyrcle}
	    begin
	       read(n);
	       new(tmp); {create the element}
	       tmp^.data:=n; {filling the element}
	       tmp^.next:=first; 
	       first:=tmp; {enlist the element to the list}
	    end;
	 tmp:=first; {go through the list from beginning}{it is possible becausetmp/first element store field with address of next element. With this field we can through the whole list}
	 while tmp <> nil do {to the end of list} 
	    begin
	       writeln(tmp^.data);
	       tmp:=tmp^.next {segue to then next element}
	    end
      end.
