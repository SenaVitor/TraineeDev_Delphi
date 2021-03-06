unit CadFuncionarios1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Conexao, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFormFuncionarios1 = class(TFormCadPadrao)
    QryCargos: TFDQuery;
    DtsCargos: TDataSource;
    QryMainCODIGO: TIntegerField;
    QryMainNOME: TStringField;
    QryMainCOD_CARGO: TIntegerField;
    QryMainATIVO: TIntegerField;
    QryMainCONTATO: TStringField;
    QryMainCargo: TStringField;
    Label1: TLabel;
    EditCodigo: TDBEdit;
    Label2: TLabel;
    EditNome: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    EditAtivo: TDBEdit;
    Label4: TLabel;
    EditContato: TDBEdit;
    LcbCargos: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    Label6: TLabel;
    PnlSalario: TPanel;
    EditSalario: TEdit;
    Label7: TLabel;
    QrySalarios: TFDQuery;
    DtsSalarios: TDataSource;
    QrySalariosCOD_FUNCIONARIO: TIntegerField;
    QrySalariosSALARIO: TFMTBCDField;
    QrySalariosDATA_HORA: TSQLTimeStampField;
    procedure QryMainATIVOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function Validado: Boolean; override;
  public
    { Public declarations }
  end;

var
  FormFuncionarios1: TFormFuncionarios1;

implementation

{$R *.dfm}

procedure TFormFuncionarios1.BtnAdicionarClick(Sender: TObject);
begin
  inherited;
  PnlSalario.Visible := true;
  EditSalario.Text := '';
end;

procedure TFormFuncionarios1.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  PnlSalario.Visible := false;
  EditSalario.Text := '';
end;

procedure TFormFuncionarios1.BtnEditarClick(Sender: TObject);
begin
  inherited;
  PnlSalario.Visible := false;
  EditSalario.Text := '';
end;

procedure TFormFuncionarios1.BtnSalvarClick(Sender: TObject);
var
  Salario: Currency;
begin
  if EditCodigo.Text = '' then
  begin
    ShowMessage('Informe o c?digo.');
    EditCodigo.SetFocus;
    Exit;
  end;

  if QryMain.State in[dsInsert, dsEdit] then
  begin
    QryMain.Post;

    Salario := StrToFloatDef(EditSalario.Text, 0);
    if Salario > 0 then
    begin
      QrySalarios.Append;
      QrySalariosCOD_FUNCIONARIO.AsString := QryMainCODIGO.AsString;
      QrySalariosDATA_HORA.AsDateTime := Now;
      QrySalariosSALARIO.AsFloat := Salario;
      QrySalarios.Post;
      PnlSalario.Visible := false;
      EditSalario.Text := '';
    end;
  end;
  PageControl1.ActivePage := TbsLista;
end;

procedure TFormFuncionarios1.FormCreate(Sender: TObject);
begin
  inherited;
  QryCargos.Open;
  QrySalarios.Open;
end;

procedure TFormFuncionarios1.FormDestroy(Sender: TObject);
begin
  inherited;
  QryCargos.Close;
  QrySalarios.Close;
end;

procedure TFormFuncionarios1.QryMainATIVOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := 'N?o';
  if Sender.AsInteger = 1 then
    Text := 'Sim';
end;

function TFormFuncionarios1.Validado: Boolean;
begin
  Result := false;
  if EditCodigo.Text = '' then
  begin
    ShowMessage('C?digo deve ser informado.');
    abort;
  end;
  Result := True;
end;

end.
