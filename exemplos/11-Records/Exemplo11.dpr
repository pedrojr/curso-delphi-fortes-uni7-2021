program Exemplo11;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Record3 in 'Record3.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
