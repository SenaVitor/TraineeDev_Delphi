unit CadEventos1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Conexao, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFormEventos1 = class(TFormCadPadrao)
    QryMainCODIGO: TIntegerField;
    QryMainDESCRICAO: TStringField;
    QryMainTIPO: TIntegerField;
    Label1: TLabel;
    EditCodigo: TDBEdit;
    Label2: TLabel;
    EditDescricao: TDBEdit;
    DrgTipo: TDBRadioGroup;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  protected
  function Validado: Boolean; override;
  public
    { Public declarations }
  end;

var
  FormEventos1: TFormEventos1;

implementation

{$R *.dfm}

procedure TFormEventos1.Button1Click(Sender: TObject);
begin
  inherited;
  if QryMain.Locate('DESCRICAO', Edit1.Text, [loCaseInsensitive, loPartialKey]) then
    PageControl1.ActivePage := TbsRegistro
  else
    ShowMessage('Registro não encontrado');
end;

function TFormEventos1.Validado: Boolean;
begin
  Result := false;
  if EditCodigo.Text = '' then
  begin
    ShowMessage('Código deve ser informado.');
    abort;
  end;
  Result := True;
end;

end.
