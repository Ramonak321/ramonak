program BlockFileCopy;
const
	Buf_size = 4096;
var
	src, dest: file;
	buffer: array [1..Buf_size] of byte;
	ReadRes, WriteRes: longint;
begin
	{$I-}
	if ParamCount < 2 then
		begin
			writeln(ErrOutput, 'Expected: source and dest. names');
			halt(1)
		end;
	assign(src, ParamStr(1));
	assign(dest, ParamStr(2));
	filemode := 0;
	reset(src, 1);
	If IOResult <> 0 then
		begin
			writeln(ErrOutput, 'Couldn''t open ', ParamStr(1));
			halt(1);
		end;
	filemode := 1;
	rewrite(dest, 1);
	If IOResult <> 0 then
		begin
			writeln(ErrOutput, 'Couldn''t open', ParamStr(2));
			halt(1);
		end;
	while true do
		begin
			BlockRead(src, buffer, Buf_size, ReadRes);
			if ReadRes = 0 then
				begin
					exit;
				end;
			BlockWrite(dest, buffer, Buf_size, WriteRes);
			if WriteRes <> ReadRes then
				begin
					writeln(ErrOutput, 'Error writing the file');
					break;
				end;
		end;
	close(src);
	close(dest);
end.
