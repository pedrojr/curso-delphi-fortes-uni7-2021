unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

//Coment�rio de uma linha

{
V�rias
linhas
}

(*
V�rias
linhas
*)

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ShowMessage(�Pal�ndromo('arara'));
end;

end.
