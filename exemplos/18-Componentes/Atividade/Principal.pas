unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Grids;

type
  TFrmPrincipal = class(TForm)
    GrdProdutos: TStringGrid;
    BtnCadastrar: TButton;
    BtnRemover: TButton;
    EdtProduto: TEdit;
    EdtQtde: TEdit;
    EdtPreco: TEdit;
    LblTotal: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnCadastrarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
  private
    { Private declarations }
    TotalVenda: Currency;
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  TotalVenda := 0;
  GrdProdutos.Cells[0,0] := 'Produto';
  GrdProdutos.Cells[1,0] := 'Qtde';
  GrdProdutos.Cells[2,0] := 'Preço';
  GrdProdutos.Cells[3,0] := 'Valor';
end;

procedure TFrmPrincipal.BtnCadastrarClick(Sender: TObject);
var
  NovaLinha: Integer;
  SubTotal: Currency;
begin
  SubTotal := StrToInt(EdtQtde.Text) * StrToFloat(EdtPreco.Text);

  NovaLinha := GrdProdutos.RowCount +1;
  GrdProdutos.RowCount := NovaLinha;

  GrdProdutos.Cells[0,NovaLinha -1] := EdtProduto.Text;
  GrdProdutos.Cells[1,NovaLinha -1] := EdtQtde.Text;
  GrdProdutos.Cells[2,NovaLinha -1] := EdtPreco.Text;
  GrdProdutos.Cells[3,NovaLinha -1] := FloatToStr(SubTotal);

  TotalVenda := TotalVenda + SubTotal;
  LblTotal.Caption := 'Total: '+ FloatToStr(TotalVenda);
end;

procedure TFrmPrincipal.BtnRemoverClick(Sender: TObject);
var
  I, Linha: Integer;
begin
  if GrdProdutos.Row > 0 then
  begin
     Linha := GrdProdutos.Row;
     TotalVenda := TotalVenda - StrToFloat(GrdProdutos.Cells[3,Linha]);
     LblTotal.Caption := 'Total: '+ FloatToStr(TotalVenda);

     for I := Linha to GrdProdutos.RowCount -1 do
     begin
       GrdProdutos.Cells[0,I] := GrdProdutos.Cells[0,I+1];
       GrdProdutos.Cells[1,I] := GrdProdutos.Cells[1,I+1];
       GrdProdutos.Cells[2,I] := GrdProdutos.Cells[2,I+1];
       GrdProdutos.Cells[3,I] := GrdProdutos.Cells[3,I+1];
     end;

     GrdProdutos.RowCount := GrdProdutos.RowCount -1;
  end;
end;

end.
