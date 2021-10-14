unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask;

type
  TFrmPrincipal = class(TForm)
    LblValorVenda: TLabel;
    EdtValorVenda: TEdit;
    LblParcelas: TLabel;
    EdtParcelas: TEdit;
    MemParcelas: TMemo;
    BtnCalcular: TButton;
    procedure BtnCalcularClick(Sender: TObject);
    procedure EdtValorVendaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  LibCalculos;

{$R *.dfm}

procedure TFrmPrincipal.EdtValorVendaKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['0'..'9', ',', Chr(8)]) then
    Key := #0;
end;

procedure TFrmPrincipal.BtnCalcularClick(Sender: TObject);
var
  ValorDaVenda: Double;
  TotalDeParcelas: Byte;
  ValorDaParcela: Double;
  ValorRestante: Double;
begin
  MemParcelas.Clear;

  ValorDaVenda := StrToFloat(EdtValorVenda.Text);
  TotalDeParcelas := StrToInt(EdtParcelas.Text);

  ValorDaParcela := ValorExato(ValorDaVenda / TotalDeParcelas);
  ValorRestante := ValorExato(ValorDaVenda - (ValorDaParcela * TotalDeParcelas), 3);

  if ValorRestante > 0 then
  begin
    MemParcelas.Lines.Add(IntToStr(TotalDeParcelas -1) +' x '+ FloatToStr(ValorDaParcela));
    MemParcelas.Lines.Add('1 x '+ FloatToStrF(ValorDaParcela + ValorRestante, ffCurrency, 8, 2));
  end
  else
    MemParcelas.Lines.Add(IntToStr(TotalDeParcelas) +' x '+ FloatToStr(ValorDaParcela));
end;

end.
