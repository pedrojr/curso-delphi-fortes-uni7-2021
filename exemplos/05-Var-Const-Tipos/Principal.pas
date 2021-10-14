unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, ExemplosVar, StrUtils, DateUtils;

type
  TFrmPrincipal = class(TForm)
    Memo: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
  Mensagem: string;

const
  APP_NOME = 'Exemplo';
  APP_VERSAO = '1.0';

implementation

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  Memo.Lines.Clear;
  //APP_NOME := 'Exemplo2'; //Erro de compilação
  Memo.Lines.Add(APP_NOME);
  Memo.Lines.Add(APP_VERSAO);
  Mensagem := 'Exemplo2';
  Memo.Lines.Add(Mensagem);
  Memo.Lines.Add(VarString01);
  VarString01 := 'VarString01';
  Memo.Lines.Add(VarString01);
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
var
  TesteChar: Char;
begin
  //TesteChar := ''; //Erro de compilação
  //TesteChar := 'AA'; //Erro de compilação
  TesteChar := 'W';
  Memo.Lines.Clear;
  Memo.Lines.Text := #13 + TesteChar;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
var
  TesteBoolean: Boolean;
begin
  TesteBoolean := True;
  Memo.Lines.Clear;
  Memo.Lines.Add(BoolToStr(TesteBoolean));
  Memo.Lines.Add(BoolToStr(False));
  //Unit SysUtils
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
var
  TesteByte: Byte;
  TesteSmallInt: SmallInt;
  TesteInteger: Integer;
  TesteInt64: Int64;
begin
  //TesteByte := 259; //Erro de compilação
  TesteSmallInt := 12345;
  TesteInteger := 1234567890;
  TesteInt64 := 51247922000139;
  Memo.Lines.Clear;
  Memo.Lines.Add(IntToStr(TesteByte));
  Memo.Lines.Add(IntToStr(TesteSmallInt));
  Memo.Lines.Add(IntToStr(TesteInteger));
  Memo.Lines.Add(IntToStr(TesteInt64));
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
var
  TesteDouble: Double;
  TesteCurrency: Currency;
begin
  TesteDouble := 1.123456;
  TesteCurrency := 1.123456;
  Memo.Lines.Clear;
  Memo.Lines.Add(FloatToStr(TesteDouble));
  Memo.Lines.Add(FloatToStr(TesteCurrency));
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
var
  TesteDateTime: TDateTime;
begin
  Memo.Lines.Clear;
  Memo.Lines.Add(DateTimeToStr(TesteDateTime));
  TesteDateTime := Now;
  Memo.Lines.Add(DateTimeToStr(TesteDateTime));
  Memo.Lines.Add(DateToStr(TesteDateTime));
  Memo.Lines.Add(TimeToStr(TesteDateTime));
  Memo.Lines.Add(IntToStr(DayOfTheMonth(TesteDateTime)));
  //Unit DateUtils
end;

procedure TFrmPrincipal.Button7Click(Sender: TObject);
var
  TesteVariant: Variant;
begin
  Memo.Lines.Clear;
  Memo.Lines.Add(VarToStr(TesteVariant));
  TesteVariant := 1;
  Memo.Lines.Add(VarToStr(TesteVariant));
  TesteVariant := 'Teste';
  Memo.Lines.Add(VarToStr(TesteVariant));
  //Unit Variants
end;

procedure TFrmPrincipal.Button8Click(Sender: TObject);
var
  I, TestInteger: Integer;
  TimeIni, TimeFim: TTime;
  TesteVariant: Variant;
  TesteString: string;
begin
  Memo.Lines.Clear;

  Memo.Lines.Add('Variant');
  TimeIni := Time;
  for I := 0 to 100000 do
  begin
    TesteVariant := I;
    TesteString := VarToStr(TesteVariant);
  end;
  TimeFim := Time;
  Memo.Lines.Add(IntToStr(MilliSecondOf(TimeFim - TimeIni)));

  Memo.Lines.Add('Integer');
  TimeIni := Time;
  for I := 0 to 100000 do
  begin
    TestInteger := I;
    TesteString := IntToStr(TestInteger);
  end;
  TimeFim := Time;
  Memo.Lines.Add(IntToStr(MilliSecondOf(TimeFim - TimeIni)));
end;

initialization

finalization

end.
