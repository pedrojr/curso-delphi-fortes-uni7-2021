program Generics;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  AutoFree in 'AutoFree.pas',
  GenericsObjectList in 'GenericsObjectList.pas',
  Singleton in 'Singleton.pas',
  SingletonTest in 'SingletonTest.pas',
  Objetos in 'Objetos.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
