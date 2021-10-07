unit Calcs;

interface

function Somar(A, B: Double): Double; export; stdcall;
function Subtrair(A, B: Double): Double; export; stdcall;
function Multiplicar(A, B: Double): Double; export; stdcall;
function Dividir(A, B: Double): Double; export; stdcall;

implementation

function Somar(A, B: Double): Double; export; stdcall;
begin
  Result := A + B;
end;

function Subtrair(A, B: Double): Double; export; stdcall;
begin
  Result := A - B;
end;

function Multiplicar(A, B: Double): Double; export; stdcall;
begin
  Result := A * B;
end;

function Dividir(A, B: Double): Double; export; stdcall;
begin
  Result := A / B;
end;

end.
