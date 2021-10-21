unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{
Faça uma rotina que lê um array de record de tamanho 10 contendo
nome e nota dos alunos (notas de 0 a 10). Em seguida exiba no memo
a média da turma e o nome dos alunos com melhor e pior notas.
}

procedure TForm1.Button1Click(Sender: TObject);
type
  RAluno = record
    nome: string;
    nota: Byte;
  end;
var
  Alunos: array of RAluno;
  I, Soma, MenorNota, MaiorNota: Integer;
  Aluno1, Aluno2: string;
begin
  Soma := 0;
  MenorNota := 10;
  MaiorNota := 0;
  Aluno1 := '';
  Aluno2 := '';
  Memo1.Clear;

  SetLength(Alunos, 9);
  for I := Low(Alunos) to High(Alunos) do
  begin
    Alunos[I].nome := 'Aluno '+ IntToStr(I+1);
    Alunos[I].nota := Random(11);
    Soma := Soma + Alunos[I].nota;

    if MenorNota >= Alunos[I].nota then
    begin
      Aluno1 := Alunos[I].nome;
      MenorNota := Alunos[I].nota;
    end;

    if MaiorNota <= Alunos[I].nota then
    begin
      Aluno2 := Alunos[I].nome;
      MaiorNota := Alunos[I].nota;
    end;
  end;

  Memo1.Lines.Add('Menor nota: '+ IntToStr(MenorNota) +' Aluno: '+ Aluno1);
  Memo1.Lines.Add('Maior nota: '+ IntToStr(MaiorNota) +' Aluno: '+ Aluno2);
  Memo1.Lines.Add('Média da turma: '+ FloatToStr(Soma / 10));
end;

end.
