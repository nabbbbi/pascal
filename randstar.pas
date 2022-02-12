program RandomStars;
uses crt;
const
   DelayDuration = 2;
   ColorCount	 = 16;
   var
       AllColors : array [1..ColorCount] of word = (Black, Blue, Green, Cyan, Red, Magenta, Brown, LightGray, DarkGray, LightBlue, LightGreen, LightCyan, LightRed, LightMagenta, Yellow, White);
      x,y,col	 : integer;
      begin
	 randomize;
	 clrscr;
	 while not keypressed do
	    begin
	       x:=random(ScreenWidth);
	       y:=random(ScreenHeight);
	       if (x = ScreenWidth) and (y = ScreenHeight) then
		  continue;
	       col:=random(ColorCount);
	       GotoXY(x,y);
	       TextColor(AllColors[col]);
	       write('*');
	       delay(DelayDuration);
	       clrscr
	    end;
	 write(#27'[0m');
	 clrscr
      end.
	       
