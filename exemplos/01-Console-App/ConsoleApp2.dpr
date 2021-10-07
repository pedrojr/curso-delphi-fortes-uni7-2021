program ConsoleApp2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Palíndromo in 'Palíndromo.pas';

var
  Palavra: string;

begin
  Writeln('Informe uma palavra ou frase:');
  Readln(Palavra);
  Writeln(ÉPalíndromo(Palavra));
  ReadLn;
end.
