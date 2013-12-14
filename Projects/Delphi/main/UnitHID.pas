unit UnitHID;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvHidControllerClass;

type
  TFormHID = class(TForm)
    PInfo: TPanel;
    LStatus: TLabel;
    BReset: TButton;
    procedure FormCreate(Sender: TObject);

    //Срабатывает при подключении
    procedure onArrival(HidDev: TJvHidDevice);
    //Срабатывает при отключении
    procedure onRemoval(HidDev: TJvHidDevice);
    //Срабатывает при подключении или отключении
    procedure onChange(AObject: TObject);

    procedure setStatus(status: string);
    procedure BResetClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHID: TFormHID;
  Controller: TJvHidDeviceController;

implementation

{$R *.dfm}

procedure TFormHID.FormCreate(Sender: TObject);
begin
  Controller := TJvHidDeviceController.Create(Self);
  Controller.OnArrival := onArrival;
  Controller.OnRemoval := onRemoval;
  Controller.OnDeviceChange := onChange;
end;

procedure TFormHID.setStatus(status: string);
begin
  LStatus.Caption := status;
end;

procedure TFormHID.onArrival(HidDev: TJvHidDevice);
begin
  FormHID.setStatus('On');
end;

procedure TFormHID.onRemoval(HidDev: TJvHidDevice);
begin
  FormHID.setStatus('Off');
end;

procedure TFormHID.onChange(AObject: TObject);
begin
  //If need
end;

procedure TFormHID.BResetClick(Sender: TObject);
begin
  FormHID.setStatus('Reset');
end;

end.
