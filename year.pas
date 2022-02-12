program years;
var
   year	: integer;
   begin
      write('Write year of birth: ');
      readln(year);
      while (year < 1900) or (year > 2021) do
	 begin
	    writeln(year,'is invalid year');
	    write('try again!');
	    readln(year)
	 end;
      writeln('year',year,'is accepted!')
   end.
	    
