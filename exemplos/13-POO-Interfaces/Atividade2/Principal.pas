unit Principal;

{
Empresas de Ônibus costumam realizar a troca da Banda de Rodagem de
um Pneu Novo depois que o mesmo fica “careca”. Este tipo de procedimento
dá ao pneu restaurado uma nova “vida” e tal procedimento costuma a ser
realizado para um mesmo pneu até 5 vezes. Escreva uma classe chamada Vida
Pneu que armazene a quilometragem já percorrida naquela vida e crie métodos
para escrita e leitura dessa quilometragem. Em seguida crie uma classe
chamada Pneu que armazene o número identificador daquele pneu e a
quantidade de vidas que ele possui. Esse identificador e a quantidade de vidas
deve ser informado no método construtor da classe. Crie também, para a
classe Pneu, um método que seja capaz de identificar quantas vidas ele possui
e um outro que retorne a quilometragem total percorrida (soma das
quilometragens de todas as vidas).
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Log: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Pneu, PneuIntf;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Pneu: TPneu;
begin
  Pneu := nil;
  try
    Pneu := TPneu.Create('123456');
    Pneu.AdicionarVida(15000);
    Pneu.AdicionarVida(35000);
    Pneu.AdicionarVida(48000);
    Pneu.AdicionarVida(59000);
    Pneu.AdicionarVida(21000);

    Log.Clear;
    Log.Lines.Add('Pneu: '+ Pneu.Numero);
    Log.Lines.Add('QtdeKmAtual: '+ IntToStr(Pneu.QtdeKmAtual));
    Log.Lines.Add('QtdeDeVidas: '+ IntToStr(Pneu.QtdeDeVidas));
  finally
    Pneu.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Pneu: TPneu2;
begin
  Pneu := nil;
  try
    Pneu := TPneu2.Create('123456');
    Pneu.AdicionarVida(15000);
    Pneu.AdicionarVida(35000);
    Pneu.AdicionarVida(48000);
    Pneu.AdicionarVida(59000);
    Pneu.AdicionarVida(21000);

    Log.Clear;
    Log.Lines.Add('Pneu: '+ Pneu.Numero);
    Log.Lines.Add('QtdeKmAtual: '+ IntToStr(Pneu.QtdeKmAtual));
    Log.Lines.Add('QtdeDeVidas: '+ IntToStr(Pneu.QtdeDeVidas));

    Pneu.AdicionarVida(31500);
  finally
    Pneu.Free;
  end;
end;

end.
