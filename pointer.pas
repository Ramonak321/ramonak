program poiter;
var
	r: integer;
	p: ^integer;
	ap: pointer;
begin
	readln(r);
	writeln(r);
	p := @r;
	writeln(p^);
	p^ := 25.7;
	writeln(P^);
	writeln(r);
end.
