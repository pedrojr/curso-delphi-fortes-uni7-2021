unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    Memo: TMemo;
    btnMethods: TBitBtn;
    btnEnum: TBitBtn;
    btnFields: TBitBtn;
    btnProperties: TBitBtn;
    btnInvokeMethod: TBitBtn;
    btnAttributes: TBitBtn;
    btnTypeInfo: TBitBtn;
    procedure btnEnumClick(Sender: TObject);
    procedure btnFieldsClick(Sender: TObject);
    procedure btnPropertiesClick(Sender: TObject);
    procedure btnMethodsClick(Sender: TObject);
    procedure btnInvokeMethodClick(Sender: TObject);
    procedure btnAttributesClick(Sender: TObject);
    procedure btnTypeInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  TypInfo, RttiTests, EnumTypes, EnumAttribute;

{$R *.dfm}

procedure TfrmPrincipal.btnTypeInfoClick(Sender: TObject);
var
  Pessoa: TPessoa;
  Count, Size, I: Integer;
  List: PPropList;
  PropInfo: PPropInfo;
  PropValue: string;
begin
  Pessoa := nil;
  Count := GetPropList(TPessoa.ClassInfo, tkProperties, nil);
  Size := Count * SizeOf(Pointer);
  GetMem(List, Size);
  try
    Count := GetPropList(TPessoa.ClassInfo, tkProperties, List);
    Pessoa := TPessoa.Create(1, 'Teste', 'Endereço', 'E-mail');

    for I := 0 to Count - 1 do
    begin
      PropInfo := List^[I];
      PropValue := VarToStr(GetPropValue(Pessoa, UTF8ToString(PropInfo^.Name)));
      Memo.Lines.Add(UTF8ToString(PropInfo^.Name) +': '+ PropValue);
    end;
  finally
    Pessoa.Free;
    FreeMem(List);
  end;
end;

procedure TfrmPrincipal.btnFieldsClick(Sender: TObject);
begin
  TRttiTests.GetFields(Memo.Lines);
end;

procedure TfrmPrincipal.btnPropertiesClick(Sender: TObject);
begin
  TRttiTests.GetProperties(Memo.Lines);
end;

procedure TfrmPrincipal.btnMethodsClick(Sender: TObject);
begin
  TRttiTests.GetMethods(Memo.Lines);
end;

procedure TfrmPrincipal.btnInvokeMethodClick(Sender: TObject);
begin
  TRttiTests.InvokeMethod(Memo.Lines);
end;

procedure TfrmPrincipal.btnAttributesClick(Sender: TObject);
begin
  TRttiTests.GetAttributes(Memo.Lines);
end;

procedure TfrmPrincipal.btnEnumClick(Sender: TObject);
begin
  Memo.Clear;
  Memo.Lines.Add( TEnum<EnumTeste>.GetLabel(opTeste0) );
  Memo.Lines.Add( TEnum<EnumTeste>.GetLabel(opTeste2) );
end;

end.
