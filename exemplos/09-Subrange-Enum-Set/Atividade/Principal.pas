unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
Criar um tipo enum.
Criar um set de enum's e atribuir alguns valores.
Criar uma constante com as descrições.
Imprimir no tmemo as descrições dos enum's atribuídos.
}

type
  TMeuEnum = (Enum1, Enum2, Enum3, Enum4, Enum5);
  TSetMeuEnum = set of TMeuEnum;

const
  TMeuEnumNames: array[TMeuEnum] of string = ('Opção 1', 'Opção 2', 'Opção 3', 'Opção 4', 'Opção 5');

procedure TForm1.Button1Click(Sender: TObject);
var
  Enums: TSetMeuEnum;
  Enum: TMeuEnum;
begin
  Enums := [Enum1, Enum3];
  Enums := Enums + [Enum5];
  Memo1.Clear;
  for Enum in Enums do
    Memo1.Lines.Add(TMeuEnumNames[Enum]);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Enum: TMeuEnum;
begin
  Memo1.Clear;
  for Enum := Low(TMeuEnum) to High(TMeuEnum) do
    Memo1.Lines.Add(TMeuEnumNames[Enum]);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Enums: TSetMeuEnum;
  Enum: TMeuEnum;
begin
  Enums := [Enum1, Enum3];
  Enums := Enums + [Enum5];
  Memo1.Clear;
  for Enum in Enums do //TMeuEnum
    Memo1.Lines.Add(TMeuEnumNames[Enum]);
end;

end.
