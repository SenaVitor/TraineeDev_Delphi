unit ProcLancarEventosFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Conexao,
  Vcl.DBCtrls;

type
  TFormLancarEventosFuncionarios = class(TForm)
    Label1: TLabel;
    EditMesAno: TMaskEdit;
    DtsCargos: TDataSource;
    DtsFuncionarios: TDataSource;
    QryCargos: TFDQuery;
    QryFuncionarios: TFDQuery;
    LkpCargos: TDBLookupComboBox;
    LkpFuncionarios: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    QryCargosCODIGO: TIntegerField;
    QryCargosDESCRICAO: TStringField;
    QryFuncionariosCODIGO: TIntegerField;
    QryFuncionariosNOME: TStringField;
    Label4: TLabel;
    LkpEventos: TDBLookupComboBox;
    QryEventos: TFDQuery;
    DtsEventos: TDataSource;
    QryEventosCODIGO: TIntegerField;
    QryEventosDESCRICAO: TStringField;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    EditValor: TEdit;
    Label5: TLabel;
    QryFuncSelecionados: TFDQuery;
    QryAux: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLancarEventosFuncionarios: TFormLancarEventosFuncionarios;

implementation

{$R *.dfm}

procedure TFormLancarEventosFuncionarios.BtnSalvarClick(Sender: TObject);
begin
  //valida??es:
  //m?s/ano
  if EditMesAno.Text = '' then
  begin
    ShowMessage('M?s/Ano deve ser informado.');
    abort;
  end;
  //Cargo ou Funcion?rio
  if (LkpCargos.Text = '') and (LkpFuncionarios.Text = '')then
  begin
    ShowMessage('Informar cargo ou o funcionario.');
    abort;
  end;
  //se o evento est? selicionado
  if LkpEventos.Text = '' then
  begin
    ShowMessage('Evento deve ser informado.');
    abort;
  end;
  //se o valor est? selecionado
  if EditValor.Text = '' then
  begin
    ShowMessage('Valor deve ser informado.');
    abort;
  end;
  QryFuncSelecionados.Close;
  QryFuncSelecionados.SQL.Text := 'SELECT CODIGO, NOME FROM FUNCIONARIOS f WHERE ATIVO = 1';
  if VarToStr(LkpCargos.KeyValue) <> '' then
  begin
    QryFuncSelecionados.SQL.Text := QryFuncSelecionados.SQL.Text + ' AND COD_CARGO = ' + VarToStr(LkpCargos.KeyValue);
  end
  else if VarToStr(LkpFuncionarios.KeyValue) <> '' then
  begin
    QryFuncSelecionados.SQL.Text := QryFuncSelecionados.SQL.Text + ' AND CODIGO = ' + VarToStr(LkpFuncionarios.KeyValue);
  end;
  QryFuncSelecionados.Open;

  if not QryFuncSelecionados.IsEmpty then
  begin
    QryAux.Sql.Text := 'DELETE FROM FOLHAS_EVENTOS WHERE MES_ANO = ' + QuotedStr(EditMesAno.Text);
    QryAux.ExecSQL;
  end;


  while not QryFuncSelecionados.Eof do
  begin
    QryAux.SQL.Text := 'INSERT INTO FOLHAS_EVENTOS VALUES (:MES_ANO, :COD_EVENTO, :COD_FUNCIONARIO, :VALOR)';
    QryAux.ParamByName('MES_ANO').AsString := EditMesAno.Text;
    QryAux.ParamByName('COD_EVENTO').AsInteger := LkpEventos.KeyValue;
    QryAux.ParamByName('COD_FUNCIONARIO').AsInteger := QryFuncSelecionados.FieldByName('CODIGO').AsInteger;
    QryAux.ParamByName('VALOR').AsFloat := StrToFloat(EditValor.Text);
    QryAux.ExecSQL;
    QryFuncSelecionados.Next;
  end;

end;

procedure TFormLancarEventosFuncionarios.FormCreate(Sender: TObject);
begin
  QryCargos.Open;
  QryFuncionarios.Open;
  QryEventos.Open;
end;

procedure TFormLancarEventosFuncionarios.FormDestroy(Sender: TObject);
begin
  QryCargos.Close;
  QryFuncionarios.Close;
  QryEventos.Close;
end;

end.
