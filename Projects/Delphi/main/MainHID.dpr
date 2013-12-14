program MainHID;

uses
  Vcl.Forms,
  UnitHID in 'UnitHID.pas' {FormHID},
  Hid in 'library\jvcl\run\Hid.pas',
  JvHidControllerClass in 'library\jvcl\run\JvHidControllerClass.pas',
  JvComponentBase in 'library\jvcl\run\JvComponentBase.pas',
  JVCLVer in 'library\jvcl\run\JVCLVer.pas',
  DBT in 'library\jvcl\run\DBT.pas',
  JvSetupApi in 'library\jvcl\run\JvSetupApi.pas',
  ModuleLoader in 'library\jvcl\run\ModuleLoader.pas',
  WinConvTypes in 'library\jvcl\run\WinConvTypes.pas',
  JvTypes in 'library\jvcl\run\JvTypes.pas',
  JvResources in 'library\jvcl\run\JvResources.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormHID, FormHID);
  Application.Run;
end.
