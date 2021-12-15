unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.CheckLst, CheckLstHelper, HelpersTest;

type
  TfrmPrincipal = class(TForm)
    CheckListBox: TCheckListBox;
    btnMarcar: TButton;
    btnDesmarcar: TButton;
    btnInverter: TButton;
    Memo: TMemo;
    btnInteger: TButton;
    btnString: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnMarcarClick(Sender: TObject);
    procedure btnDesmarcarClick(Sender: TObject);
    procedure btnInverterClick(Sender: TObject);
    procedure btnIntegerClick(Sender: TObject);
    procedure btnStringClick(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaCheckList;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  CarregaCheckList;
end;

procedure TfrmPrincipal.CarregaCheckList;
var
  I: Integer;
begin
  CheckListBox.Clear;
  for I := 1 to 20 do
    CheckListBox.Items.Add('Item '+ I.AsString);
end;

procedure TfrmPrincipal.btnMarcarClick(Sender: TObject);
begin
  CheckListBox.CheckAll(cbChecked);
end;

procedure TfrmPrincipal.btnDesmarcarClick(Sender: TObject);
begin
  CheckListBox.CheckAll(cbUnchecked);
end;

procedure TfrmPrincipal.btnInverterClick(Sender: TObject);
begin
  CheckListBox.Reverse;
end;

procedure TfrmPrincipal.btnIntegerClick(Sender: TObject);
var
  vInt: Integer;
begin
  Memo.Clear;
  Memo.Lines.Add(123.AsString);

  vInt := 789456;
  Memo.Lines.Add(vInt.AsString);
end;

procedure TfrmPrincipal.btnStringClick(Sender: TObject);
var
  vArr: TArray<Integer>;
  vInt: Integer;
begin
  Memo.Clear;
  vArr := '32165498701'.ToArrayOfInteger;
  for vInt in vArr do
    Memo.Lines.Add(vInt.AsString);
end;

end.
