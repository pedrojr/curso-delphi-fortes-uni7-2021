unit Singleton;

interface

uses
  System.Generics.Collections;

type
  TSingleton<T: class, constructor> = class
  strict private
    class var FInstance: T;
  public
    class function GetInstance(): T;
    class procedure FreeInstance(); reintroduce;
  end;

implementation

{ TSingleton<T> }

class procedure TSingleton<T>.FreeInstance;
begin
  if Assigned(Self.FInstance) then
    Self.FInstance.Free;
end;

class function TSingleton<T>.GetInstance: T;
begin
  if not Assigned(Self.FInstance) then
    Self.FInstance := T.Create();
  Result := Self.FInstance;
end;

end.
