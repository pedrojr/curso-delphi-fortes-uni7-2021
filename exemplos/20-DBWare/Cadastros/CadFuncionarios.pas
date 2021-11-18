unit CadFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmFuncionarios = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    QryFuncionarios: TFDQuery;
    DtsFuncionarios: TDataSource;
    QryFuncionariosCODIGO: TIntegerField;
    QryFuncionariosNOME: TStringField;
    QryFuncionariosCOD_CARGO: TIntegerField;
    QryFuncionariosCONTATO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DtsCargos: TDataSource;
    QryCargos: TFDQuery;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFuncionarios: TFrmFuncionarios;

implementation

{$R *.dfm}

procedure TFrmFuncionarios.FormCreate(Sender: TObject);
begin
  QryFuncionarios.Open;
  QryCargos.Open;
end;

procedure TFrmFuncionarios.FormDestroy(Sender: TObject);
begin
  QryFuncionarios.Close;
  QryCargos.Close;
end;

procedure TFrmFuncionarios.Button1Click(Sender: TObject);
begin
  QryFuncionarios.Append;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TFrmFuncionarios.Button2Click(Sender: TObject);
begin
  if not QryFuncionarios.IsEmpty then
  begin
    QryFuncionarios.Edit;
    PageControl1.ActivePage := TabSheet2;
  end;
end;

procedure TFrmFuncionarios.Button3Click(Sender: TObject);
begin
  if not QryFuncionarios.IsEmpty then
    QryFuncionarios.Delete;
end;

procedure TFrmFuncionarios.Button4Click(Sender: TObject);
begin
  if QryFuncionarios.State in [dsInsert,dsEdit] then
    QryFuncionarios.Post;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmFuncionarios.Button5Click(Sender: TObject);
begin
  if QryFuncionarios.State in [dsInsert,dsEdit] then
    QryFuncionarios.Cancel;
  PageControl1.ActivePage := TabSheet1;
end;

end.
