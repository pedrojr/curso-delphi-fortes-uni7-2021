unit Objetos;

interface

type
  TPessoa = class
  private
    FCodigo: Integer;
    FNome: string;
    FEndereco: string;
    FEmail: string;
  public
    constructor Create(PCodigo: Integer; const PNome, PEndereco, PEmail: string);
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Endereco: string read FEndereco write FEndereco;
    property Email: string read FEmail write FEmail;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create(PCodigo: Integer; const PNome, PEndereco, PEmail: string);
begin
  FCodigo := PCodigo;
  FNome := PNome;
  FEndereco := PEndereco;
  FEmail := PEmail;
end;

end.
