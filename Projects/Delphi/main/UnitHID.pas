unit UnitHID;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormHID = class(TForm)
    PInfo: TPanel;
    LStatus: TLabel;
    BReset: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHID: TFormHID;

implementation

{$R *.dfm}

end.
