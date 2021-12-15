unit GenericsObjectList;

interface

uses
  Types, Classes, Generics.Collections, Contnrs, Objetos;

type
  TPessoas = class(TObjectList<TPessoa>);

  TPessoastD7 = class(TObjectList)
  private
    function GetItem(Index: Integer): TPessoa;
    procedure SetItem(Index: Integer; Obj: TPessoa);
  public
    constructor Create;
    procedure Insert(Index: Integer; Obj: TPessoa);
    function Add(Obj: TPessoa): Integer;
    function IndexOf(Obj: TPessoa): Integer;
    function Remove(Obj: TPessoa): Integer;
    property Items[Index: Integer]: TPessoa read GetItem write SetItem; default;
  end;

implementation

{ TPessoastD7 }

constructor TPessoastD7.Create;
begin
  inherited Create;
  OwnsObjects := True;
end;

procedure TPessoastD7.Insert(Index: Integer; Obj: TPessoa);
begin
  inherited Insert(Index, Obj);
end;

function TPessoastD7.Add(Obj: TPessoa): Integer;
begin
  Result := inherited Add(Obj);
end;

function TPessoastD7.IndexOf(Obj: TPessoa): Integer;
begin
  Result := inherited IndexOf(Obj);
end;

function TPessoastD7.Remove(Obj: TPessoa): Integer;
begin
  Result := inherited Remove(Obj);
end;

function TPessoastD7.GetItem(Index: Integer): TPessoa;
begin
  Result := TPessoa(inherited Items[Index]);
end;

procedure TPessoastD7.SetItem(Index: Integer; Obj: TPessoa);
begin
  inherited Items[Index] := Obj;
end;

end.
