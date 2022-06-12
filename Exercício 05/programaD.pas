{ Programa D - Diego Souza Lima Marques - TIA: 32039921 }
program programaD;

function f(var x, y : integer) : integer; { passagem por referência }
begin
	x := 1;
	y := 1;
	f := x + y; { retorno da função f } 
end;

var 
	x, y, z : integer;

begin
	x := 0;
	y := 0;
	z := 0;
	writeln(x, ' ', y, ' ', z);
	z := f(x, y);
	writeln(x, ' ', y, ' ', z);
end.