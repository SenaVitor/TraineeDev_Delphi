unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections, Produtos;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button: TButton;
    procedure ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  I: Integer;
  Soma1, Soma2, Soma3, Soma4 : Currency;
  P1, P2, P3, P4 : TProduto;
  Lista : TObjectList<TProduto>;

procedure adicionarP1(Cod, Quantidade: Integer; Val: Currency);

begin
  P1 := TProduto.Create;
  P1.Codigo := Cod;
  P1.Qtd := Quantidade;
  P1.Valor := Val;
  P1.Free;
end;

procedure adicionarP2(Cod, Quantidade: Integer; Val: Currency);

begin
  P2 := TProduto.Create;
  P2.Codigo := Cod;
  P2.Qtd := Quantidade;
  P2.Valor := Val;
  P2.Free;
end;

procedure adicionarP3(Cod, Quantidade: Integer; Val: Currency);

begin
  P3 := TProduto.Create;
  P3.Codigo := Cod;
  P3.Qtd := Quantidade;
  P3.Valor := Val;
  P3.Free;
end;

procedure adicionarP4(Cod, Quantidade: Integer; Val: Currency);

begin
  P4 := TProduto.Create;
  P4.Codigo := Cod;
  P4.Qtd := Quantidade;
  P4.Valor := Val;
  P4.Free;
end;

function ProdutosComMaiorValorVendido(Produtos: TObjectList<TProduto>): String;

begin
  if(P1.Codigo = P2.Codigo) then
  begin
    Soma1 := Soma1 + Soma2;
  end
  else
  if(P2.Codigo = P3.Codigo) then
  begin
    Soma2 := Soma2 + Soma3;
  end
  else
  if(P3.Codigo = P4.Codigo) then
  begin
    Soma3 := Soma3 + Soma4;
  end;

  if(P2.Codigo = P4.Codigo) then
  begin
    Soma2 := Soma2 + Soma4;
  end;
  if(P1.Codigo = P3.Codigo) then
  begin
    Soma1 := Soma1 + Soma3;
  end;
  if(P1.Codigo = P4.Codigo) then
  begin
    Soma1 := Soma1 + Soma4;
  end;
end;

procedure TForm1.ButtonClick(Sender: TObject);
begin
  Memo1.Lines.Text := ProdutosComMaiorValorVendido(ListaVenda);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  adicionarP1(1,2,3.2);
  adicionarP2(2,1,221.1);
  adicionarP3(3,10,10.2);
  adicionarP4(4,3,11);
  Soma1 := P1.Valor * P1.Qtd;
  Soma2 := P2.Valor * P2.Qtd;
  Soma3 := P3.Valor * P3.Qtd;
  Soma4 := P4.Valor * P4.Qtd;
end;

end.
