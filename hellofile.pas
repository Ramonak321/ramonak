program hellofile;
const
	message = 'Hello World!';
	filename = 'hello.txt';
var
	f: text;
	i: integer;
begin
	{$I-}
	assign(f,filename);
	if IOResult <> 0 then
		begin
			writeln('error');
			halt(1)
		end;
	rewrite(f);
	writeln(f,message);
	for i := 1 to 100 do
	writeln(f,i);
	if IOResult <> 0 then
		begin
			writeln('Error');
			halt(1);
		end;
	close(f);
		
end.
