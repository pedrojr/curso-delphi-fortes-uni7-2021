program ConsoleApp;

{$APPTYPE CONSOLE}

{$R *.res}

var
  I: Integer;
begin
  for I := 0 to ParamCount do
    Writeln('Param: '+ ParamStr(I));
  ReadLn;
end.
