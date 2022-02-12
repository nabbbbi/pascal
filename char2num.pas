program char2num;
procedure ReadLongint (var success : boolean; var result : integer);
var
   res : integer;
   pos : integer;
   c   : char;
   begin
      pos:=0;
      res:=0;
      repeat
	 read(c);
	 pos:= pos + 1
	 until
      (c <> ' ') and (c <> #10);
      while  (c <> ' ') and (c <> #10) do
	 begin
	    if (c < '0') or (c > '9') then
	       begin
		  writeln('Unexpected character''',c,''''' in pos: ',pos);
	    readln;
	    success:= false;
	    exit;
	 end;
	    res:= res*10 + ord(c) - ord('0');
      read(c);
	    pos:= pos + 1
	 end;
      result:=res;
      success:=true
   end;
   var
      ok  : boolean;
      x,y : integer;
      begin
	 repeat
	    writeln('Type the first factor');
	    ReadLongint(ok,x)
	    until
	 ok;
	 repeat
	    writeln('Type the first factor');
	    ReadLongint(ok,y)
	    until
	 ok;
	 writeln(x,' times ',y,' is',' ',x*y)
      end.
	 
