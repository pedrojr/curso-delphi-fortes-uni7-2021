program Atividade1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  ContasInterface in 'ContasInterface.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
