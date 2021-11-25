program AppFolha;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Conexao in 'Conexao.pas' {DM: TDataModule},
  CadCargos in 'Cadastros\CadCargos.pas' {FrmCargos},
  CadEventos in 'Cadastros\CadEventos.pas' {FrmEventos},
  CadFuncionarios2 in 'Cadastros\CadFuncionarios2.pas' {FrmFuncionarios2},
  CadPadrao in 'Patterns\CadPadrao.pas' {FrmCadPadrao},
  CadFuncionarios3 in 'Cadastros\CadFuncionarios3.pas' {FrmFuncionarios3},
  CadFuncionarios in 'Cadastros\CadFuncionarios.pas' {FrmFuncionarios},
  CadFuncionarios4 in 'Cadastros\CadFuncionarios4.pas' {FrmFuncionarios4};

{$R *.res}

begin
  Application.Initialize;
  //ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
