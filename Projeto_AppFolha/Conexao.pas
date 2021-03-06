unit Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDTransaction1: TFDTransaction;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FappPath: string;
  public
    { Public declarations }
    property AppPath: String read FappPath;
  end;

var
  DM: TDM;

implementation

uses
  Vcl.Forms, Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
    FAppPath := ExtractFilePath(Application.ExeName);
    FDConnection1.Params.Values['Database'] := FAppPath + 'APPFOLHA.FDB';
    FDConnection1.Connected := True;

      //Exemplo de configura??o via c?digo
    //Connection.DriverName := 'FB';
    //Connection.LoginPrompt := False;
    //Connection.Params.Database := 'C:\Projetos\DADOS.FDB';
    //Connection.Params.UserName := 'SYSDBA';
    //Connection.Params.Password := 'masterkey';
    //Connection.Params.Values['Database'] := FAppPath + 'DADOS.FDB';
    //Connection.Params.Values['Server'] := 'localhost';
    //Connection.Params.Values['Port'] := '3050';
    //Connection.Connected := True;
  except
    ShowMessage('Falha ao iniciar a aplica??o.');
    Application.Terminate;
  end;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  FDConnection1.Connected := False;
end;

end.
