unit Unit2;

interface

/// <summary> Verifica se uma palavra � pal�ndromo
/// </summary>
/// <param name="Palavra">Palavra para verifica��o
/// </param>
/// <returns>Retorna uma string informando se � ou n�o pal�ndromo
/// </returns>
function �Pal�ndromo(const Palavra: string): string;

implementation

uses
  StrUtils;

function �Pal�ndromo(const Palavra: string): string;
var
  PalavraSemEspa�os: string;
  PalavraInvertida: string;
begin
  Result := 'N�o � Pal�ndromo.';
  PalavraSemEspa�os := ReplaceStr(Palavra, ' ', '');
  PalavraInvertida := AnsiReverseString(PalavraSemEspa�os);
  if (PalavraSemEspa�os <> '') and (PalavraInvertida = PalavraSemEspa�os) then
    Result := '� Pal�ndromo: '+ PalavraInvertida;
end;

end.
