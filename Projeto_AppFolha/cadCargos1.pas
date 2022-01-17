unit cadCargos1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Conexao, Vcl.Mask, Vcl.DBCtrls;

type
  TFormCargos1 = class(TFormCadPadrao)
    QryMainCODIGO: TIntegerField;
    QryMainDESCRICAO: TStringField;
    Label1: TLabel;
    EditCodigo: TDBEdit;
    Label2: TLabel;
    EditDescricao: TDBEdit;
  private
    { Private declarations }
  protected
  function Validado: Boolean; override;
  public
    { Public declarations }
  end;

var
  FormCargos1: TFormCargos1;

implementation

{$R *.dfm}

function TFormCargos1.Validado: Boolean;
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
