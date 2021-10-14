unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    MemResultado: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  StrUtils;

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  MemResultado.Clear;
  for I := 1 to 10 do
  begin
    MemResultado.Lines.Add(IntToStr(I));
    //...
  end;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  MemResultado.Clear;
  for I := 10 downto 1 do
    MemResultado.Lines.Add(IntToStr(I));
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
var
  Linha, Conteudo: string;
begin
  if Trim(MemResultado.Text) = '' then
    Exit;

  Conteudo := '';
  for Linha in MemResultado.Lines do
  begin
    if Linha <> '' then
      Conteudo := Conteudo + IfThen(Conteudo <> '', ',') + Linha;
  end;
  ShowMessage(Conteudo);
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
var
  I: Integer;
begin
  I := 1;
  MemResultado.Clear;
  while (I < 11) do
  begin
    MemResultado.Lines.Add(IntToStr(I));
    Inc(I);
  end;
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
var
  I: Integer;
begin
  I := 1;
  MemResultado.Clear;
  repeat
    MemResultado.Lines.Add(IntToStr(I));
    Inc(I);
  until (I > 10);
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
var
  I: Integer;
begin
  I := 1;
  MemResultado.Clear;
  repeat
    MemResultado.Lines.Add(IntToStr(I));
    Inc(I);
    if I > 5 then
      Break;
  until (I > 10);
end;

procedure TFrmPrincipal.Button7Click(Sender: TObject);
var
  I: Integer;
begin
  I := 1;
  MemResultado.Clear;
  repeat
    if (I mod 2 = 0) then
    begin
      Inc(I);
      Continue;
    end;
    MemResultado.Lines.Add(IntToStr(I));
    Inc(I);
  until (I > 10);
end;

end.
