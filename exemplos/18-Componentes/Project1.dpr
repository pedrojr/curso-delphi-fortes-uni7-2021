program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Containers in 'Containers.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
