unit CadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmCadPadrao = class(TForm)
    PgcPrincipal: TPageControl;
    TabLista: TTabSheet;
    TabRegistro: TTabSheet;
    GrdLista: TDBGrid;
    Panel1: TPanel;
    BtnAdicionar: TButton;
    BtnEditar: TButton;
    BtnExcluir: TButton;
    QryMain: TFDQuery;
    DtsMain: TDataSource;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function Validado: Boolean; virtual;
  public
    { Public declarations }
  end;

var
  FrmCadPadrao: TFrmCadPadrao;

implementation

{$R *.dfm}

procedure TFrmCadPadrao.BtnAdicionarClick(Sender: TObject);
begin
  QryMain.Append;
  PgcPrincipal.ActivePage := TabRegistro;
end;

procedure TFrmCadPadrao.BtnEditarClick(Sender: TObject);
begin
  if not QryMain.IsEmpty then
  begin
    QryMain.Edit;
    PgcPrincipal.ActivePage := TabRegistro;
  end;
end;

procedure TFrmCadPadrao.BtnExcluirClick(Sender: TObject);
begin
  if not QryMain.IsEmpty then
    QryMain.Delete;
end;

procedure TFrmCadPadrao.BtnSalvarClick(Sender: TObject);
begin
  if (QryMain.State in [dsInsert,dsEdit]) and (Validado) then
    QryMain.Post;
  PgcPrincipal.ActivePage := TabLista;
end;

procedure TFrmCadPadrao.BtnCancelarClick(Sender: TObject);
begin
  if QryMain.State in [dsInsert,dsEdit] then
    QryMain.Cancel;
  PgcPrincipal.ActivePage := TabLista;
end;

procedure TFrmCadPadrao.FormCreate(Sender: TObject);
begin
  QryMain.Open;
end;

procedure TFrmCadPadrao.FormDestroy(Sender: TObject);
begin
  QryMain.Close;
end;

function TFrmCadPadrao.Validado: Boolean;
begin
  Result := True;
end;

end.
