program MainHID;

uses
  Vcl.Forms,
  UnitHID in 'UnitHID.pas' {FormHID};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormHID, FormHID);
  Application.Run;
end.
