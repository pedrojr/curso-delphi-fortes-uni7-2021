unit Pal�ndromo;

interface

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
