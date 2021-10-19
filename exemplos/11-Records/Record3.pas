unit Record3;

interface

type
  RVenda = record
    Valor: Double;
    Desconto: Double;
    function ValorLiquido: Double;
  end;

implementation

{ RVenda }

function RVenda.ValorLiquido: Double;
begin
  Result := Valor - Desconto;
end;

end.
