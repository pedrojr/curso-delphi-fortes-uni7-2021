unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    LblValorA: TLabel;
    EdtValorA: TEdit;
    LblValorB: TLabel;
    EdtValorB: TEdit;
    BtnSomar: TButton;
    BtnSubtrair: TButton;
    BtnMultiplicar: TButton;
    BtnDividir: TButton;
    MemResultado: TMemo;
    procedure BtnSomarClick(Sender: TObject);
    procedure BtnSubtrairClick(Sender: TObject);
    procedure BtnMultiplicarClick(Sender: TObject);
    procedure BtnDividirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

function Somar(A, B: Double): Double; stdcall; external 'LibCalc.dll';
function Subtrair(A, B: Double): Double; stdcall; external 'LibCalc.dll';
function Multiplicar(A, B: Double): Double; stdcall; external 'LibCalc.dll';
function Dividir(A, B: Double): Double; stdcall; external 'LibCalc.dll';

{$R *.dfm}

procedure TFrmPrincipal.BtnSomarClick(Sender: TObject);
var
  Resultado: Double;
begin
  Resultado :=Somar(StrToFloat(EdtValorA.Text), StrToFloat(EdtValorB.Text));
  MemResultado.Lines.Add('Somar: '+ EdtValorA.Text +' + '+ EdtValorB.Text +' = '+ FloatToStr(Resultado));
end;

procedure TFrmPrincipal.BtnSubtrairClick(Sender: TObject);
var
  Resultado: Double;
begin
  Resultado :=Subtrair(StrToFloat(EdtValorA.Text), StrToFloat(EdtValorB.Text));
  MemResultado.Lines.Add('Subtrair: '+ EdtValorA.Text +' - '+ EdtValorB.Text +' = '+ FloatToStr(Resultado));
end;

procedure TFrmPrincipal.BtnMultiplicarClick(Sender: TObject);
var
  Resultado: Double;
begin
  Resultado :=Multiplicar(StrToFloat(EdtValorA.Text), StrToFloat(EdtValorB.Text));
  MemResultado.Lines.Add('Multiplicar: '+ EdtValorA.Text +' * '+ EdtValorB.Text +' = '+ FloatToStr(Resultado));
end;

procedure TFrmPrincipal.BtnDividirClick(Sender: TObject);
var
  Resultado: Double;
begin
  Resultado :=Multiplicar(StrToFloat(EdtValorA.Text), StrToFloat(EdtValorB.Text));
  MemResultado.Lines.Add('Dividir: '+ EdtValorA.Text +' / '+ EdtValorB.Text +' = '+ FloatToStr(Resultado));
end;

end.
