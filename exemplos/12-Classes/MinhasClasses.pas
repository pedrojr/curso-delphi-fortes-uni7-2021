unit MinhasClasses;

interface

uses
  Classes;

type
  TCliente = class
  strict private
    FCodigo: Integer;
    FNome: string;
    FContato: string;
    FRenda: Double;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Contato: string read FContato write FContato;
    property Renda: Double read FRenda write FRenda;
  end;

  TVenda = class
  private
    FValorTotal: Double;
    FDesconto: Double;
    function GetValorLiquido: Double;
  public
    property ValorTotal: Double read FValorTotal write FValorTotal;
    property Desconto: Double read FDesconto write FDesconto;
    property ValorLiquido: Double read GetValorLiquido;
  end;

  TPessoa = class
  private
    FNome: string;
    ///.
  public
    property Nome: string read FNome write FNome;
    //...
  end;

  TPessoaFisica = class(TPessoa) //Herança
  private
    FCPF: string;
  public
    property CPF: string read FCPF write FCPF;
  end;

  TPessoaJuridica = class(TPessoa)
  private
    FCNPJ: string;
    //...
  public
    property CNPJ: string read FCNPJ write FCNPJ;
    //...
  end;

//------------------------------------------------------------------------------

type
  TClasseTeste2 = class;

  TClasseTeste1 = class
    T2: TClasseTeste2;
  end;

  TClasseTeste2 = class
    //+
  end;

//------------------------------------------------------------------------------

type
  TComissao = class
  public
    function Calcula: Double; virtual; //dynamic;
  end;

  TComissaoRegraA = class(TComissao)
  public
    function Calcula: Double; override;
  end;

  TComissaoRegraB = class(TComissao)
  public
    function Calcula: Double; override;
  end;

implementation

{ TVenda }

function TVenda.GetValorLiquido: Double;
begin
  Result := FValorTotal - FDesconto;
end;

{ TComissao }

function TComissao.Calcula: Double;
begin
  Result := 10;
end;

{ TComissaoRegraA }

function TComissaoRegraA.Calcula: Double;
begin
  Result := 12;
end;

{ TComissaoRegraB }

function TComissaoRegraB.Calcula: Double;
begin
  Result := 15;
end;

end.
