unit Principal;

{
Requisitos: Criar um sistema para calcular a folha de pagamentos de uma empresa.
	- Cadastro de cargos: código e nome.
	- Cadastro de eventos: código, descrição, tipo (desconto/acréscimo).
	- Tabela de INSS.
	- Tabela de IRRF.
	- Cadastro de funcionários: código, nome, data de nascimento, cargo, contato, e-mail, ativo.
	  * O cadastro de funcionários deve manter o histórico de salários do empredado.
	- Registrar mudança de salário
	- Lançar evento para funcionário(s)
	- Tela de processamento de folha: calcular/recalcular folha de pagamentos para um mês informado.
		* Consultar dados dos funcionários ativos
		* Calcular INSS
		* Calcular IRRF
		* Verificar Eventos para o mês
	- Relatório de folha de pagamento.
	- Relatório de empregados.
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    Menu: TMainMenu;
    Cadastros1: TMenuItem;
    Processos1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    CadCargos: TMenuItem;
    CadEventos: TMenuItem;
    RelFuncionarios: TMenuItem;
    RelFolhadePagamento: TMenuItem;
    ProFolhadePagamento: TMenuItem;
    N1: TMenuItem;
    TabINSS: TMenuItem;
    TabIRRF: TMenuItem;
    N2: TMenuItem;
    CadFuncionarios: TMenuItem;
    Sair2: TMenuItem;
    StatusBar1: TStatusBar;
    ProRegistrarMudancaSalarios: TMenuItem;
    ProLancarEventoFuncionrios: TMenuItem;
    procedure SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CadEventosClick(Sender: TObject);
    procedure CadCargosClick(Sender: TObject);
    procedure CadFuncionariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Conexao, CadCargos, CadEventos,
  CadFuncionarios, CadFuncionarios2, CadFuncionarios3;

{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  DM.Free;
end;

procedure TFrmPrincipal.CadCargosClick(Sender: TObject);
begin
  FrmCargos := TFrmCargos.Create(Self);
  FrmCargos.ShowModal;
  FrmCargos.Free;
end;

procedure TFrmPrincipal.CadEventosClick(Sender: TObject);
begin
  FrmEventos := TFrmEventos.Create(Self);
  FrmEventos.ShowModal;
  FrmEventos.Free;
end;

procedure TFrmPrincipal.CadFuncionariosClick(Sender: TObject);
begin
  FrmFuncionarios := TFrmFuncionarios.Create(Self);
  FrmFuncionarios.ShowModal;
  FrmFuncionarios.Free;
end;

procedure TFrmPrincipal.SairClick(Sender: TObject);
begin
  Close;
end;

end.
