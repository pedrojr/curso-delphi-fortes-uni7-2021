unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Grids, Vcl.Mask,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.AppEvnts, Vcl.ToolWin,
  Vcl.ImgList, VclTee.TeeGDIPlus, Vcl.Samples.Spin, VCLTee.TeEngine,
  VCLTee.TeeProcs, VCLTee.Chart, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    TrayIcon1: TTrayIcon;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ImageList1: TImageList;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    LblTeste1: TLabel;
    EdtTeste1: TEdit;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    SpinEdit1: TSpinEdit;
    GroupBox1: TGroupBox;
    RadioGroup1: TRadioGroup;
    StringGrid1: TStringGrid;
    DateTimePicker1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
    ProgressBar1: TProgressBar;
    ListBox1: TListBox;
    CheckListBox1: TCheckListBox;
    Button1: TButton;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    Shape1: TShape;
    Image1: TImage;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    procedure EdtTeste1Change(Sender: TObject);
    procedure EdtTeste1Enter(Sender: TObject);
    procedure EdtTeste1Exit(Sender: TObject);
    procedure EdtTeste1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtTeste1KeyPress(Sender: TObject; var Key: Char);
    procedure EdtTeste1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet2Enter(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  StrUtils, System.UITypes;

{$R *.dfm}

procedure TForm1.EdtTeste1Change(Sender: TObject);
begin
  //*
end;

procedure TForm1.EdtTeste1Enter(Sender: TObject);
begin
  //*
end;

procedure TForm1.EdtTeste1Exit(Sender: TObject);
begin
  //*
end;

procedure TForm1.EdtTeste1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //*
  ShowMessage('EdtTeste1KeyDown: ' + Char(Key));
end;

procedure TForm1.EdtTeste1KeyPress(Sender: TObject; var Key: Char);
begin
  //*
  //ShowMessage('EdtTeste1KeyPress: ' + Key);
end;

procedure TForm1.EdtTeste1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //*
  //ShowMessage('EdtTeste1KeyUp: ' + Char(Key));
end;

procedure TForm1.TabSheet2Enter(Sender: TObject);
const
  Contato = 987654321;
var
  I: Integer;
begin
  //Prepara cabeçalho
  StringGrid1.ColCount := 3;
  StringGrid1.RowCount := 51;
  StringGrid1.ColWidths[0] := 60;
  StringGrid1.Cells[0,0] := 'Código';
  StringGrid1.ColWidths[1] := 200;
  StringGrid1.Cells[1,0] := 'Nome';
  StringGrid1.ColWidths[2] := 80;
  StringGrid1.Cells[2,0] := 'Contato';

  //Atribui informações
  ProgressBar1.Max := 50;
  for I := 1 to 50 do
  begin
    StringGrid1.Cells[0,I] := IntToStr(I);
    StringGrid1.Cells[1,I] := 'Cliente '+ IntToStr(I);
    StringGrid1.Cells[2,I] := IntToStr(Contato + Random(100));
    ProgressBar1.Position := ProgressBar1.Position +1;
    Application.ProcessMessages;
    Sleep(100);
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if MessageDlg('Desativar o timer?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    Timer1.Enabled := False;
end;

end.
