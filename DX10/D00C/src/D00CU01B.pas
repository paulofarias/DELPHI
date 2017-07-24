unit D00CU01B;

interface

uses
  stdCtrls, Classes;

type
  TPLabel = class(TLabel)
  private
    { Privado }
  protected
    { Protegido }
  public
    { Público }
  published
    { Publicado }
  end;

  procedure register;

implementation

procedure register;
begin
  registerComponents('Componentes Diferenciados', [TPLabel]);
end;

end.
