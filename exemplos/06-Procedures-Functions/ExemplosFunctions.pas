unit ExemplosFunctions;

interface

function FunctionA: string;

function FunctionB: string; overload;
function FunctionB(Valor: string): string; overload;

function FunctionC(Valor: string = ''): string;

function FunctionD(const Valor1: string; var Valor2: string; out Valor3: string): string;

implementation

function FunctionA: string;
begin
  //Atribuir Result!
end;

function FunctionB: string;
begin
  Result := 'FunctionB';
end;

function FunctionB(Valor: string): string;
begin
  Result := 'FunctionB: '+ Valor;
end;

function FunctionC(Valor: string = ''): string;
begin
  Result := 'FunctionC: '+ Valor;
end;

function FunctionD(const Valor1: string;
  var Valor2: string; out Valor3: string): string;
begin
  Result := 'FunctionD - Valor1:'+ Valor1 +
            ' Valor2:'+ Valor2 +' Valor3:'+ Valor3;
end;

end.
