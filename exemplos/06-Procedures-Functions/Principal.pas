unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    MemResultado: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    procedure TesteA;
    function TesteB: string;
  public
    { Public declarations }
    procedure TesteC;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  ExemplosProcedures, ExemplosFunctions;

{$R *.dfm}

{ TFrmPrincipal }

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  MemResultado.Lines.Text := TesteB;
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
  TesteC;
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
begin
  MemResultado.Clear;
  ProcedureB;
  ProcedureB('Teste');
  MemResultado.Lines.Add('ProcedureB');
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
begin
  MemResultado.Clear;
  MemResultado.Lines.Add(FunctionB);
  MemResultado.Lines.Add(FunctionB('Teste123'));
end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
var
  Valor2, Valor3: string;
begin
  MemResultado.Clear;
  ProcedureC;
  ProcedureC('Teste');

  Valor2 := 'Valor2';
  Valor3 := 'Valor3';
  ProcedureD('Texto', Valor2, Valor3);
  MemResultado.Lines.Add(Valor2 +' - '+ Valor3);
end;

procedure TFrmPrincipal.Button6Click(Sender: TObject);
var
  Valor2, Valor3: string;
begin
  MemResultado.Clear;
  MemResultado.Lines.Add(FunctionC);
  MemResultado.Lines.Add(FunctionC('Teste'));

  Valor2 := 'Valor2';
  Valor3 := 'Valor3';
  MemResultado.Lines.Add(FunctionD('Texto', Valor2, Valor3));
end;

procedure TFrmPrincipal.TesteA;
begin
end;

function TFrmPrincipal.TesteB: string;
begin
  Result := 'TesteB';
end;

procedure TFrmPrincipal.TesteC;
begin
  MemResultado.Lines.Text :='TesteC';
end;

end.
