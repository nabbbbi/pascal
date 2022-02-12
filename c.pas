program light;
procedure dimensions(	 b : real; var mcr,sm,mm,dc,nm,km: real);
begin
   mcr:=b*1E-6; {микрометры}
   sm:=b*1E-2;  {сантиметры}
   mm:=b*1E-3;  {миллиметры}
   dc:=b*1E-1;  {дециметры}
   nm:=b*1E-9;  {нанометры}
   km:=b/1E+3   {километры}
end;
var
  c,l,x,m,s,mm,d,n,k	:real;
   begin
      c:=3E+8;
      t:=2E-2;
      x:=l/c;
      dimensions(x,m,s,mm,d,n,k);
      writeln(x:7,' ','Метров');
      writeln(m:7,' ','Микрометров');
      writeln(s:7,' ','Сантиметров');
      writeln(mm:7,' ','Миллиметров');
      writeln(d:7,' ','Дециметров');
      writeln(n:7,' ','Нанометров');
      writeln(k:7,' ','Километров') 
   end.










       
   
  
