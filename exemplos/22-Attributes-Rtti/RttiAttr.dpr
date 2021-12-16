program RttiAttr;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  AttributeTests in 'AttributeTests.pas',
  Attributes in 'Attributes.pas',
  EnumAttribute in 'EnumAttribute.pas',
  RttiTests in 'RttiTests.pas',
  EnumTypes in 'EnumTypes.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
