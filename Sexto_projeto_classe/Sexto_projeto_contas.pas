unit Sexto_projeto_contas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    EditValor: TEdit;
    RadioGroup1: TRadioGroup;
    Saque: TButton;
    Label1: TLabel;
    Deposito: TButton;
    procedure SaqueClick(Sender: TObject);
    procedure DepositoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Contas;

{$R *.dfm}

var
  contaCorrente: TContaCorrente;
  contaPoupanca: TContaPoupanca;
  Dinheiro : Double;
  MsgRetorno : String;
  i : Integer;

procedure TForm1.DepositoClick(Sender: TObject);
begin
  Memo1.Clear;
  Dinheiro := strToFloat(EditValor.Text);
  if(RadioGroup1.ItemIndex = 0) then
  begin
    contaCorrente := nil;
    try
      contaCorrente := TContaCorrente.Create(1800);
      Memo1.Lines.Add('Saldo inicial: '+ FloatToStr(contaCorrente.Saldo));
      Memo1.Lines.Add('');
      Memo1.Lines.Add('Deposito na conta corrente de ' + FloatToStr(Dinheiro));
      Memo1.Lines.Add('');
      if not ContaCorrente.Depositar(Dinheiro, MsgRetorno) then
      begin
        Memo1.Lines.Add(MsgRetorno);
        Memo1.Lines.Add('');
      end;
      Memo1.Lines.Add('Saldo atual: '+ FloatToStr(ContaCorrente.Saldo));
    finally
      contaCorrente.Free;
    end;
  end
  else
  begin
    contaPoupanca := nil;
    try
      Memo1.Clear;
      ContaPoupanca := TContaPoupanca.Create(1800);
      Memo1.Lines.Add('Saldo inicial: '+ FloatToStr(ContaPoupanca.Saldo));
      Memo1.Lines.Add('');
      Memo1.Lines.Add('Deposito de ' + FloatToStr(Dinheiro));
      Memo1.Lines.Add('');
      if not ContaPoupanca.Depositar(Dinheiro, MsgRetorno) then
      begin
        Memo1.Lines.Add(MsgRetorno);
        Memo1.Lines.Add('');
      end;
      Memo1.Lines.Add('Saldo atual: '+ FloatToStr(ContaCorrente.Saldo));
    finally
      contaPoupanca.Free;
    end;
  end;
end;

procedure TForm1.SaqueClick(Sender: TObject);
begin
  Memo1.Clear;
  Dinheiro := strToFloat(EditValor.Text);
  if(RadioGroup1.ItemIndex = 0) then
  begin
    contaCorrente := nil;
    try
      contaCorrente := TContaCorrente.Create(1800);
      Memo1.Lines.Add('Saldo inicial: '+ FloatToStr(contaCorrente.Saldo));
      Memo1.Lines.Add('');
      Memo1.Lines.Add('Saque na conta corrente de ' + FloatToStr(Dinheiro));
      Memo1.Lines.Add('');
      if not ContaCorrente.Sacar(Dinheiro, MsgRetorno) then
      begin
        Memo1.Lines.Add(MsgRetorno);
        Memo1.Lines.Add('');
      end;
      Memo1.Lines.Add('Saldo atual: '+ FloatToStr(ContaCorrente.Saldo));
    finally
      contaCorrente.Free;
    end;
  end
  else
  begin
    contaPoupanca := nil;
    try
      Memo1.Clear;
      ContaPoupanca := TContaPoupanca.Create(1800);
      Memo1.Lines.Add('Saldo inicial: '+ FloatToStr(ContaPoupanca.Saldo));
      Memo1.Lines.Add('');
      Memo1.Lines.Add('Saque na conta poupan?a de ' + FloatToStr(Dinheiro));
      Memo1.Lines.Add('');
      if not ContaPoupanca.Sacar(Dinheiro, MsgRetorno) then
      begin
        Memo1.Lines.Add(MsgRetorno);
        Memo1.Lines.Add('');
      end;
      Memo1.Lines.Add('Saldo atual: '+ FloatToStr(ContaCorrente.Saldo));
    finally
      contaPoupanca.Free;
    end;
  end;
end;

end.
