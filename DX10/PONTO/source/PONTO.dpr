program PONTO;

uses
  Vcl.Forms,
  DH01A in 'HRN\DH01A.pas' {h_frmPrincipal},
  DF01A in 'FRM\DF01A.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  DH01B in 'HRN\DH01B.pas' {h_frmSobre},
  DU01A in 'UNT\DU01A.pas',
  DH01C in 'HRN\DH01C.pas' {h_frmConfigBase},
  DU01B in 'UNT\DU01B.pas',
  DU01C in 'UNT\DU01C.pas',
  DX01B in 'EXT\DX01B.pas' {frmSobre},
  DX01C in 'EXT\DX01C.pas' {frmConfigBase},
  DF01B in 'FRM\DF01B.pas' {frmCadFeriado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
