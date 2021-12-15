program Helpers;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  CheckLstHelper in 'CheckLstHelper.pas',
  HelpersTest in 'HelpersTest.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
