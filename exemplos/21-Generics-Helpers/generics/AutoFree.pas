unit AutoFree;

interface

uses
  Generics.Collections;

type
  TAutoFree<T: class> = class(TInterfacedObject, IUnknown)
  private
    FObject: T;
  public
    constructor Create(AObject: T);
    destructor Destroy(); override;
    class function Add(AObject: T): IUnknown;
  end;

implementation

{ TAutoFree<T> }

constructor TAutoFree<T>.Create(AObject: T);
begin
  FObject := AObject;
end;

destructor TAutoFree<T>.Destroy;
begin
  FObject.Free;
  inherited;
end;

class function TAutoFree<T>.Add(AObject: T): IUnknown;
begin
  Result := TAutoFree<T>.Create(AObject);
end;

end.
