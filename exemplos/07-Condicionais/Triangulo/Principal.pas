unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    EdtLado1: TEdit;
    EdtLado2: TEdit;
    EdtLado3: TEdit;
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
Escreva uma aplicação que recebe como entrada três números inteiros
maiores que zero que representam os lados de um triângulo e que deve
retornar como resposta que tipo de triângulo é aquele. Caso os valores
informados não sejam de um triângulo válido, por exemplo quando a soma
de dois lados é menor que o terceiro, a função deve informar isso para
o usuário.
Equilátero - Possui três lados iguais
Isósceles - Possui dois lados iguais
Escaleno - Possui todos os três lados diferentes
}

procedure TFrmPrincipal.BtnVerificarClick(Sender: TObject);
var
  Lado1, Lado2, Lado3: Integer;
begin
  Lado1 := StrToInt(EdtLado1.Text);
  Lado2 := StrToInt(EdtLado2.Text);
  Lado3 := StrToInt(EdtLado3.Text);
  Resultado.Clear;

  if (Lado1 <= 0) or (Lado2 <= 0) or (Lado3 <= 0) then
  begin
    Resultado.Lines.Add('Os lados informados devem ser maiores que zero');
    Exit;
  end;

  if (Lado1 + Lado2 < Lado3) or (Lado1 + Lado3 < Lado2) or (Lado2 + Lado3 < Lado1) then
  begin
    Resultado.Lines.Add('Lados não formam um triângulo válido');
    Exit;
  end;

  if (Lado1 = Lado2) and (Lado2 = Lado3) then
    Resultado.Lines.Add('Triângulo equilátero')
  else if (Lado1 = Lado2) or (Lado1 = Lado3) or (Lado2 = Lado3) then
    Resultado.Lines.Add('Triângulo isósceles')
  else
    Resultado.Lines.Add('Triângulo escaleno');
end;

end.
