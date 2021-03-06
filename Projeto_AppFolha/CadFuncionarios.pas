unit CadFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFormFuncionarios = class(TForm)
    QryFuncionarios: TFDQuery;
    QryCargos: TFDQuery;
    DtsCargos: TDataSource;
    DtsFuncionarios: TDataSource;
    PageControl: TPageControl;
    TabLista: TTabSheet;
    TabEdicao: TTabSheet;
    DBGrid1: TDBGrid;
    BtnAdicionar: TButton;
    BtnEditar: TButton;
    BtnExcluir: TButton;
    QryFuncionariosCODIGO: TIntegerField;
    QryFuncionariosNOME: TStringField;
    QryFuncionariosCOD_CARGO: TIntegerField;
    QryFuncionariosATIVO: TIntegerField;
    QryFuncionariosCONTATO: TStringField;
    QryCargosCODIGO: TIntegerField;
    QryCargosDESCRICAO: TStringField;
    Label1: TLabel;
    EditCodigo: TDBEdit;
    Label2: TLabel;
    EditNome: TDBEdit;
    Label3: TLabel;
    LcbCargo: TDBLookupComboBox;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    Label4: TLabel;
    EditContato: TDBEdit;
    Label5: TLabel;
    EditAtivo: TDBEdit;
    QryFuncionariosCargo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure QryFuncionariosATIVOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFuncionarios: TFormFuncionarios;

implementation

{$R *.dfm}


procedure TFormFuncionarios.FormCreate(Sender: TObject);
begin
  QryFuncionarios.Open;
  QryCargos.Open;
  PageControl.ActivePage := TabLista;
end;

procedure TFormFuncionarios.FormDestroy(Sender: TObject);
begin
  QryFuncionarios.Close;
  QryCargos.Close;
end;

procedure TFormFuncionarios.BtnAdicionarClick(Sender: TObject);
begin
  QryFuncionarios.Append;
  PageControl.ActivePage := TabEdicao;
end;

procedure TFormFuncionarios.BtnEditarClick(Sender: TObject);
begin
  if not QryFuncionarios.IsEmpty then
  begin
    QryFuncionarios.Edit;
    PageControl.ActivePage := TabEdicao;
  end;

end;

procedure TFormFuncionarios.BtnExcluirClick(Sender: TObject);
begin
  if not QryFuncionarios.IsEmpty then
    QryFuncionarios.Delete;
end;

procedure TFormFuncionarios.BtnSalvarClick(Sender: TObject);
begin
  if EditCodigo.Text =  '' then
  begin
    ShowMessage('Informe o c?digo.');
    EditCodigo.SetFocus;
    Exit;
  end;

  if QryFuncionarios.State in [dsInsert, dsEdit] then
    QryFuncionarios.Post;
  PageControl.ActivePage := TabLista;
end;

procedure TFormFuncionarios.BtnCancelarClick(Sender: TObject);
begin
  if QryFuncionarios.State in [dsInsert, dsEdit] then
    QryFuncionarios.Cancel;
  PageControl.ActivePage := TabLista;
end;

procedure TFormFuncionarios.QryFuncionariosATIVOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := 'N?o';
  if Sender.AsInteger = 1 then
    Text := 'Sim';
end;

end.
