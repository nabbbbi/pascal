program Latin;
function IsLatinLetter(ch : char):boolean;
begin
   IsLatinLetter:=((ch>='A') and (ch <='Z') or (ch>='a') and (ch<='z'))
end;
var
   A : char;
begin
   if IsLatinLetter(A) then
      writeln('Endeed!')
      else
	 writeln('Nope!')
end.

