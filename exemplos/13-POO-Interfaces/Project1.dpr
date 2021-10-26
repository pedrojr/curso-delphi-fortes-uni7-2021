program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  MinhasClasses in 'MinhasClasses.pas',
  MinhasInterfaces in 'MinhasInterfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
