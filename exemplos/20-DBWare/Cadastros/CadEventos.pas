unit CadEventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Conexao, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TFrmEventos = class(TForm)
    DtsEventos: TDataSource;
    QryEventos: TFDQuery;
    QryEventosCODIGO: TIntegerField;
    QryEventosDESCRICAO: TStringField;
    QryEventosTIPO: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    EdtBusca: TEdit;
    BtnBusca: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnBuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEventos: TFrmEventos;

implementation

{$R *.dfm}

procedure TFrmEventos.FormCreate(Sender: TObject);
begin
  QryEventos.Open;
end;

procedure TFrmEventos.BtnBuscaClick(Sender: TObject);
begin
  //if QryEventos.FindKey([EdtBusca.Text]) then
  if QryEventos.Locate('DESCRICAO', EdtBusca.Text, [loCaseInsensitive, loPartialKey]) then
  //if QryEventos.Locate('CODIGO,NOME', VarArrayof([EdtID.Text, EdtNome.Text]), [loCaseInsensitive]) then
    PageControl1.ActivePage := TabSheet2
  else
    ShowMessage('Registro não encontrado');
end;

end.
