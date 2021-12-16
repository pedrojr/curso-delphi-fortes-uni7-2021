unit RttiTests;

interface

uses
  Rtti, Classes, SysUtils;

type
{$M+} //Ou {$TYPEINFO ON} / {$TYPEINFO OFF}
  TPessoa = class(TObject)
  strict private
    FCodigo: Integer;
    FNome: string;
    FEndereco: string;
    FEmail: string;
  public
    Id: Integer;
    SobreNome: string;
    constructor Create(const pCodigo: Integer; const pNome, pEndereco, pEmail: string);
    procedure SetSobreNome(const pSobreNome: string);
    function GetEmail: string;
  published //D7
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: string read FNome write FNome;
    property Endereco: string read FEndereco write FEndereco;
    property Email: string read FEmail write FEmail;
  end;
{$M-}

  TRttiTests = class
    class procedure GetFields(AStrList: TStrings);
    class procedure GetProperties(AStrList: TStrings);
    class procedure GetMethods(AStrList: TStrings);
    class procedure InvokeMethod(AStrList: TStrings);
    class procedure GetAttributes(AStrList: TStrings);
  end;

implementation

uses
  Attributes, AttributeTests;

{ TPessoa }

constructor TPessoa.Create(const pCodigo: Integer; const pNome, pEndereco,
  pEmail: string);
begin
  FCodigo := pCodigo;
  FNome := pNome;
  FEndereco := pEndereco;
  FEmail := pEmail;
end;

function TPessoa.GetEmail: string;
begin
  Result := FEmail;
end;

procedure TPessoa.SetSobreNome(const pSobreNome: string);
begin
  SobreNome := pSobreNome;
end;

function GetPessoa: TPessoa;
begin
  Result := TPessoa.Create(1,'Jose da Silva','Rua Abc, 100','jsilva@bol.com.br');
end;

function GetPessoa2: TPessoa2;
begin
  Result := TPessoa2.Create(1,'Jose da Silva','Rua Abc, 100','jsilva@bol.com.br');
end;

{ TRttiTests }

class procedure TRttiTests.GetFields(AStrList: TStrings);
var
  vCtx: TRttiContext;
  vTyp: TRttiType;
  vFie: TRttiField;
begin
  AStrList.Clear;
  vCtx := TRttiContext.Create;
  try
    vTyp := vCtx.GetType(TPessoa);

    for vFie in vTyp.GetFields do
      AStrList.Add(vFie.Name +' - '+ vFie.FieldType.ToString);
    AStrList.Add('');

    //busca direta por um field específico
    vFie := vTyp.GetField('FEnd');
    if vFie = nil then
      AStrList.Add('FEnd não encontrado')
  finally
    vCtx.Free;
  end;
end;

class procedure TRttiTests.GetProperties(AStrList: TStrings);
var
  vCtx: TRttiContext;
  vTyp: TRttiType;
  vPro: TRttiProperty;
  vPes: TPessoa;
begin
  AStrList.Clear;
  vCtx := TRttiContext.Create;
  vPes := GetPessoa;
  try
    vTyp := vCtx.GetType(TPessoa);
    for vPro in vTyp.GetProperties do
      AStrList.Add(vPro.Name +': '+ vPro.PropertyType.ToString);

    AStrList.Add('');
    vPro := vTyp.GetProperty('Apelido');
    if vPro = nil then
      AStrList.Add('"Apelido" não encontrado');

    AStrList.Add('');
    vPro := vTyp.GetProperty('Nome');
    vPro.SetValue(vPes, 'Jose Pereira da Silva');
    AStrList.Add('Nome Atual: '+ vPro.GetValue(vPes).ToString);
  finally
    vCtx.Free;
    vPes.Free;
  end;
end;

class procedure TRttiTests.GetMethods(AStrList: TStrings);
var
  vCtx: TRttiContext;
  vTyp: TRttiType;
  vMet: TRttiMethod;
begin
  AStrList.Clear;
  vCtx := TRttiContext.Create;
  try
    vTyp := vCtx.GetType(TPessoa);
    for vMet in vTyp.GetMethods do
      AStrList.Add(vMet.Name);

    AStrList.Add('');
    vMet := vTyp.GetMethod('Close');
    if vMet = nil then
      AStrList.Add('"Close" não encontrado');
  finally
    vCtx.Free;
  end;
end;

class procedure TRttiTests.InvokeMethod(AStrList: TStrings);
var
  vCtx: TRttiContext;
  vTyp: TRttiType;
  vMet: TRttiMethod;
  vPar: array of TValue;
  vPes: TPessoa;
begin
  AStrList.Clear;
  vCtx := TRttiContext.Create;
  vPes := GetPessoa;
  try
    vTyp := vCtx.GetType(TPessoa);
    AStrList.Add('SobreNome antes: '+ QuotedStr(vPes.SobreNome));

    vMet  := vTyp.GetMethod('setsobrenome');
    SetLength(vPar, 1);
    vPar[0] := 'Silva';
    vMet.Invoke(vPes, ['Silva']); //vPar
    AStrList.Add('SobreNome atual: '+ QuotedStr(vPes.SobreNome));

    AStrList.Add('');
    vMet  := vTyp.GetMethod('GETEMAIL');
    AStrList.Add('GetEmail: '+
      vMet.Invoke(vPes, []).AsString
    );
  finally
    vCtx.Free;
    vPes.Free;
  end;
end;

class procedure TRttiTests.GetAttributes(AStrList: TStrings);
var
  vCtx: TRttiContext;
  vTyp: TRttiType;
  vPro: TRttiProperty;
  vAtr: TCustomAttribute;
begin
  AStrList.Clear;
  vCtx  := TRttiContext.Create;
  try
    vTyp := vCtx.GetType(TPessoa2);

    AStrList.Add('TPessoa2');
    for vAtr in vTyp.GetAttributes do
      AStrList.Add(' '+ vAtr.ClassName +': '+ (vAtr as AttrTable).TableName);

    AStrList.Add('');
    for vPro in vTyp.GetProperties do
    begin
      AStrList.Add(vPro.Name);
      for vAtr in vPro.GetAttributes do
      begin
        if (vAtr is AttrField) then
          AStrList.Add(' '+
            vATr.ClassName +': '+
            (vAtr as AttrField).FieldName +' - '+
            (vAtr as AttrField).DisplayLabel
          )
        else
          AStrList.Add(' '+ vATr.ClassName);
      end;
    end;
  finally
    vCtx.Free;
  end;
end;

end.
