program Exemplo05;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  ExemplosVar in 'ExemplosVar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
