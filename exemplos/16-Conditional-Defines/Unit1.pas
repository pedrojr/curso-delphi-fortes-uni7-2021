unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{$DEFINE TESTE}
{$UNDEF TESTE}

procedure TForm1.FormCreate(Sender: TObject);
begin
{$IFDEF DEBUG}
  Memo1.Lines.Text := 'DEBUG';
{$ELSE}
  Memo1.Lines.Text := 'RELEASE'
{$ENDIF}
end;

end.
