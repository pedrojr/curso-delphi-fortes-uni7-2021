unit AttributeTests;

interface

uses
  Attributes;

type
  [AttrTable('T_PES')]
  TPessoa2 = class
  strict private
    FCodigo: Integer;
    FNome: string;
    FEndereco: string;
    FEmail: string;
  public
    constructor Create(const pCodigo: Integer; const pNome, pEndereco, pEmail: string);
    [AttrPrimary]
    [AttrField('COD_PES', 'Código')]
    property Codigo: Integer read FCodigo write FCodigo;
    [AttrField('NOM_PES')]
    property Nome: string read FNome write FNome;
    [AttrField('END_PES', 'Endereço')]
    property Endereco: string read FEndereco write FEndereco;
    [AttrField('EML_PES', 'E-Mail')]
    property Email: string read FEmail write FEmail;
  end;

implementation

{ TPessoa2 }

constructor TPessoa2.Create(const pCodigo: Integer; const pNome, pEndereco,
  pEmail: string);
begin
  FCodigo := pCodigo;
  FNome := pNome;
  FEndereco := pEndereco;
  FEmail := pEmail;
end;

end.
