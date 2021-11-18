unit CadFuncionarios3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFrmFuncionarios3 = class(TFrmCadPadrao)
    QryCargos: TFDQuery;
    DtsCargos: TDataSource;
    EdtCargo: TDBLookupComboBox;
    QryMainCODIGO: TIntegerField;
    QryMainNOME: TStringField;
    QryMainCOD_CARGO: TIntegerField;
    QryMainCONTATO: TStringField;
    Label1: TLabel;
    EdtCodigo: TDBEdit;
    Label2: TLabel;
    EdtNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdtContato: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  protected
    function Validado: Boolean; override;
  public
    { Public declarations }
  end;

var
  FrmFuncionarios3: TFrmFuncionarios3;

implementation

{$R *.dfm}

procedure TFrmFuncionarios3.FormCreate(Sender: TObject);
begin
  inherited;
  QryCargos.Open;
end;

procedure TFrmFuncionarios3.FormDestroy(Sender: TObject);
begin
  inherited;
  QryCargos.Close;
end;

function TFrmFuncionarios3.Validado: Boolean;
begin
  Result := False;
  if EdtCodigo.Text = '' then
  begin
    ShowMessage('Código deve ser informado.');
    Abort;
  end;
  Result := True;
end;

end.
