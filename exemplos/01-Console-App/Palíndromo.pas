unit Palíndromo;

interface

function ÉPalíndromo(const Palavra: string): string;

implementation

uses
  StrUtils;

function ÉPalíndromo(const Palavra: string): string;
var
  PalavraSemEspaços: string;
  PalavraInvertida: string;
begin
  Result := 'Não é Palíndromo.';
  PalavraSemEspaços := ReplaceStr(Palavra, ' ', '');
  PalavraInvertida := AnsiReverseString(PalavraSemEspaços);
  if (PalavraSemEspaços <> '') and (PalavraInvertida = PalavraSemEspaços) then
    Result := 'É Palíndromo: '+ PalavraInvertida;
end;

end.
