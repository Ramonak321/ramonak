program znum;
type
	itemptr = ^item;
	item = record
		data: integer;
		next: itemptr;
	end;
var
	num, tmp: itemptr;
begin
	{$I-}
	new(num);
	num := nill;
	
	while not SeekEof do
		begin
			new(tmp);
			readln(tmp^.data);
				
