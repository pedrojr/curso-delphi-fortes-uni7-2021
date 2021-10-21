unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BtnTeste: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure BtnTesteClick(Sender: TObject);
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

uses
  MinhasClasses;

{$R *.dfm}

procedure TForm1.BtnTesteClick(Sender: TObject);
var
  Cliente: TCliente;
begin
  Cliente := TCliente.Create;
  Cliente.Codigo := 123;
  Cliente.Nome := 'Teste';
  Cliente.Contato := '1234567890';
  Cliente.Renda := 1000;
  Memo1.Lines.Text := Cliente.Nome +'|'+ Cliente.Contato;
  Cliente.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Venda: TVenda;
begin
  Venda := nil;
  try
    Venda := TVenda.Create;
    Venda.ValorTotal := 150.00;
    Venda.Desconto := 15.00;
    Memo1.Clear;
    Memo1.Lines.Add('ValorTotal: 150.00');
    Memo1.Lines.Add('Desconto: 15.00');
    Memo1.Lines.Add('ValorLiquido: '+ FloatToStr(Venda.ValorLiquido));
  finally
    Venda.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Pessoa1: TPessoaFisica;
  Pessoa2: TPessoaJuridica;
begin
  Pessoa1 := nil;
  Pessoa2 := nil;
  try
    Pessoa1 := TPessoaFisica.Create;
    Pessoa1.Nome := 'PessoaF';
    Pessoa1.CPF := '12345678901';

    Pessoa2 := TPessoaJuridica.Create;
    Pessoa2.Nome := 'PessoaJ';
    Pessoa2.CNPJ := '12345678902';

    Memo1.Clear;
    Memo1.Lines.Add(Pessoa1.Nome +' - '+ Pessoa1.CPF);
    Memo1.Lines.Add(Pessoa2.Nome +' - '+ Pessoa2.CNPJ);
  finally
    Pessoa1.Free;
    Pessoa2.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Pessoa: TPessoa;
  P: TPessoaFisica;
begin
  Pessoa := nil;
  try
    Pessoa := TPessoaFisica.Create;

    if Pessoa is TPessoaFisica then
    begin
      Memo1.Clear;
      P := (Pessoa as TPessoaFisica);
      P.CPF := '123456';
      Memo1.Lines.Add(P.CPF);
    end;
  finally
    Pessoa.Free;
  end;
end;

end.
