program Olympiads;
const
   MaxSchool = 67;
   type
      counters = array [1..Maxschool] of integer;
      var
	 i,c : integer;
	 a : counters;
	 begin
	    for i:=1 to MaxSchool do
	       a[i]:=0;
	    while not eof do
	       begin
		  readln(c);
		  a[c]:=a[c]+1
	       end;
	    for i:=1 to MaxSchool do
	       writeln(a[c]);
	 end.
