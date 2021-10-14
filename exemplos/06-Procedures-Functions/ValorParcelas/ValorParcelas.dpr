program ValorParcelas;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  LibCalculos in 'LibCalculos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
