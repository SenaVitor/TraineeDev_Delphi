unit Produtos;

interface

uses
  Generics.Collections;

type
  TProduto = class
    strict private
      FCodigo: Integer;
      FQtd: Integer;
      FValor: Currency;
      FListaVenda : TObjectList<TProduto>;
    public
      property Codigo: Integer read FCodigo write FCodigo;
      property Qtd: Integer read FQtd write FQtd;
      property Valor: Currency read FValor write FValor;
      property ListaVenda: TObjectList<TProduto> read FListaVenda write FListaVenda;
  end;

implementation

end.
