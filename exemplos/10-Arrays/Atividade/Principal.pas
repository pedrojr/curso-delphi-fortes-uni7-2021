unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{
Criar um array de inteiros de tamanho 20.
Usar a função Random para gerar os números.
Calcular a média dos números do array.
}

procedure TForm1.Button1Click(Sender: TObject);
var
  IntArray: array[0..19] of Integer;
  I, Soma: Integer;
begin
  Soma := 0;
  for I := Low(IntArray) to High(IntArray) do
  begin
    IntArray[I] := Random(10) + 1;
    Soma := Soma + IntArray[I];
  end;
  Memo1.Clear;
  Memo1.Lines.Add(FormatFloat('#,##0.00', Soma / 20));
  Memo1.Lines.Add(FloatToStr(Soma / 20));
end;

end.
