program SISBASE;

uses
  Vcl.Forms,
  D00HF01A in 'D00H\D00HF01A.pas' {h_frmPrincipal},
  D00HF01B in 'D00H\D00HF01B.pas' {h_frmSobre},
  D00HF01C in 'D00H\D00HF01C.pas' {h_frmConfigBase},
  D00SU01A in 'D00S\D00SU01A.pas',
  D00SU01B in 'D00S\D00SU01B.pas',
  D00SU01C in 'D00S\D00SU01C.pas',
  D00XF01B in 'D00X\D00XF01B.pas' {frmSobre},
  D00XF01C in 'D00X\D00XF01C.pas' {frmConfigBase},
  D01SF01A in 'D01S\D01SF01A.pas' {frmPrincipal},
  D01SF01B in 'D01S\D01SF01B.pas' {frmCadFeriado},
  D01SF01C in 'D01S\D01SF01C.pas', System.SysUtils {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSplash, frmSplash);
  //frmSplash := TFrmSplash.Create(Application);
  frmSplash.Show;
  frmSplash.Refresh;
  Sleep(2000);

  frmSplash.Release;
  frmSplash.Free;
  frmSplash := nil;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
