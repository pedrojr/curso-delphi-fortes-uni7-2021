unit CadCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Conexao;

type
  TFrmCargos = class(TForm)
    TblCargos: TFDTable;
    DBNavigator1: TDBNavigator;
    DtsCargos: TDataSource;
    TblCargosSTR_CALC: TStringField;
    DBText1: TDBText;
    TblCargosCODIGO: TIntegerField;
    TblCargosDESCRICAO: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BtnSetRange: TButton;
    procedure TblCargosCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BtnSetRangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCargos: TFrmCargos;

implementation

{$R *.dfm}

procedure TFrmCargos.FormCreate(Sender: TObject);
begin
  TblCargos.Open;
end;

procedure TFrmCargos.TblCargosCalcFields(DataSet: TDataSet);
begin
  TblCargosSTR_CALC.AsString := TblCargosCODIGO.AsString + ' - '+
    TblCargosDESCRICAO.AsString;
end;

procedure TFrmCargos.BtnSetRangeClick(Sender: TObject);
begin
  TblCargos.IndexFieldNames := 'CODIGO';
  TblCargos.SetRange([5],[10]);
  TblCargos.ApplyRange;
  Application.ProcessMessages;
  while not TblCargos.Eof do
  begin
    Sleep(2000);
    TblCargos.Next;
    Application.ProcessMessages;
  end;
  ShowMessage('Registros: '+ IntToStr(TblCargos.RecordCount));
  TblCargos.CancelRange;
  ShowMessage('Registros: '+ IntToStr(TblCargos.RecordCount));
end;

end.
