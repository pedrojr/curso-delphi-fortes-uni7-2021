unit HelpersTest;

interface

type
  TShortIntHelper = record helper for ShortInt
  public
    function AsString: string;
  end;

  TIntegerHelper = record helper for Integer
  public
    function AsString: string;
  end;

  TStringHelper = record Helper for string
  public
    function ToArrayOfInteger: TArray<Integer>;
  end;

implementation

uses
  SysUtils;

{ TShortIntHelper }

function TShortIntHelper.AsString: string;
begin
  Result := IntToStr(Self);
end;

{ TIntegerHelper }

function TIntegerHelper.AsString: string;
begin
  Result := IntToStr(Self);
end;

{ TStringHelper }

function TStringHelper.ToArrayOfInteger: TArray<Integer>;
var
  I: Integer;
  Value: Integer;
begin
  SetLength(Result, 0);
  if Self <> EmptyStr then
  begin
    I := 1;
    repeat
      Value := StrToIntDef(Self[I], -1);
      if Value >= 0 then
      begin
        SetLength(Result, Length(Result) +1);
        Result[High(Result)] := Value;
      end;
      Inc(I);
    until (I > Length(Self));
  end;
end;

end.
