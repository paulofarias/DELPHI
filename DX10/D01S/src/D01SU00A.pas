unit D01SU00A;

interface

procedure proIniciaPrograma;

implementation

uses
  Vcl.Forms, D01SF00A, D00XD00A;

procedure proIniciaPrograma;
begin
  Application.CreateForm(TDmDados, dmDados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
end;

end.
