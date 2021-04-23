program Bones;
uses crt;
const
	bot = 'крупье';
	player2 = 'Ivanka';
	player3 = 'Vasya';
var
	players: array [1..3] of string;
	players_roll: array [1..3] of integer;
	bot_roll: integer;
	i, winner: byte;
	minimal: integer;
	
function are_you_ready(): integer;
var ask: string;
begin
	write('ready to play {y}? ');
	readln(ask);
	if ask = 'y' then 
		are_you_ready := 1;
end;

function roll_a_dice(): integer;
var roll,sum,i: integer;
begin
	
	sum := 0;
	randomize;
	for i := 1 to 3 do
	begin
	roll := (random(5) + 1);
	write('roll - ',roll,' ');
	sum := sum + roll;
	end;

roll_a_dice := sum;
end;
	

begin
	write('Insert player name: ');
	readln(players[1]);
	players[2] := player2;
	players[3] := player3;
	if are_you_ready() <> 1 then
		writeln('bye!')
	else 
		writeln('go');
	for i := 1 to 3 do
		begin
		players_roll[i] := roll_a_dice();
		writeln(players[i],' roll a ',players_roll[i]);
		delay(1000);
	end;
	bot_roll := roll_a_dice();
	writeln(bot, ' roll a ', bot_roll);
	for i :=1 to 3 do
		begin
		players_roll[i] := abs(bot_roll - players_roll[i]);
	end;
	minimal := players_roll[1];
	winner := 1;
	for i := 1 to 3 do
		begin
			if players_roll[i] < minimal then
			begin
				minimal := players_roll[i];
				winner := i;
			end;
	end;
	writeln('The winner is a ', players[winner], '. Congratulations!!!');


end.
