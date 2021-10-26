unit Unit2;

interface

/// <summary> Verifica se uma palavra é palíndromo
/// </summary>
/// <param name="Palavra">Palavra para verificação
/// </param>
/// <returns>Retorna uma string informando se é ou não palíndromo
/// </returns>
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
