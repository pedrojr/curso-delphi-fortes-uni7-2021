unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    PopupMenu1: TPopupMenu;
    este11: TMenuItem;
    este21: TMenuItem;
    este31: TMenuItem;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    Mdi1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Mdis1: TMenuItem;
    procedure este11Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Mdis1Click(Sender: TObject);
    procedure Mdi1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Produtos, Clientes, TesteMdi;

{$R *.dfm}

procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
begin
  FrmProdutos := TFrmProdutos.Create(Self);
  try
    FrmProdutos.ShowModal;
  finally
    FrmProdutos.Free;
  end;
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
  FrmClientes := TFrmClientes.Create(Self);
  FrmClientes.Show;
end;

procedure TFrmPrincipal.Mdi1Click(Sender: TObject);
begin
  FrmMdi := TFrmMdi.Create(Self);
  FrmMdi.Show;
end;

procedure TFrmPrincipal.Mdis1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to MDIChildCount -1 do
  begin
    MDIChildren[I].Close;
  end;
  //ActiveMDIChild
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.este11Click(Sender: TObject);
begin
  ShowMessage('Teste 1');
end;

end.
