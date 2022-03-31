program testbool;

var
   n,m	: integer;
   flag	: boolean;
   begin
      n:=5;
      m:=9;
      flag:= n < m;
      if flag then
	 writeln('yes')
   end.
