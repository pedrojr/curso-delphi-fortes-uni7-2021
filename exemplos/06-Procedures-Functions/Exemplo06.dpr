program Exemplo06;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  ExemplosProcedures in 'ExemplosProcedures.pas',
  ExemplosFunctions in 'ExemplosFunctions.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
