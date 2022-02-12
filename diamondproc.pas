program DiamondProc;
procedure PrintSpaces(count : integer); {Подпрограмма 1}
var
   i : integer;
   begin
      for i:=1 to count do
	 write(' ');
   end;
procedure PrintLines(k,n : integer); {Подпрограмма 2}
     begin
      PrintSpaces(n+1-k);
      write('*');
      if k>1 then
	 begin
	 PrintSpaces(2*k-3);
      write('*')
	 end;
	writeln
     end;
{function NegotiateSize: integer; 
var
   h : integer;
   begin
      repeat
	 write('heigt');
	 readln(h)
      until (h > 0) and (h mod 2 = 1);
      NegotiateSize:=h
   end;

n:=Negotiate div 2;}
procedure NegotiateSize(var res	:integer); {Подпрограмма 3} 
var
   h : integer;
   begin
      repeat
	 write('heigt');
	 readln(h)
      until (h > 0) and (h mod 2 = 1);
      res:=h
   end;

var
   n,k : integer;
   begin
      NegotiateSize(n);
      n:=n div 2;
      for k:=1 to n+1 do
	 PrintLines(k,n);
      for k:=n downto 1 do
	 PrintLines(k,n);
   end.
