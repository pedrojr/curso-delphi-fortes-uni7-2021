unit MinhasInterfaces;

interface

type
  ITeste = interface
    ['{5E4A0156-4581-4F0B-8F70-4AB727538283}'] //Ctrl + Shift + G
    function Ok: Boolean;
  end;

  TTeste = class(TInterfacedObject, ITeste)
  public
    function Ok: Boolean;
    //+
  end;

  TTeste2 = class(TInterfacedObject, ITeste)
  private
    FTeste: TTeste;
  public
    constructor Create;
    destructor Destroy; override;
    //Delegating to an interface-Type property
    //https://docwiki.embarcadero.com/RADStudio/Alexandria/en/Implementing_Interfaces
    property Teste: TTeste read FTeste implements ITeste;
  end;

implementation

{ TTeste }

function TTeste.Ok: Boolean;
begin
  Result := True;
end;

{ TTeste2 }

constructor TTeste2.Create;
begin
  FTeste := TTeste.Create;
end;

destructor TTeste2.Destroy;
begin
  FTeste.Free;
  inherited;
end;

end.
