program Bones;
uses crt;
const
	dice = 3;
	player2='Ivanko';
	player3='Vasilisa';
	bot='крупье';
	dd=5000;
var
	dice_count: array [1..6] of integer;
	player1:string;

procedure DYWP (var a,b:string);

begin
clrscr;
gotoxy(((screenwidth-50) div 2),screenheight div 2);
textcolor(red);
write('do you wanna play a game? (y-yes, n-no)');
readln(a);
b:='n';
if a<>b then
	goto rnd;	
else
	write('Bue-Bue,pussy');
	delay(dd);
	write(#27'[0m');
	end;

procedure rnd (var x,y,z,i:integer):integer;

begin
randomize;
clrscr;
gotoxy(((screenwidth-50) div 2),screenheight div 2);
textcolor(green or blink);
writeln('You must trow a 3 dice as close as possible to ',bot,'. You keep 3 dice and trow it. What you see?');
write('Enter the number what you see(3 to 18): ');
readln(x);
writeln(player1,' has ',x);
y:=random(15)+3;
writeln(player2,' has ',y);
z:=random(15)+3;
writeln(player3,' has ',z);
textcolor(red or blink);
writeln(bot,' trow a dice..');
delay(dd);
write('wait..');
delay(dd);
i:=random(15)+3;
clrscr;
gotoxy(((screenwidth-50) div 2),screenheight div 2);
textcolor(cyan or blink);
x:=abs(i-x);
y:=abs(i-y);
z:=abs(i-z);
if x=y or x=z or y=z then
  	writeln('Ничья')
	goto DYWP
end
else
	if x<y and x<z then
		writeln('You win!');
		goto DYWP;
	if y<z and y<x then
		writeln(player2,' win!');
		goto DYWP;
	if z<x and z<y then
		writeln(player3,' win!');
		goto DYWP;
	end;

begin
	clrscr;
	gotoxy(5,5);
	Textcolor(blue or blink);
	write('Insert your name: ');
	readln(player1);
	clrscr;
goto DYWP;
	write(#27'[0m');

end.
