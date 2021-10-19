unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    Resultado: TMemo;
    BtnSubrange: TButton;
    BtnEnum1: TButton;
    BtnEnum2: TButton;
    BtnSet: TButton;
    BtnUnnamed: TButton;
    procedure BtnSubrangeClick(Sender: TObject);
    procedure BtnEnum1Click(Sender: TObject);
    procedure BtnEnum2Click(Sender: TObject);
    procedure BtnSetClick(Sender: TObject);
    procedure BtnUnnamedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Enum1, Enum2;

{$R *.dfm}

{Subrange Types
type
  TNotas = 0..10;
var
  Nota: TNotas;
begin
  Nota := 11; //Erro de compilação
  Nota := 8;
end;
}

procedure TFrmPrincipal.BtnSubrangeClick(Sender: TObject);
type
  TNotas = 0..10;
var
  Nota: TNotas;
  Retorno: string;
begin
  Resultado.Clear;
  Retorno := InputBox('Subrange', 'Informe a nota', '');
  Nota := StrToIntDef(Retorno,0); //Atenção
  Resultado.Lines.Add(IntToStr(Nota));
end;

type
  EDias = (Segunda, Terca, Quarta, Quinta, Sexta, Sabado, Domingo);

const
  EDiasNomes: array [EDias] of string = ('Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo');

procedure TFrmPrincipal.BtnEnum1Click(Sender: TObject);
var
  Dia: EDias;
begin
  Dia := Domingo;
  Resultado.Clear;
  Resultado.Lines.Add(IntToStr(Ord(Dia)));
  Resultado.Lines.Add(EDiasNomes[Dia]);
  Resultado.Lines.Add(IntToStr(Ord(Quinta)));
  Resultado.Lines.Add(EDiasNomes[Quinta]);
end;

procedure TFrmPrincipal.BtnEnum2Click(Sender: TObject);
begin
  //tsOpA
  Resultado.Clear;
  Resultado.Lines.Add(IntToStr(Ord(TEnumTeste2.tsOpA)));
  Resultado.Lines.Add(IntToStr(Ord(TEnumTeste2.tsOpB)));
  Resultado.Lines.Add(IntToStr(Ord(TEnumTeste2.tsOpC)));
  Resultado.Lines.Add(IntToStr(Ord(TEnumTeste2.tsOpD)));
end;

procedure TFrmPrincipal.BtnSetClick(Sender: TObject);
type
  ListaDeDias = set of EDias;
var
  DiasDaSemana: ListaDeDias;
  Dia: EDias;
begin
  DiasDaSemana := [Segunda, Terca, Quarta, Quinta, Sexta];
  Resultado.Clear;
  for Dia in DiasDaSemana do
    Resultado.Lines.Add(IntToStr(Ord(Dia)));
end;

procedure TFrmPrincipal.BtnUnnamedClick(Sender: TObject);
var
  Dias: set of EDias;
  Dia: EDias;
begin
  Dias := [Terca, Quinta, Sabado];
  Resultado.Clear;
  for Dia in Dias do
    Resultado.Lines.Add(EDiasNomes[Dia]);
end;

end.
