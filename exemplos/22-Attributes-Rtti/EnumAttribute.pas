unit EnumAttribute;

interface

uses
  Generics.Collections;

type
  TEnumAttribute = class(TCustomAttribute)
  private
    FDict: TDictionary<Integer, string>;
  	procedure AddArgs(const Values: string; KeyValue: Boolean);
  public
    constructor Create(const Values: string; KeyValue: Boolean = False);
    destructor Destroy; override;
    function GetCaption(Value: Integer): string;
  end;

  TEnum<T: record> = class
  public
    class function GetLabel(const Enum: T): string;
  end;

implementation

uses
  SysUtils, Classes, Rtti;

{ TEnumAttribute }

constructor TEnumAttribute.Create(const Values: string; KeyValue: Boolean);
begin
  FDict := TDictionary<Integer, string>.Create;
  AddArgs(Values, KeyValue);
end;

procedure TEnumAttribute.AddArgs(const Values: string; KeyValue: Boolean);
var
  I, Key: Integer;
  Value: string;
  List: TStringList;
begin
  List := TStringList.Create;
  try
    List.Delimiter := ';';
    List.StrictDelimiter := True;
    List.DelimitedText := Values;
    for I := 0 to List.Count -1 do
    begin
      if KeyValue then
      begin
        Key := StrToInt(Copy(List[I], 1, Pos(':', List[I])));
        Value := Copy(List[I], Pos(':', List[I]), Length(List[I]));
      end
      else
      begin
        Key := I;
        Value := List[I];
      end;
      FDict.AddOrSetValue(Key, Value);
    end;
  finally
    List.Free;
  end;
end;

destructor TEnumAttribute.Destroy;
begin
  FDict.Free;
  inherited;
end;

function TEnumAttribute.GetCaption(Value: Integer): string;
begin
  if FDict.ContainsKey(Value) then
    Result := FDict.Items[Value];
end;

{ TEnumLabels<T> }

class function TEnum<T>.GetLabel(const Enum: T): string;
type
  TEnumeration = 0..255;
var
  vContext: TRttiContext;
  vType: TRttiType;
  vAttr: TCustomAttribute;
  vPoint: PInteger;
begin
  Result := '';
  vContext := TRttiContext.Create;
  try
    vType := vContext.GetType(TypeInfo(T));
    if Assigned(vType) then
    begin
      for vAttr in vType.GetAttributes do
      begin
        if vAttr is TEnumAttribute then
        begin
          vPoint := @Enum;
          Result := TEnumAttribute(vAttr).GetCaption(Integer(TEnumeration(vPoint^)));
        end;
      end;
    end;
  finally
    vContext.Free;
  end;
end;

end.
