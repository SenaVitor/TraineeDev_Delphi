unit record_alunos;

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

  RAluno = record
    Nome: String;
    Nota: Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  alunos: array[0..9] of RAluno;
  i: Integer;
  media: Double;
  melhor, pior: RAluno;
begin
  media:= 0;
  Memo1.Clear;
  for I := 0 to High(alunos) do
  begin
    Alunos[i].Nome:= 'Aluno ' + intToStr(i+1);
    Alunos[i].Nota:= Random(10);
    Memo1.Lines.Append(alunos[i].Nome + ' Nota = ' + intToStr(alunos[i].Nota));
    media:= media + alunos[i].Nota;
    if(i = 0) then
    begin
      pior.Nota:= alunos[i].Nota;
      melhor.Nota:= alunos[i].Nota;
      pior.Nome:= alunos[i].Nome;
      melhor.Nome:= alunos[i].Nome;
    end;
    if(melhor.Nota < alunos[i].Nota) then
    begin
      melhor.Nome:= alunos[i].Nome;
      melhor.Nota:= alunos[i].Nota;
    end;
    if(pior.Nota > alunos[i].Nota) then
    begin
      pior.Nome:= alunos[i].Nome;
      pior.Nota:= alunos[i].Nota;
    end;
  end;
  media:= media/high(alunos);
  Memo1.Lines.Append('Aluno com melhor nota: ' + melhor.Nome);
  Memo1.Lines.Append('Aluno com pior nota: ' + pior.Nome);
  Memo1.Lines.Append('Média = ' + FloatToStr(media));
end;

end.
