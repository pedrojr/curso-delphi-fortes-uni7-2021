unit CadFuncionarios4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao, Vcl.Mask,
  Vcl.DBCtrls, Vcl.DBLookup, Vcl.ExtCtrls;

type
  TFrmFuncionarios4 = class(TForm)
    PgcCadastro: TPageControl;
    TbsLista: TTabSheet;
    TbsEdicao: TTabSheet;
    DbgLista: TDBGrid;
    BtnAdicionar: TButton;
    BtnEditar: TButton;
    BtnExcluir: TButton;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    DtsFuncionario: TDataSource;
    QryFuncionario: TFDQuery;
    QryFuncionarioCODIGO: TIntegerField;
    QryFuncionarioNOME: TStringField;
    QryFuncionarioCOD_CARGO: TIntegerField;
    QryFuncionarioATIVO: TIntegerField;
    QryFuncionarioCONTATO: TStringField;
    Label1: TLabel;
    EdtCodigo: TDBEdit;
    Label2: TLabel;
    EdtNome: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DtsCargos: TDataSource;
    QryCargos: TFDQuery;
    QryCargosCODIGO: TIntegerField;
    QryCargosDESCRICAO: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    QryFuncionarioCargo: TStringField;
    DbgSalarios: TDBGrid;
    LblSalarios: TLabel;
    PnlSalario: TPanel;
    EdtSalario: TEdit;
    LblSalario: TLabel;
    QrySalarios: TFDQuery;
    DtsSalarios: TDataSource;
    QrySalariosDATA_HORA: TSQLTimeStampField;
    QrySalariosCOD_FUNCIONARIO: TIntegerField;
    QrySalariosSALARIO: TFloatField;
    procedure QryFuncionarioATIVOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure PgcCadastroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFuncionarios4: TFrmFuncionarios4;

implementation

{$R *.dfm}

procedure TFrmFuncionarios4.FormCreate(Sender: TObject);
begin
  QryFuncionario.Open;
  QrySalarios.Open;
  QryCargos.Open;
  PgcCadastro.ActivePage := TbsLista;
end;

procedure TFrmFuncionarios4.FormDestroy(Sender: TObject);
begin
  QrySalarios.Close;
  QryFuncionario.Close;
  QryCargos.Close;
end;

procedure TFrmFuncionarios4.PgcCadastroChange(Sender: TObject);
begin
  if (PgcCadastro.ActivePage = TbsLista) and (QryFuncionario.State in [dsInsert, dsEdit]) then
  begin
    ShowMessage('O cadastro está em modo de edição.');
    PgcCadastro.ActivePage := TbsEdicao;
  end;
end;

procedure TFrmFuncionarios4.BtnAdicionarClick(Sender: TObject);
begin
  QryFuncionario.Append;
  PnlSalario.Visible := True;
  EdtSalario.Text := '';
  PgcCadastro.ActivePage := TbsEdicao;
end;

procedure TFrmFuncionarios4.BtnEditarClick(Sender: TObject);
begin
  if not QryFuncionario.IsEmpty then
  begin
    QryFuncionario.Edit;
    PnlSalario.Visible := False;
    EdtSalario.Text := '';
    PgcCadastro.ActivePage := TbsEdicao;
  end;
end;

procedure TFrmFuncionarios4.BtnExcluirClick(Sender: TObject);
begin
  if not QryFuncionario.IsEmpty then
    QryFuncionario.Delete;
end;

procedure TFrmFuncionarios4.BtnSalvarClick(Sender: TObject);
var
  Salario: Currency;
begin
  //Validações
  if EdtCodigo.Text = '' then
  begin
    ShowMessage('Informe o código.');
    EdtCodigo.SetFocus;
    Exit;
  end;
  //..

  if QryFuncionario.State in [dsInsert, dsEdit] then
  begin
    QryFuncionario.Post;

    Salario := StrToFloatDef(EdtSalario.Text,0);
    if Salario > 0 then
    begin
      QrySalarios.Append;
      QrySalariosCOD_FUNCIONARIO.AsString := QryFuncionarioCODIGO.AsString;
      QrySalariosDATA_HORA.AsDateTime := Now;
      QrySalariosSALARIO.AsFloat := Salario;
      QrySalarios.Post;
      PnlSalario.Visible := False;
      EdtSalario.Text := '';
    end;
  end;

  PgcCadastro.ActivePage := TbsLista;
end;

procedure TFrmFuncionarios4.BtnCancelarClick(Sender: TObject);
begin
  if QryFuncionario.State in [dsInsert, dsEdit] then
    QryFuncionario.Cancel;

  PnlSalario.Visible := False;
  EdtSalario.Text := '';
  PgcCadastro.ActivePage := TbsLista;
end;

procedure TFrmFuncionarios4.QryFuncionarioATIVOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := 'Não';
  if Sender.AsInteger = 1 then
    Text := 'Sim';
end;

end.
