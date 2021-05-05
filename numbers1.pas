program Numbers;
var
	count: integer;
	x: integer;
function NUM (x: integer):boolean;
var 
	i: integer;
begin
	for i := 2 to (x-1) do
		begin
			if x mod i =  0 then
				begin
					NUM := False;
					exit;
				end;
		end;
	NUM := True;	
end;
begin
	count := 1;
	x := 1;
	while count <= 20  do
		begin
			if NUM(x)  = True then
				begin
					writeln(x);
					count := count + 1;
				end;
		x := x+1;
		end;
end.
