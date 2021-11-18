unit Conexao;

interface

uses
  System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.Client,
  Data.DB, FireDAC.Phys.MySQL;

type
  TDM = class(TDataModule)
    Connection: TFDConnection;
    Transaction: TFDTransaction;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FAppPath: string;
  public
    { Public declarations }
    property AppPath: string read FAppPath;
  end;

var
  DM: TDM;

implementation

uses
  SysUtils, Forms, Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  try
    FAppPath := ExtractFilePath(Application.ExeName);
    Connection.Params.Values['Database'] := FAppPath + 'DADOS.FDB';
    Connection.Connected := True;

    //Exemplo de configuração via código
    //Connection.DriverName := 'FB';
    //Connection.LoginPrompt := False;
    //Connection.Params.Database := 'C:\Projetos\DADOS.FDB';
    //Connection.Params.UserName := 'SYSDBA';
    //Connection.Params.Password := 'masterkey';
    //Connection.Params.Values['Database'] := FAppPath + 'DADOS.FDB';
    //Connection.Params.Values['Server'] := 'localhost';
    //Connection.Params.Values['Port'] := '3050';
    //Connection.Connected := True;
  except
    on E: Exception do
    begin
      ShowMessage('Falha ao iniciar a aplicação. '+ E.Message);
      Application.Terminate;
    end;
  end;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  Connection.Connected := False;
end;

end.
