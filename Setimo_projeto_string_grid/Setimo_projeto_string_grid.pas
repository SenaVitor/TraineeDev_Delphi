unit Setimo_projeto_string_grid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Adicionar: TButton;
    EditNome: TEdit;
    EditQtd: TEdit;
    EditPreco: TEdit;
    Label1: TLabel;
    LblTotal: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Remover: TButton;
    procedure AdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdicionarClick(Sender: TObject);
var
  Nome: String;
  rows, qtd: Integer;
  preco, valor, total: double;
begin

  nome := EditNome.Text;
  qtd := StrToInt(EditQtd.Text);
  preco := StrToFloat(EditPreco.Text);
  valor := qtd * preco;
  total := StrToFloat(LblTotal.Caption) + valor;
  rows := StringGrid1.RowCount;
  StringGrid1.RowCount := rows + 1;
  StringGrid1.Cells[0,rows] := nome;
  StringGrid1.Cells[1,rows] := intToStr(qtd);
  StringGrid1.Cells[2, rows] := FloatToStr(preco);
  StringGrid1.Cells[3, rows] := FloatToStr(valor);
  LblTotal.Caption := FloatToStr(total);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  StringGrid1.RowCount := 1;
  Stringgrid1.Cells[0,0] := 'Nome';
  Stringgrid1.Cells[1,0] := 'Quantidade';
  Stringgrid1.Cells[2,0] := 'Pre?o Unit';
  Stringgrid1.Cells[3,0] := 'Valor';
end;

procedure TForm1.RemoverClick(Sender: TObject);
begin
  if(StringGrid1.Row <> 0) then
  begin
    if(StringGrid1.RowCount > StringGrid1.FixedRows + 1) then
    begin
      
    end
    else
    //apagar linha;
  end;
end;

end.
