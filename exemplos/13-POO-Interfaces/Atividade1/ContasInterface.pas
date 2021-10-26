unit ContasInterface;

{
Crie uma classe Conta que possua m�todos p�blicos (virtual) para
as opera��es de saque, dep�sito e consulta de saldo. Em seguida
crie outras duas classes, ContaCorrente e ContaPoupanca que herdam
da classe Conta. Sobrescreva (override) o m�todo de saque da classe
ContaCorrente pois dever� adicionalmente realizar um desconto de
imposto no saldo referente a 1% do valor sacado toda vez que um
saque for realizado. O limite de saque da classe ContaCorrente �
de 1000 reais por opera��o. Para a classe ContaPoupanca sobrescreva
(override) o m�todo de saque n�o permitindo realizar nenhum tipo de
desconto de imposto na opera��o de saque, no entanto o limite de
saque ser� de apenas 500 reais por opera��o. Na classe ContaPoupanca
sobrescreva (override) a opera��o de dep�sito permitindo somente
opera��es com valores superiores � 200 reais.
}

interface

type
  IConta = interface
  ['{81A96EC1-57EA-4F0B-A784-A90258DC56A0}']
    function Deposito(Valor: Double; out Msg: string): Boolean;
    function Saque(Valor: Double; out Msg: string): Boolean;
    function Saldo: Double;
  end;

  TConta = class(TInterfacedObject, IConta)
  private
    FSaldo: Double;
  public
    constructor Create(ASaldo: Double);
    function Deposito(Valor: Double; out Msg: string): Boolean; virtual;
    function Saque(Valor: Double; out Msg: string): Boolean; virtual;
    function Saldo: Double;
  end;

  TContaCorrente = class(TConta)
  public
    function Saque(Valor: Double; out Msg: string): Boolean; override;
  end;

  TContaPoupanca = class(TConta)
  public
    function Deposito(Valor: Double; out Msg: string): Boolean; override;
    function Saque(Valor: Double; out Msg: string): Boolean; override;
  end;

implementation

uses
  SysUtils;

{ TConta }

constructor TConta.Create(ASaldo: Double);
begin
  FSaldo := ASaldo;
end;

function TConta.Deposito(Valor: Double; out Msg: string): Boolean;
begin
  FSaldo := FSaldo + Valor;
  Result := True;
end;

function TConta.Saque(Valor: Double; out Msg: string): Boolean;
begin
  Result := False;
  if Valor <= FSaldo then
  begin
    FSaldo := FSaldo - Valor;
    Result := True;
  end
  else
    Msg := 'Saldo insuficiente.';
end;

function TConta.Saldo: Double;
begin
  Result := FSaldo;
end;

{ TContaCorrente }

function TContaCorrente.Saque(Valor: Double; out Msg: string): Boolean;
var
  ValorComTaxa: Double;
begin
  //inherited;
  Result := False;
  ValorComTaxa := Valor + (Valor * 0.01); //Taxa de 1%
  if (FSaldo < ValorComTaxa) then
  begin
    Msg := 'Saldo insuficiente';
    Exit;
  end;

  if Valor <= 1000 then
  begin
    FSaldo := FSaldo - ValorComTaxa;
    Result := True;
  end
  else
    Msg := 'Limite para saque de R$ 1.000,00';
end;

{ TContaPoupanca }

function TContaPoupanca.Deposito(Valor: Double; out Msg: string): Boolean;
begin
  //inherited;
  Result := False;
  if Valor > 200 then
  begin
    FSaldo := FSaldo + Valor;
    Result := True;
  end
  else
    Msg := 'Valor m�nimo para dep�sito de R$ 200,00';
end;

function TContaPoupanca.Saque(Valor: Double; out Msg: string): Boolean;
begin
  //inherited;
  Result := False;
  if (FSaldo < Valor) then
  begin
    Msg := 'Saldo insuficiente.';
    Exit;
  end;

  if (Valor <= 500) then
  begin
    FSaldo := FSaldo - Valor;
    Result := True;
  end
  else
    Msg := 'Limite para saque de R$ 500,00';
end;

end.
