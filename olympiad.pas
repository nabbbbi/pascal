program OlympiadCounter;
const
   MaxSchool = 67;
   MaxGroup  = 100;
type
   CountersArray = array [1..MaxSchool] of integer;
   var
      counters : CountersArray;
      i,c,n    : integer;
      begin
	 for i:=1 to MaxSchool do
	    counters[i]:=0;
	 {$I-}
	 while not eof do
	    begin
	       readln(c);
	       if IOResult <> 0 then
		  begin
		     writeln('Incorrect Data');
		     halt(1)
		  end;
	       n:= c div MaxGroup;
	       if (n < 1) or (n > MaxGroup) then
		  begin
		     writeln('Incorrect Data');
		     halt(1)
		  end;
	       counters[n]:=counters[n]+1;
	    end;
	{ for n:=1 to MaxSchool do
	    writeln(counters[n])
      end.}
	 n:=1;                                          
	 for i:=2 to MaxSchool do                        
	    if counters[i] > counters[n] then           
	       n:=i;                                    
	 for i:=1 to MaxSchool do
	    if counters[i] = counters[n] then
	       writeln(i)
      end.
