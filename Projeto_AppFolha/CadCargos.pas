unit CadCargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Conexao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFormCargos = class(TForm)
    TblCargos: TFDTable;
    TblCargosCODIGO: TIntegerField;
    TblCargosDESCRICAO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DtsCargos: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Button1: TButton;
    TblCargosSTR_CALCULADO: TStringField;
    procedure TblCargosCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCargos: TFormCargos;

implementation

{$R *.dfm}

procedure TFormCargos.Button1Click(Sender: TObject);
begin
  TblCargos.IndexFieldNames := 'CODIGO';
  TblCargos.SetRange([5], [10]);
  TblCargos.ApplyRange;
  Application.ProcessMessages;
  while not TblCargos.Eof do
  begin
    Sleep(2000);
    TblCargos.Next;
    Application.ProcessMessages;
  end;
  ShowMessage('Registros : ' + IntToStr(TblCargos.RecordCount));
  TblCargos.CancelRange;
  ShowMessage('Registros : ' + IntToStr(TblCargos.RecordCount));
end;

procedure TFormCargos.FormCreate(Sender: TObject);
begin
  TblCargos.Open;
end;

procedure TFormCargos.TblCargosCalcFields(DataSet: TDataSet);
begin
  TblCargosSTR_CALCULADO.AsString := TblCargosCODIGO.AsString + ' - ' + TblCargosDESCRICAO.AsString;
end;

end.
