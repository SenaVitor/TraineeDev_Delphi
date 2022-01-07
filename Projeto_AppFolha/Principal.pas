unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Conexao;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cargos: TMenuItem;
    Eventos: TMenuItem;
    CadFuncionarios: TMenuItem;
    TabelaINSS: TMenuItem;
    TabelaIRRF: TMenuItem;
    CadSair: TMenuItem;
    Processos: TMenuItem;
    Mudancasdesalarios: TMenuItem;
    eventofuncionrios: TMenuItem;
    ProcFolhaPagamento: TMenuItem;
    Relatorios: TMenuItem;
    ReFolhaPagamento: TMenuItem;
    ReFuncionarios: TMenuItem;
    Sair: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  DM.Free;
end;

end.
