program Renamefile;
var
	f: file;
begin
	{$I-}
	if paramcount < 2 then
		begin
			writeln(Erroutput, 'many param''s');
			halt(1);
		end;
	assign(f, paramstr(1));
	rename(f, paramstr(2));
	if IOResult <> 0 then
		begin
			writeln(ErrOutput, 'Error rename');
			halt(1);
		end;
end.
