unit Contas;

interface

uses
  System.SysUtils;

type
  TConta = class
  private
    FLimite, FSaldo: double;
  public
    constructor Create(ASaldo: Double = 0);
    destructor Destroy; override;
    property Saldo: double read FSaldo write FSaldo;
    property Limite: double read FLimite write FLimite;
    function Sacar(Valor: Double; out Msg: String): Boolean; virtual;
    function Depositar(Valor: Double; out Msg: String): Boolean; virtual;
    function ConsultarSaldo(): Double; virtual;
  end;

  TContaCorrente = class(TConta)
  private
    FDesconto: double;
  public
    property Desconto: double read FDesconto write FDesconto;
    function Sacar(Valor: Double; out Msg: String): Boolean; override;
  end;

  TContaPoupanca = class(TConta)
  private
    FValorMinimo: double;
  public
    property ValorMinimo: double read FValorMinimo write FValorMinimo;
    function Sacar(Valor: Double; out Msg: String): Boolean; override;
    function Depositar(Valor: Double; out Msg: String): Boolean; override;
  end;

implementation

{ TConta }

constructor TConta.Create(ASaldo: Double);
begin
  FSaldo := ASaldo;
end;

destructor TConta.Destroy;
begin
  inherited;
end;

function TConta.ConsultarSaldo: Double;
begin
    Result := FSaldo;
end;

function TConta.Depositar(Valor: Double; out Msg: String): Boolean;
begin
  FSaldo := FSaldo + Valor;
  Result := true;
end;

function TConta.Sacar(Valor: Double; out Msg: String): Boolean;
begin
  Result := false;
  if Valor <= FSaldo then
  begin
    FSaldo := FSaldo - Valor;
    Result := true;
  end
  else
  begin
    Msg := 'Saldo Insuficiente, seu saldo atual ? de: ' + FloatToStr(Saldo);
  end;
end;

{ TContaCorrente }

function TContaCorrente.Sacar(Valor: Double; out Msg: String): Boolean;
var
  ValorTaxa: Double;
begin
  Result := false;
  FDesconto := Valor/100;
  ValorTaxa := Valor + FDesconto;
  if(Saldo < ValorTaxa) then
  begin
    Msg := 'Saldo Insuficiente, seu saldo atual ? de: ' + FloatToStr(Saldo);
    Exit;
  end;

  if(Valor <= 1000) then
  begin
    FSaldo := FSaldo - ValorTaxa;
    Result := true;
  end
  else
  begin
    Msg := 'O limite para saques na conta corrente ? de 1000 reais';
  end;
end;

{ TContaPoupanca }

function TContaPoupanca.Depositar(Valor: Double; out Msg: String): Boolean;
begin
  Result := false;
  if(Valor > 200) then
  begin
    inherited;
  end
  else
  begin
    Msg := 'O valor m?nimo para dep?sitos na conta poupan?a ? de 200 reais';
  end;
end;

function TContaPoupanca.Sacar(Valor: Double; out Msg: String): Boolean;
begin
  Result := false;
  if(FSaldo < Valor) then
  begin
    Msg := 'Saldo Insuficiente, seu saldo atual ? de: ' + FloatToStr(Saldo);
    Exit;
  end;

  if(Valor <= 500) then
  begin
    inherited;
  end
  else
  begin
    Msg := 'O limite para saques na conta poupan?a ? de 500 reais';
  end;
end;

end.
