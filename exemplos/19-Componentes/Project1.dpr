program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Produtos in 'Produtos.pas' {FrmProdutos},
  Clientes in 'Clientes.pas' {FrmClientes},
  TesteMdi in 'TesteMdi.pas' {FrmMdi},
  FmeEventos in 'FmeEventos.pas' {FmEventos: TFrame},
  FmeTeste in 'FmeTeste.pas' {FmTeste: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
