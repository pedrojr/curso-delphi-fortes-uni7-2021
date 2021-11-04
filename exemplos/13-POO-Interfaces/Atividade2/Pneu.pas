unit Pneu;

interface

type
  TVida = class
  private
    FKm: Integer;
  public
    constructor Create(AKm: Integer);
    function KmAtual: Integer;
  end;

  TPneu = class
  private
    FNumero: string;
    FVidas: array of TVida;
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

{ TVida }

constructor TVida.Create(AKm: Integer);
begin
  FKm := AKm;
end;

function TVida.KmAtual: Integer;
begin
  Result := FKm;
end;

{ TPneu }

constructor TPneu.Create(ANumero: string);
begin
  SetLength(FVidas, 0);
  FNumero := ANumero;
end;

destructor TPneu.Destroy;
var
  I: Integer;
begin
  for I := Low(FVidas) to High(FVidas) do
    FVidas[I].Free;
  SetLength(FVidas, 0);
  inherited;
end;

procedure TPneu.AdicionarVida(AKm: Integer);
begin
  if Length(FVidas) >= 5 then
    raise Exception.Create('Limite de vidas atingido');

  SetLength(FVidas, Length(FVidas) + 1);
  FVidas[High(FVidas)] := TVida.Create(AKm);
end;

function TPneu.QtdeKmAtual: Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := Low(FVidas) to High(FVidas) do
    Result := Result + FVidas[I].KmAtual;
end;

function TPneu.QtdeDeVidas: Integer;
begin
  Result := Length(FVidas);
end;

end.
