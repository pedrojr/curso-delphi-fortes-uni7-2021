unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    Resultado: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
var
  IntArray: array of Integer;
  //IntArray2: array[0..4] of Integer;
  //IntArray3: array[0..9,0..1] of Integer;
  I: Integer;
begin
  Resultado.Clear;
  SetLength(IntArray, 5);
  //SetLength(IntArray2, 5); //array of Integer
  //SetLength(IntArray3, 9, 2); //array of array of Integer
  for I := Low(IntArray) to High(IntArray) do
  begin
    IntArray[I] := Random(100) +1;
    Resultado.Lines.Add(IntToStr(IntArray[I]));
  end;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
var
  StrArray: array[0..4] of string;
  I: Integer;
begin
  Resultado.Clear;
  for I := 0 to Length(StrArray) -1 do
  begin
    StrArray[I] := IntToStr(Random(100) +1);
    Resultado.Lines.Add(StrArray[I]);
  end;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
const
  StrArray: array[0..4] of string = ('1','2','3','4','5');
  StrArray2: array[0..1,0..1] of string = (('A','7'),('B','9'));
var
  I, J: Integer;
begin
  Resultado.Clear;
  for I := 0 to Length(StrArray2) -1 do
    for J := 0 to Length(StrArray2[I]) -1 do
      Resultado.Lines.Add(StrArray2[I,J]);
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
var
  IntArray: array of Integer;
  I: Integer;
begin
  Resultado.Clear;
  for I := 1 to 10 do
  begin
    SetLength(IntArray, Length(IntArray) +1);
    IntArray[High(IntArray)] := Random(100) +1;
    Resultado.Lines.Add(IntToStr(IntArray[High(IntArray)]));
  end;
end;

end.
