unit D00XU00A;

interface

uses
  ZDataset, Vcl.Forms, SysUtils, Vcl.Dialogs;

function fncGeraId(nmTabela, nmColuna: string): integer;

implementation

uses
  D00CU01A, D00SU01A, ZAbstractConnection;

function fncGeraId(nmTabela, nmColuna: string): integer;
var
  _rQry: TPQuery;
begin
  Result := 0;
  _rQry := TPQuery.Create(Application);
  with _rQry, SQL do
  begin
    try
      Add('SELECT');
      Add('  MAX(' + nmColuna + ') ' + nmColuna);
      Add('FROM');
      Add('  ' + nmTabela);
      //try
      try
        Open;
      except
        on E1: Exception do
        begin
          //código para liberação de recursos
          try
            // O Assert gera uma exceção com o nome do programa e a linha em que ocorreu o erro
            Assert(False);
          except
            on E2: EAssertionFailed do
              // código para inclusão mensagem personalizada
              //proGeraErro(__rERRO_CALCULAR_IVA, E1.Message, E2.Message, '');
          end;
        end;
      end;
        if isEmpty then
        begin
          Result := 1;
          Exit
        end;
        Result := _rQry.FieldByName(nmColuna).Value + 1;
      {Except
      on e: Exception do
        showMessage(e.Message+' '+#13+' Erro: ' +Text);
      end;}
    finally
      _rQry.Free;
    end;
  end;
end;

end.
