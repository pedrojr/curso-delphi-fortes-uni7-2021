unit Attributes;

interface

type
  AttrPrimary = class(TCustomAttribute);

  AttrTable = class(TCustomAttribute)
  private
    FTableName: string;
  public
    constructor Create(const ATableName: string); overload;
    property TableName: string read FTableName;
  end;

  AttrField = class(TCustomAttribute)
  private
    FFieldName: string;
    FDisplayLabel: string;
  public
    constructor Create(const AFieldName: string; const ADisplayLabel: string = ''); overload;
    property FieldName: string read FFieldName;
    property DisplayLabel: string read FDisplayLabel;
  end;

implementation

{ AttrTable }

constructor AttrTable.Create(const ATableName: string);
begin
  FTableName := ATableName;
end;

{ AttrField }

constructor AttrField.Create(const AFieldName, ADisplayLabel: string);
begin
  FFieldName := AFieldName;
  FDisplayLabel := ADisplayLabel;
end;

end.
