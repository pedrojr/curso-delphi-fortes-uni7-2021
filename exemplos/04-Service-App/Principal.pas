unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs;

type
  TSvcTeste = class(TService)
    procedure ServiceExecute(Sender: TService);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  SvcTeste: TSvcTeste;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  SvcTeste.Controller(CtrlCode);
end;

function TSvcTeste.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TSvcTeste.ServiceExecute(Sender: TService);
begin
  //Tarefa
end;

end.
