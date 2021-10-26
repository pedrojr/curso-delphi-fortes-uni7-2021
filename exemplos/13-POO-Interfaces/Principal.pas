unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Texto: TMemo;
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

uses
  MinhasClasses, MinhasInterfaces;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Teste: ITeste;
begin
  Teste := TTeste2.Create;
  if Teste.Ok then
    Texto.Lines.Add('Ok');
end;

end.
