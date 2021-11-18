unit Principal;

{
Requisitos: Criar um sistema para calcular a folha de pagamentos de uma empresa.
	- Cadastro de cargos: c�digo e nome.
	- Cadastro de eventos: c�digo, descri��o, tipo (desconto/acr�scimo).
	- Tabela de INSS.
	- Tabela de IRRF.
	- Cadastro de funcion�rios: c�digo, nome, data de nascimento, cargo, contato, e-mail, ativo.
	  * O cadastro de funcion�rios deve manter o hist�rico de sal�rios do empredado.
	- Registrar mudan�a de sal�rio
	- Lan�ar evento para funcion�rio(s)
	- Tela de processamento de folha: calcular/recalcular folha de pagamentos para um m�s informado.
		* Consultar dados dos funcion�rios ativos
		* Calcular INSS
		* Calcular IRRF
		* Verificar Eventos para o m�s
	- Relat�rio de folha de pagamento.
	- Relat�rio de empregados.
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
