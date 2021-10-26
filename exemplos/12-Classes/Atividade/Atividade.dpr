program Atividade;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Contas in 'Contas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
