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
Escreva uma aplica��o que recebe como entrada tr�s n�meros inteiros
maiores que zero que representam os lados de um tri�ngulo e que deve
retornar como resposta que tipo de tri�ngulo � aquele. Caso os valores
informados n�o sejam de um tri�ngulo v�lido, por exemplo quando a soma
de dois lados � menor que o terceiro, a fun��o deve informar isso para
o usu�rio.
Equil�tero - Possui tr�s lados iguais
Is�sceles - Possui dois lados iguais
Escaleno - Possui todos os tr�s lados diferentes
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
    Resultado.Lines.Add('Lados n�o formam um tri�ngulo v�lido');
    Exit;
  end;

  if (Lado1 = Lado2) and (Lado2 = Lado3) then
    Resultado.Lines.Add('Tri�ngulo equil�tero')
  else if (Lado1 = Lado2) or (Lado1 = Lado3) or (Lado2 = Lado3) then
    Resultado.Lines.Add('Tri�ngulo is�sceles')
  else
    Resultado.Lines.Add('Tri�ngulo escaleno');
end;

end.
