unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    btnArray: TBitBtn;
    btnArraySearch: TBitBtn;
    btnObjectList: TBitBtn;
    btnAutoFree: TBitBtn;
    btnSingleton: TBitBtn;
    Memo: TMemo;
    btnDictionary: TBitBtn;
    btnObjectDictionary: TBitBtn;
    btnStringList: TBitBtn;
    btnStringList2: TBitBtn;
    procedure btnArrayClick(Sender: TObject);
    procedure btnArraySearchClick(Sender: TObject);
    procedure btnObjectListClick(Sender: TObject);
    procedure btnDictionaryClick(Sender: TObject);
    procedure btnSingletonClick(Sender: TObject);
    procedure btnAutoFreeClick(Sender: TObject);
    procedure btnObjectDictionaryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStringListClick(Sender: TObject);
    procedure btnStringList2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  StrUtils, Contnrs, Generics.Defaults, Generics.Collections,
  Objetos, GenericsObjectList, Singleton, SingletonTest,
  AutoFree;

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  StrList: TStringList;
  ObjList: TObjectList;
begin
  StrList := nil;
  ObjList := nil;
  try
    Memo.Clear;

    StrList := TStringList.Create;
    StrList.Add('teste1');
    StrList.Add('teste2');
    Memo.Lines.Add('StrList.Count = '+ IntTOStr(StrList.Count));

    ObjList := TObjectList.Create;
    ObjList.Add(TPessoa.Create(1,'teste1','',''));
    ObjList.Add(TPessoa.Create(2,'teste2','',''));
    ObjList.Add(TPessoa.Create(3,'teste3','',''));
    Memo.Lines.Add('ObjList.Count = '+ IntTOStr(ObjList.Count));
  finally
    StrList.Free;
    ObjList.Free;
  end;
end;

procedure TfrmPrincipal.btnStringListClick(Sender: TObject);
const
  StrTeste = 'i3,i5,i7,i9';
var
  SrtList: TStringList;
  Item: string;
begin
  Memo.Clear;
  SrtList := nil;
  try
    SrtList := TStringList.Create;

    SrtList.Delimiter := ',';
    SrtList.DelimitedText := StrTeste;

    for Item in SrtList do
      Memo.Lines.Add(Item);

    Memo.Lines.Add('');
    Memo.Lines.Add('-------------------');
    Memo.Lines.Add('');

    Memo.Lines.Add(SrtList.Text);
  finally
    SrtList.Free;
  end;
end;


procedure TfrmPrincipal.btnStringList2Click(Sender: TObject);
var
  SrtList: TStringList;
  I: Integer;
begin
  Memo.Clear;
  SrtList := nil;
  try
    SrtList := TStringList.Create;

    SrtList.Values['p1'] := 'v1';
    SrtList.Values['p2'] := 'v2';
    SrtList.Values['p3'] := 'v3';

    for I := 0 to  SrtList.Count -1 do
      Memo.Lines.Add(SrtList.Names[I] +' - '+ SrtList.ValueFromIndex[I]);

    Memo.Lines.Add('');
    Memo.Lines.Add('-------------------');
    Memo.Lines.Add('');

    Memo.Lines.Add(SrtList.Text);
  finally
    SrtList.Free;
  end;
end;

procedure TfrmPrincipal.btnObjectListClick(Sender: TObject);
var
  vPessoas: TPessoas;
  vPessoa, P: TPessoa;
begin
  Memo.Clear;
  vPessoas := TPessoas.Create;
  try
    vPessoas.Add(TPessoa.Create(2, 'Tadeu', 'Rua A', 'tadeu@teste.com.br'));
    vPessoas.Add(TPessoa.Create(3, 'Chico', 'Rua A', 'chico@teste.com.br'));
    P := TPessoa.Create(1, 'Joana', 'Rua A', 'joana@teste.com.br');
    vPessoas.Add(P);

    for vPessoa in vPessoas do
    begin
      Memo.Lines.Add(
        'Código: '+IntToStr(vPessoa.Codigo)+', '+
        'Nome: '+vPessoa.Nome+', '+
        'Endereço: '+vPessoa.Endereco+', '+
        'E-Mail: '+vPessoa.Email);
    end;
  finally
    vPessoas.Free;
  end;
end;

procedure TfrmPrincipal.btnArrayClick(Sender: TObject);
var
  vArray: TArray<string>;
  vItem: string;
begin
  Memo.Clear;
  vArray := TArray<string>.Create('Item 1', 'Item 2', 'Item 3');

  SetLength(vArray, Length(vArray) +1);
  vArray[High(vArray)] := 'Item 4';

  for vItem in vArray do
    Memo.Lines.Add(vItem);
end;

procedure TfrmPrincipal.btnArraySearchClick(Sender: TObject);
var
  vArray: TArray<Integer>;
  vItem: Integer;
  vFoundIndex: Integer;
  vEncontrou: Boolean;
begin
  Memo.Clear;
  vArray := TArray<Integer>.Create(7,5,2,0,9,14,11,1,8,6);

  TArray.Sort<Integer>(vArray);

  for vItem in vArray do
    Memo.Lines.Add(IntToStr(vItem));

  Memo.Lines.Add('');
  vEncontrou := TArray.BinarySearch<Integer>(vArray, 9, vFoundIndex);
  Memo.Lines.Add('Valor 9 '+IfThen(vEncontrou, '', 'não ')+ 'encontrado');
  vEncontrou := TArray.BinarySearch<Integer>(vArray, 15, vFoundIndex);
  Memo.Lines.Add('Valor 15 '+IfThen(vEncontrou, '', 'não ')+ 'encontrado');

//  TArray.Sort()
//  TArray.BinarySearch()
//  TArray.QuickSort()
//  TArray.CheckArrays()
//  TArray.Copy()
end;

procedure TfrmPrincipal.btnDictionaryClick(Sender: TObject);
var
  vDict: TDictionary<Integer,string>;
  vPair: TPair<Integer,string>;
  vKey: Integer;
begin
  Memo.Clear;
  vDict := TDictionary<Integer,string>.Create();
  try
    vDict.Add(1, 'Joana');
    vDict.AddOrSetValue(2, 'Tadeu');
    vDict.AddOrSetValue(3, 'Chico');

    for vKey in vDict.Keys do
      Memo.Lines.Add(vDict.Items[vKey]);

    Memo.Lines.Add('');
    if (vDict.Count > 0) and vDict.ContainsKey(2) then
      Memo.Lines.Add('Encontrado Key: 2 Value: '+ vDict.Items[2]);

    Memo.Lines.Add('');
    vPair := vDict.ExtractPair(3);
    Memo.Lines.Add('ExtractPair '+ IntToStr(vPair.Key) +':'+ vPair.Value);
    Memo.Lines.Add(IntToStr(vDict.Count));

    //ContainsValue(Value);
    //TryGetValue(Key, out Value): Boolean;
    //Remove(Key);
  finally
    vDict.Free;
  end;
end;

procedure TfrmPrincipal.btnObjectDictionaryClick(Sender: TObject);
var
  vDict: TObjectDictionary<string,TPessoa>;
  vPessoa: TPessoa;
begin
  Memo.Clear;
  vDict := TObjectDictionary<string,TPessoa>.Create([doOwnsValues]);
  try
    vDict.Add('P1', TPessoa.Create(1, 'Joana', 'Rua A', 'joana@teste.com.br'));
    vDict.Add('P2', TPessoa.Create(2, 'Tadeu', 'Rua A', 'tadeu@teste.com.br'));
    vDict.Add('P3', TPessoa.Create(3, 'Chico', 'Rua C', 'chico@teste.com.br'));

    if (vDict.Count > 0) and vDict.ContainsKey('P2') then
      Memo.Lines.Add(vDict.Items['P2'].Nome +' mudou de nome.');

    for vPessoa in vDict.Values do
    begin
      Memo.Lines.Add(
        'Código: '+IntToStr(vPessoa.Codigo)+', '+
        'Nome: '+vPessoa.Nome+', '+
        'Endereço: '+vPessoa.Endereco+', '+
        'E-Mail: '+vPessoa.Email);
    end;
  finally
    vDict.Free;
  end;
end;

procedure TfrmPrincipal.btnSingletonClick(Sender: TObject);
var
  vConfig1: TConfig;
  vConfig2: TConfig;
begin
  Memo.Clear;
  vConfig1 := TSingleton<TConfig>.GetInstance;
  vConfig1.Cfg1 := 1;
  vConfig1.Cfg2 := 9.5;
  vConfig1.Cfg3 := 'Teste';

  vConfig2 := TConfigSingleton.GetInstance;
  vConfig2.Cfg3 := 'Test';

  Memo.Lines.Add('Assert Cfg1');
  Assert(vConfig1.Cfg1 = vConfig2.Cfg1, 'Cfg1 erro');
  Memo.Lines.Add('Assert Cfg2');
  Assert(vConfig1.Cfg2 = vConfig2.Cfg2, 'Cfg2 erro');
  Memo.Lines.Add('Assert Cfg3');
  Assert(vConfig1.Cfg3 = vConfig2.Cfg3, 'Cfg3 erro');
end;

procedure TfrmPrincipal.btnAutoFreeClick(Sender: TObject);
var
  vPessoa1: TPessoa;
  vPessoa2: TPessoa;
begin
  Memo.Clear;
  vPessoa1 := nil;
  try
    vPessoa1 := TPessoa.Create(1, 'Joana', 'Rua A', 'joana@teste.com.br');
    Memo.Lines.Add(
      'Código: '+IntToStr(vPessoa1.Codigo)+', '+
      'Nome: '+vPessoa1.Nome+', '+
      'Endereço: '+vPessoa1.Endereco+', '+
      'E-Mail: '+vPessoa1.Email);
  finally
    vPessoa1.Free;
  end;

  vPessoa2 := TPessoa.Create(2, 'Tadeu', 'Rua A', 'tadeu@teste.com.br');
  TAutoFree<TPessoa>.Add(vPessoa2);
  Memo.Lines.Add(
    'Código: '+IntToStr(vPessoa2.Codigo)+', '+
    'Nome: '+vPessoa2.Nome+', '+
    'Endereço: '+vPessoa2.Endereco+', '+
    'E-Mail: '+vPessoa2.Email);
end;

end.
