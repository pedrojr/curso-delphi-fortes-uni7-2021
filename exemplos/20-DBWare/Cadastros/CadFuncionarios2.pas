unit CadFuncionarios2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmFuncionarios2 = class(TForm)
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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtCargo: TDBLookupComboBox;
    DtsCargos: TDataSource;
    QryCargos: TFDQuery;
    Button4: TButton;
    Button5: TButton;
    EdtCodigo: TEdit;
    EdtNome: TEdit;
    EdtContato: TEdit;
    Qry: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    FAcao: string;
    procedure LimparCampos;
    procedure AtribuiCampos;
  public
    { Public declarations }
  end;

var
  FrmFuncionarios2: TFrmFuncionarios2;

implementation

{$R *.dfm}

procedure TFrmFuncionarios2.LimparCampos;
begin
  FAcao := '';
  EdtCodigo.Clear;
  EdtNome.Clear;
  EdtContato.Clear;
  EdtCargo.KeyValue := Null;
end;

procedure TFrmFuncionarios2.AtribuiCampos;
begin
  EdtCodigo.Text := QryFuncionariosCODIGO.AsString;
  EdtNome.Text := QryFuncionariosNOME.AsString;
  EdtContato.Text := QryFuncionariosCONTATO.AsString;
  EdtCargo.KeyValue := QryFuncionariosCOD_CARGO.AsString;
end;

procedure TFrmFuncionarios2.Button1Click(Sender: TObject);
begin
  LimparCampos;
  FAcao := 'ADD';
  PageControl1.ActivePage := TabSheet2;
end;

procedure TFrmFuncionarios2.Button2Click(Sender: TObject);
begin
  if not QryFuncionarios.IsEmpty then
  begin
    AtribuiCampos;
    FAcao := 'EDT';
    PageControl1.ActivePage := TabSheet2;
  end;
end;

procedure TFrmFuncionarios2.Button3Click(Sender: TObject);
begin
  if not QryFuncionarios.IsEmpty then
  begin
    Qry.SQL.Text := 'DELETE FROM FUNCIONARIOS WHERE CODIGO = :CODIGO';
    Qry.ParamByName('CODIGO').AsString := QryFuncionariosCODIGO.AsString;
    Qry.ExecSQL;
    QryFuncionarios.Refresh;
  end;
end;

procedure TFrmFuncionarios2.Button4Click(Sender: TObject);
begin
  if FAcao = 'ADD' then
  begin
    Qry.SQL.Text := 'INSERT INTO FUNCIONARIOS(CODIGO,NOME,COD_CARGO,CONTATO) '+
                    'VALUES('+ EdtCodigo.Text +','''+ EdtNome.Text +''','+
                    VarToStr(EdtCargo.KeyValue) +','+ QuotedStr(EdtContato.Text) +');';
    Qry.ExecSQL;
  end
  else if FAcao = 'EDT' then
  begin
    Qry.SQL.Text := 'UPDATE FUNCIONARIOS SET '+
                    ' NOME = '+ QuotedStr(EdtNome.Text) +','+
                    ' COD_CARGO = '+ VarToStr(EdtCargo.KeyValue) +','+
                    ' CONTATO = '+ QuotedStr(EdtContato.Text) +
                    ' WHERE CODIGO = '+ EdtCodigo.Text;
    Qry.ExecSQL;
  end;
  QryFuncionarios.Refresh;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmFuncionarios2.Button5Click(Sender: TObject);
begin
  LimparCampos;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmFuncionarios2.FormCreate(Sender: TObject);
begin
  QryFuncionarios.Open;
  QryCargos.Open;
end;

procedure TFrmFuncionarios2.FormDestroy(Sender: TObject);
begin
  QryFuncionarios.Close;
  QryCargos.Close;
end;

end.
