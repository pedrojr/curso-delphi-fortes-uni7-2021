unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Edt: TEdit;
begin
  Edt := nil;
  try
    Edt := TEdit.Create(Self);
    //...
    Exit;
  finally
    Edt.Free;
    Memo1.Text := 'Free';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Edt: TEdit;
begin
  Edt := nil;
  try
    Memo1.Text := Edt.Name;
  except
    Memo1.Text := 'Except';
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Edt: TEdit;
begin
  Edt := nil;
  try
    Memo1.Text := Edt.Name;
  except
    on E: Exception do
      Memo1.Text := E.Message;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Edt1, Edt2: TEdit;
begin
  try
    Edt1 := nil;
    Edt2 := nil;
    try
      Edt1 := TEdit.Create(Self);
      Edt2 := TEdit.Create(Self);
      Memo1.Text := Edt1.ClassName;
    finally
      Edt1.Free;
      Edt2.Free;
    end;
  except
    on E: Exception do
    begin
      Memo1.Text := E.Message;
      //Rollback
    end;
  end;
end;

end.
