program starlight;
uses crt;
const
	msg='*';
	dd=10000;
	col_count=6;
var
colors:array[1..col_count] of word=(black,blue,green,red,magenta,cyan);
x,y:integer;
begin
	clrscr;
	for x:=1 to 500 do
		begin
		y:=random(500);
		gotoxy(x,y);
		textcolor(colors[random(6)] or blink);
		write(msg);
		end;
delay(dd);
clrscr;
end.
