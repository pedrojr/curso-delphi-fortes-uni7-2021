unit CheckLstHelper;

interface

uses
  Vcl.CheckLst;

type
  TCheckListBoxHelper = class helper for TCheckListBox
  public
    procedure Reverse;
  end;

implementation

{ TCheckListBoxHelper }

procedure TCheckListBoxHelper.Reverse;
var
  I: Integer;
begin
  for I := 0 to Items.Count -1 do
    Checked[I] := not Checked[I];
end;

end.
