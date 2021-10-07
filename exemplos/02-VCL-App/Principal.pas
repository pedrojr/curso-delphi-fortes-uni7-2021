unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtOlaMundo: TEdit;
    btnOlaMundo: TButton;
    lblOlaMundo: TLabel;
    procedure btnOlaMundoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnOlaMundoClick(Sender: TObject);
begin
   ShowMessage(edtOlaMundo.Text);
end;

end.
