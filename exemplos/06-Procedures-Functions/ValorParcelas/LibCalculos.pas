unit LibCalculos;

interface

function ValorExato(const Valor: Double; Decimais: Byte = 2): Double;

implementation

uses
  Math;

function ValorExato(const Valor: Double; Decimais: Byte = 2): Double;
var
  Fator: Double;
begin
  Fator := Power(10, Decimais);
  Result := Trunc(Valor * Fator) / Fator;
end;

end.
