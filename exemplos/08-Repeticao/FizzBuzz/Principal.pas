unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    EdtNumero: TEdit;
    Resultado: TMemo;
    BtnVerificar: TButton;
    procedure BtnVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

{
Escreva uma rotina para exibir na tela os números de 1 a N.
Para os múltiplos de 3, escreva FIZZ;
Para os múltiplos de 5, escreva BUZZ;
E para os múltiplos de 3 e 5, escreva FIZZBUZZ.
}

procedure TFrmPrincipal.BtnVerificarClick(Sender: TObject);
var
  N, I: Integer;
begin
  N := StrToInt(EdtNumero.Text);
  Resultado.Clear;

  if (N < 3) then
  begin
    Resultado.Lines.Add('O número deve ser maior que dois');
    Exit;
  end;

  for I := 1 to N do
  begin
    if (I mod 3 = 0) and (I mod 5 = 0) then
      Resultado.Lines.Add(IntToStr(I) +' - FIZZBUZZ')
    else if (I mod 3 = 0) then
      Resultado.Lines.Add(IntToStr(I) +' - FIZZ')
    else if (I mod 5 = 0) then
      Resultado.Lines.Add(IntToStr(I) +' - BUZZ')
    else
      Resultado.Lines.Add(IntToStr(I));
  end;
end;

end.
