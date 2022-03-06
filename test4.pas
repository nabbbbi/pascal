program subarra;
type
   sub = array [0..20] of integer;
var
   n,k,i,rem,m,code : integer;
   res	       : sub;
   begin
      {$I-}
      if ParamCount < 2 then
	 begin
	 writeln(ErrOutput,'Need two parameters');
	    halt(1)
	 end;
      val(ParamStr(1),n,code);
      val(ParamStr(2),k,code); // just checking presence of parameters 
      if code <> 0 then
	 begin
	    writeln(ErrOutput,'Invalid token count');
	    halt(1)
	 end;
      rem:= n mod k; // reminder of dividing}
      m:= n div k;
      writeln('rem:= ',rem,' ', 'm:= ',m);
      for i:=1 to rem do
	 res[i]:= m+1;
      for i:=rem + 1 to k do // we should write end of latitude
	 res[i]:=m;
      for i:=1 to k do
	 writeln(res[i])
   end.
