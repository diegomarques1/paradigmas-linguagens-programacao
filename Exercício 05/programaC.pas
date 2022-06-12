{ Programa C - Diego Souza Lima Marques - TIA: 32039921 }
program programaC;

var y : integer; { declaração da variável global }

type ponteiroInt = ^integer;

function f(x : ponteiroInt) : integer;
begin
	x^ := 1;
	f := x^ + y; { retorno da função f } 
end;

var 
	x, z : integer;
	p : ^integer;

begin
	y := 4;
	x := 0;
	z := 0;
	p := @x; { @ é o operador de endereço, similar ao comum & }
	writeln(x, ' ', y, ' ', z);
	z := f(p);
	writeln(x, ' ', y, ' ', z);
end.