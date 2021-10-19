unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    Resultado: TMemo;
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
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Record3;

type
  RCliente = record
    Codigo: Integer;
    Nome: string;
    Contato: string;
    Renda: Double;
  end;

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
  Cliente: RCliente;
begin
  Cliente.Codigo := 1;
  Cliente.Nome := 'Cliente 1';
  Cliente.Contato := '123456789';
  Resultado.Clear;
  Resultado.Lines.Add('Cliente: '+ IntToStr(Cliente.Codigo) +
    ' - '+ Cliente.Nome +', '+ Cliente.Contato);
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
var
  Cliente: RCliente;
begin
  Initialize(Cliente);
  FillChar(Cliente, SizeOf(Cliente), 0);
  Cliente.Codigo := 1000;
  Cliente.Nome := 'Cliente Abc';
  Cliente.Contato := '85123456789';
  Resultado.Clear;
  Resultado.Lines.Add('Cliente: '+ IntToStr(Cliente.Codigo) +
    ' - '+ Cliente.Nome +', '+ Cliente.Contato);
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
var
  Venda: RVenda;
begin
  Venda.Valor := 150.00;
  Venda.Desconto := 15.00;
  Resultado.Clear;
  Resultado.Lines.Add('Total: '+ FloatToStr(Venda.Valor));
  Resultado.Lines.Add('Desconto: '+ FloatToStr(Venda.Desconto));
  Resultado.Lines.Add('Valor: '+ FloatToStr(Venda.ValorLiquido));
end;

end.
