unit CadEventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Menus, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TFormEventos = class(TForm)
    QryEventos: TFDQuery;
    DtsEventos: TDataSource;
    QryEventosCODIGO: TIntegerField;
    QryEventosDESCRICAO: TStringField;
    QryEventosTIPO: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Tipo: TDBRadioGroup;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    PageControl1: TPageControl;
    TbsLista: TTabSheet;
    TbsRegistro: TTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEventos: TFormEventos;

implementation

{$R *.dfm}

procedure TFormEventos.Button1Click(Sender: TObject);
begin
  if QryEventos.Locate('DESCRICAO', Edit1.Text, [loCaseInsensitive, loPartialKey]) then
    PageControl1.ActivePage := TbsRegistro
  else
    ShowMessage('Registro n?o encontrado');
end;

procedure TFormEventos.FormCreate(Sender: TObject);
begin
  QryEventos.Open;
end;

end.
