program AppFolha;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FrmPrincipal},
  Conexao in 'Conexao.pas' {DM: TDataModule},
  CadCargos in 'CadCargos.pas' {FormCargos},
  CadEventos in 'CadEventos.pas' {FormEventos},
  CadFuncionarios in 'CadFuncionarios.pas' {FormFuncionarios},
  CadPadrao in 'CadPadrao.pas' {FormCadPadrao},
  CadFuncionarios1 in 'CadFuncionarios1.pas' {FormFuncionarios1},
  ProcLancarEventosFuncionarios in 'Processos\ProcLancarEventosFuncionarios.pas' {FormLancarEventosFuncionarios},
  CadEventos1 in 'CadEventos1.pas' {FormEventos1},
  cadCargos1 in 'cadCargos1.pas' {FormCargos1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
