unit PneuIntf;

interface

type
  IVida2 = interface
    ['{06195218-9E82-4560-B159-CEF50B129196}']
    function KmAtual: Integer;
  end;

  TVida2 = class(TInterfacedObject, IVida2)
  private
    FKm: Integer;
  public
    constructor Create(AKm: Integer);
    function KmAtual: Integer;
  end;

  TPneu2 = class
  private
    FNumero: string;
    FVidas: array of IVida2;
  public
    constructor Create(ANumero: string);
    destructor Destroy; override;
    procedure AdicionarVida(AKm: Integer);
    function QtdeKmAtual: Integer;
    function QtdeDeVidas: Integer;
    property Numero: string read FNumero;
  end;

implementation

uses
  SysUtils;

{ TVida2 }

constructor TVida2.Create(AKm: Integer);
begin
  FKm := AKm;
end;

function TVida2.KmAtual: Integer;
begin
  Result := FKm;
end;

{ TPneu2 }

constructor TPneu2.Create(ANumero: string);
begin
  SetLength(FVidas, 0);
  FNumero := ANumero;
end;

destructor TPneu2.Destroy;
begin
  SetLength(FVidas, 0);
  inherited;
end;

procedure TPneu2.AdicionarVida(AKm: Integer);
begin
  if Length(FVidas) >= 5 then
    raise Exception.Create('Limite de vidas atingido');

  SetLength(FVidas, Length(FVidas) + 1);
  FVidas[High(FVidas)] := TVida2.Create(AKm);
end;

function TPneu2.QtdeKmAtual: Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := Low(FVidas) to High(FVidas) do
    Result := Result + FVidas[I].KmAtual;
end;

function TPneu2.QtdeDeVidas: Integer;
begin
  Result := Length(FVidas);
end;

end.
