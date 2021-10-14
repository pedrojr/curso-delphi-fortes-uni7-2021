unit ExemplosProcedures;

interface

procedure ProcedureA;

procedure ProcedureB; overload;
procedure ProcedureB(Valor: string); overload;

procedure ProcedureC(Valor: string = '');

procedure ProcedureD(const Valor1: string; var Valor2: string; out Valor3: string);
procedure ProcedureE(out Valor: string);

implementation

procedure ProcedureA;
begin
  //rotinas
end;

procedure ProcedureB;
begin
end;

procedure ProcedureB(Valor: string);
begin
end;

procedure ProcedureC(Valor: string = '');
begin

end;

procedure ProcedureD(const Valor1: string; var Valor2: string; out Valor3: string);
begin
  Valor2 := 'abc';
  Valor3 := '123';
  ProcedureE(Valor3);
end;

procedure ProcedureE(out Valor: string);
begin
end;

end.
