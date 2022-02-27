program sinzero;
type
   real100 = array [1..100] of real; {describe type of massive}
   var
      a,b : real100; {we always should initialize the massive describing type of massive}
      i	  : integer;
      begin
	 a[1]:=1;
	 for i:=2 to 100 do
	    a[i]:=a[i-1]/2; {in each index of massive we divide predecesor index of massive by 2. For example. a[3]= a[2]/2. where a[2] = 1/2} 
	 for i:=1 to 100 do
	    b[i]:=sin(a[i]); {put all results of a massive ot b massive}
	 for i:=1 to 100 do
	    writeln(a[i],#9,b[i])
      end.
