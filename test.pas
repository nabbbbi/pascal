program pl;
var
  i,r	  : integer;
{ôóíêöèÿ ïðîâåðêè íà ïðîñòîå}
function Simple(x:integer):boolean;
var
  i:integer;
begin
  for i:=2 to x div 2 do
    if x mod i=0 then
    begin
       Simple:=false;
       exit
    end;
  Simple:=true;
end;
{îñíîâíàÿ ïðîãðàììà}
begin
  writeln('Ââåäèòå r:');
  readln(r);
  writeln('Ïðîñòûå:');
  for i:=1 to r do
    if Simple(i) then
      write(i,' ');
  writeln
end.
