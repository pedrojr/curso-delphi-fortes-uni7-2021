program Atividade2;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Pneu in 'Pneu.pas',
  PneuIntf in 'PneuIntf.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
