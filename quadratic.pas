program quad;
procedure quadratic(	a,b,c : real;
		    var ok    : boolean; var x1, x2: real);
var
   d : real;
   begin
      if a = 0 then
	 ok:=false
	 else
	    begin
	       d:=b*b-4*a*c;
	       if d < 0 then
		  ok:=false
		  else
		     begin
			d:=sqrt(d);
			x1:= (-b - d)/(2*a);
			x2:= (-b + d)/(2*a);
			ok:=true
		     end;
	    end;
   end;
var
   z,x,c : real;
   v	 : boolean;
   b,n : real;
   begin
      readln(z,x,c);
      quadratic(z,x,c,v,b,n);
      writeln(b,n)
   end.
