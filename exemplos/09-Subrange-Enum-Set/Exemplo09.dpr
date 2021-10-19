program Exemplo09;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Enum1 in 'Enum1.pas',
  Enum2 in 'Enum2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
