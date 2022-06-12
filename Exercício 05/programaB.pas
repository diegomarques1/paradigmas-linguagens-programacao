{ Programa B - Diego Souza Lima Marques - TIA: 32039921 }
{ Observação: no programa original, x não foi declarado como ponteiro.
Foi necessário declarar como ponteiro para rodar em Pascal. }
program programaB;

type ponteiroInt = ^integer; { passar ponteiro como parâmetro }

function f(x : ponteiroInt; y : integer) : integer;
begin
	x^ := 1; { sintaxe de ponteiro em Pascal }
	y := 1;
	f := x^ + y; { retorno da função f } 
end;

var 
	x : ^integer;
	y, z : integer;
begin
	new(x); { alocação dinâmica }
	x^ := 0;
	y := 0;
	z := 0;
	writeln(x^, ' ', y, ' ', z);
	z := f(x, y);
	writeln(x^, ' ', y, ' ', z);
	dispose(x); { desalocar a memória do ponteiro }
	
end.