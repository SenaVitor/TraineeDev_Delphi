unit CadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormCadPadrao = class(TForm)
    PageControl1: TPageControl;
    TbsLista: TTabSheet;
    TbsRegistro: TTabSheet;
    QryMain: TFDQuery;
    DtsMain: TDataSource;
    DBGrid1: TDBGrid;
    BtnAdicionar: TButton;
    BtnEditar: TButton;
    BtnExcluir: TButton;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  protected
    function Validado: Boolean; Virtual;
  public
    { Public declarations }
  end;

var
  FormCadPadrao: TFormCadPadrao;

implementation

{$R *.dfm}

procedure TFormCadPadrao.BtnAdicionarClick(Sender: TObject);
begin
  QryMain.Append;
  PageControl1.ActivePage := TbsRegistro;
end;

procedure TFormCadPadrao.BtnEditarClick(Sender: TObject);
begin
  if not QryMain.IsEmpty then
  begin
    QryMain.Edit;
    PageControl1.ActivePage := TbsRegistro;
  end;

end;

procedure TFormCadPadrao.BtnExcluirClick(Sender: TObject);
begin
  if not QryMain.IsEmpty then
    QryMain.Delete;
end;

procedure TFormCadPadrao.BtnSalvarClick(Sender: TObject);
begin
  if (QryMain.State in[dsInsert, dsEdit]) and (Validado) then
    QryMain.Post;
  PageControl1.ActivePage := TbsLista;
end;

procedure TFormCadPadrao.FormCreate(Sender: TObject);
begin
  QryMain.Open;
end;

procedure TFormCadPadrao.FormDestroy(Sender: TObject);
begin
  QryMain.Close;
end;

procedure TFormCadPadrao.BtnCancelarClick(Sender: TObject);
begin
  if QryMain.State in([dsInsert, dsEdit]) then
    QryMain.Cancel;
  PageControl1.ActivePage := TbsLista;
end;

function TFormCadPadrao.Validado: Boolean;
begin
  Result := True;
end;

end.
