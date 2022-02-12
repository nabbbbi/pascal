program starslash2; {Diamonds}
var
   m,k,n,h : integer;
   begin
       {ввод числа пока оно не будет нечет}
	    repeat
	       readln(n)
	       until
	    (n>1) and (n mod 2 = 1);
       h:=n div 2;
      for k:=1 to h+1 do
	 begin
	    for m:= 1 to h+1-k do
	       write(' ');
	    write('*');
	    if k > 1 then
	       begin
	    for m:=1 to 2*k-3 do
	       write(' ');
	    write('*')
	       end;
	    writeln
	 end;
   end.
