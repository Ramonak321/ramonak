program hellocrt;
uses crt;
const
	Message = 'Hello, world!';
	DelatDuration = 10000;
var
	x,y:integer;
begin
	clrscr;
	x:=(ScreenWidth - length(Message)) div 2;
	y:=ScreenHeight div 2;
	GotoXY(x,y);
	textcolor(green or blink);
	textbackground(lightmagenta or blink);
	write(Message);
	GotoXY(1,1);
	delay(DelatDuration);
	clrscr;
	write(#27'[0m');
end.
