program ConsoleApp2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Pal�ndromo in 'Pal�ndromo.pas';

var
  Palavra: string;

begin
  Writeln('Informe uma palavra ou frase:');
  Readln(Palavra);
  Writeln(�Pal�ndromo(Palavra));
  ReadLn;
end.
