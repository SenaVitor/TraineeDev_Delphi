unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Conexao, CadEventos1, CadCargos1, CadFuncionarios1,
  ProcLancarEventosFuncionarios;

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
    procedure EventosClick(Sender: TObject);
    procedure CargosClick(Sender: TObject);
    procedure CadFuncionariosClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure eventofuncionriosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.CadFuncionariosClick(Sender: TObject);
begin
  FormFuncionarios1 := TFormFuncionarios1.Create(Self);
  FormFuncionarios1.ShowModal;
  FormFuncionarios1.Free;
end;

procedure TFrmPrincipal.CargosClick(Sender: TObject);
begin
  FormCargos1:= TFormCargos1.Create(Self);
  FormCargos1.ShowModal;
  FormCargos1.Free;
end;

procedure TFrmPrincipal.eventofuncionriosClick(Sender: TObject);
begin
  FormLancarEventosFuncionarios := TFormLancarEventosFuncionarios.Create(Self);
  FormLancarEventosFuncionarios.ShowModal;
  FormLancarEventosFuncionarios.Free;
end;

procedure TFrmPrincipal.EventosClick(Sender: TObject);
begin
  FormEventos1 := TFormEventos1.Create(Self);
  FormEventos1.ShowModal;
  FormEventos1.Free;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  DM.Free;
end;

procedure TFrmPrincipal.SairClick(Sender: TObject);
begin
  Close;
end;



end.
