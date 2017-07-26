program SISCOM;

//Pulo do gato!
{$WEAKLINKRTTI ON}

uses
  Vcl.Forms,
  D01SU00A in 'D01SU00A.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  proIniciaPrograma;
  Application.Title := 'SISCOM - Sistema Comerial';
  Application.Run;
end.


