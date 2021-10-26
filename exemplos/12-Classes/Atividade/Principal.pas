unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Contas;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  ContaPoupanca: TContaPoupanca;
  MsgRetorno: string;
  I: Integer;
begin
  ContaPoupanca := nil;
  try
    Memo1.Clear;
    ContaPoupanca := TContaPoupanca.Create(800);
    Memo1.Lines.Add('Saldo: '+ FloatToStr(ContaPoupanca.Saldo));
    Memo1.Lines.Add('');

    Memo1.Lines.Add('Deposito(100)');
    if not ContaPoupanca.Deposito(100, MsgRetorno) then
      Memo1.Lines.Add(MsgRetorno);
    Memo1.Lines.Add('');

    Memo1.Lines.Add('Saque(600)');
    if not ContaPoupanca.Saque(600, MsgRetorno) then
      Memo1.Lines.Add(MsgRetorno);
    Memo1.Lines.Add('');

    Memo1.Lines.Add('Deposito(300)');
    if not ContaPoupanca.Deposito(300, MsgRetorno) then
      Memo1.Lines.Add(MsgRetorno);
    Memo1.Lines.Add('Saldo: '+ FloatToStr(ContaPoupanca.Saldo));
    Memo1.Lines.Add('');

    for I := 1 to 3 do
    begin
      Memo1.Lines.Add('Saque(500)');
      if not ContaPoupanca.Saque(500, MsgRetorno) then
        Memo1.Lines.Add(MsgRetorno);
      Memo1.Lines.Add('Saldo: '+ FloatToStr(ContaPoupanca.Saldo));
      Memo1.Lines.Add('');
    end;
  finally
    ContaPoupanca.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  ContaCorrente: TContaCorrente;
  MsgRetorno: string;
  I: Integer;
begin
  ContaCorrente := nil;
  try
    Memo1.Clear;
    ContaCorrente := TContaCorrente.Create(800);
    Memo1.Lines.Add('Saldo: '+ FloatToStr(ContaCorrente.Saldo));
    Memo1.Lines.Add('');

    Memo1.Lines.Add('Deposito(1500)');
    if not ContaCorrente.Deposito(1500, MsgRetorno) then
      Memo1.Lines.Add(MsgRetorno);
    Memo1.Lines.Add('Saldo: '+ FloatToStr(ContaCorrente.Saldo));
    Memo1.Lines.Add('');

    Memo1.Lines.Add('Saque(1100)');
    if not ContaCorrente.Saque(1100, MsgRetorno) then
      Memo1.Lines.Add(MsgRetorno);
    Memo1.Lines.Add('');

    for I := 1 to 3 do
    begin
      Memo1.Lines.Add('Saque(800)');
      if not ContaCorrente.Saque(800, MsgRetorno) then
        Memo1.Lines.Add(MsgRetorno);
      Memo1.Lines.Add('Saldo: '+ FloatToStr(ContaCorrente.Saldo));
      Memo1.Lines.Add('');
    end;
  finally
    ContaCorrente.Free;
  end;
end;

end.
