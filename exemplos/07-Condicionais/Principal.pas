unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    MemResultado: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
  Opcao: Integer;
begin
  Opcao := 4;
  MemResultado.Clear;
  case Opcao of
    1:
    begin
      MemResultado.Lines.Add('Opção 1');
      MemResultado.Lines.Add('...');
    end;
    2: MemResultado.Lines.Add('Opção 2');
    3: MemResultado.Lines.Add('Opção 3');
    4,5,6: MemResultado.Lines.Add('Opção 4,5,6');
    7..11: MemResultado.Lines.Add('Opção 7..11');
  end;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  MemResultado.Clear;
  case AnsiIndexStr('D', ['A', 'B','C']) of
    0: MemResultado.Lines.Add('A');
    1: MemResultado.Lines.Add('B');
    2: MemResultado.Lines.Add('C');
  else
    MemResultado.Lines.Add('else');
  end;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
const
  Letra = 'D';
begin
  if Letra = 'A' then
    MemResultado.Lines.Add('A')
  else if Letra = 'B' then
    MemResultado.Lines.Add('B')
  else if Letra = 'C' then
    MemResultado.Lines.Add('C')
  else
    MemResultado.Lines.Add('else');
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
const
  Idade = 21;
begin
  MemResultado.Clear;
  if Idade = 18 then
    if Idade = 21 then
      MemResultado.Lines.Add('21')
    else
      MemResultado.Lines.Add('else');
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
const
  Idade = 21;
begin
  MemResultado.Clear;

  if (Idade = 18) and (Idade = 21) then
    MemResultado.Lines.Add('18 e 21');

  if not (Idade = 18) then
    MemResultado.Lines.Add('not 18');

  if (Idade = 18) or (Idade = 21) then
    MemResultado.Lines.Add('18 ou 21');

  if ('X' = 'Y') and ((Idade = 18) or (Idade = 21)) then
    MemResultado.Lines.Add('18-21');
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
const
  Idade = 21;
begin
  MemResultado.Clear;

  if (Idade > 21)then
    MemResultado.Lines.Add('> 21');

  if (Idade >= 21)then
    MemResultado.Lines.Add('>= 21');

  if (Idade < 21)then
    MemResultado.Lines.Add('< 21');

  if (Idade <= 21)then
    MemResultado.Lines.Add('<= 21');

  if (Idade <> 20)then
    MemResultado.Lines.Add('<> 20');

  if (Idade >= 18) and (Idade <= 30) then
    MemResultado.Lines.Add('18-30');

  if (Idade in [18,19,20,21]) then
    MemResultado.Lines.Add('in ok');
end;

end.
