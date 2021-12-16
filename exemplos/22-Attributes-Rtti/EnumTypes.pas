unit EnumTypes;

interface

uses
  EnumAttribute;

type
  [TEnumAttribute('Teste 0;Teste 1;Teste 2;Teste 3')]
  EnumTeste = (opTeste0, opTeste1, opTeste2, opTeste3);

implementation

end.
