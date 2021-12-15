unit SingletonTest;

interface

uses
  Singleton;

type
  TConfig = class
  strict private
    FCfg1: Integer;
    FCfg2: Double;
    FCfg3: string;
  public
    property Cfg1: Integer read FCfg1 write FCfg1;
    property Cfg2: Double read FCfg2 write FCfg2;
    property Cfg3: string read FCfg3 write FCfg3;
  end;

  TConfigSingleton = TSingleton<TConfig>;

implementation

initialization
finalization
  TConfigSingleton.FreeInstance;

end.
