unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs,
  Vcl.ExtCtrls, UniProvider, SQLServerUniProvider,  UniDacVcl, Data.DB,
   MemDS;

type
  TService3 = class(TService)
    ConexDB: TfdConnection;
    dialogconex: TUniConnectDialog;
    SQLServerUniProvider1: TSQLServerUniProvider;
    temporizador: TTimer;
    TrayIcon1: TTrayIcon;
    tbCalendario: TFDQuery;
    DSCalendario: TDataSource;
    tbCalendarioID: TFloatField;
    tbCalendarioParentID: TWideStringField;
    tbCalendarioType: TWideStringField;
    tbCalendarioStart: TDateTimeField;
    tbCalendarioFinish: TDateTimeField;
    tbCalendarioOptions: TStringField;
    tbCalendarioCaption: TStringField;
    tbCalendarioRecurrenceIndex: TStringField;
    tbCalendarioRecurrenceInfo: TStringField;
    tbCalendarioResourceID: TStringField;
    tbCalendarioLocation: TStringField;
    tbCalendarioMessage: TStringField;
    tbCalendarioReminderDate: TStringField;
    tbCalendarioReminderMinutes: TStringField;
    tbCalendarioState: TStringField;
    tbCalendarioLabelColor: TStringField;
    tbCalendarioActualStart: TStringField;
    tbCalendarioActualFinish: TStringField;
    tbCalendarioSyncIDField: TStringField;
    tbCalendarioFechaDelete: TDateTimeField;
    tbCalendarioestadoExpire: TIntegerField;
    tbCalendarioremanin: TIntegerField;
    procedure ServiceExecute(Sender: TService);
    procedure temporizadorTimer(Sender: TObject);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  Service3: TService3;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Service3.Controller(CtrlCode);
end;

function TService3.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TService3.ServiceExecute(Sender: TService);
begin
  temporizador.Enabled := True;
  while not Terminated do
    ServiceThread.ProcessRequests(True);

end;

procedure TService3.temporizadorTimer(Sender: TObject);
var
  fichero: TStringList;
  remain: integer;
const
  rutaFichero = 'C:\Log.txt';
begin
  tbCalendario.Refresh;
  if tbCalendario.Locate('estadoExpire', 1, []) then

    if tbCalendarioremanin.Value > 0 then
      tbCalendario.Next;

  begin

    if tbCalendarioremanin.Value < 0 then
    begin
      fichero := TStringList.Create;
      if FileExists(rutaFichero) then
        fichero.LoadFromFile(rutaFichero);
      fichero.Add('Fecha:' + DateTimeToStr(Date));

      fichero.Add('Contrato Eliminado porque no se pago Garantia');

      fichero.Add('Contrato:' + tbCalendarioID.Text );
        fichero.Add(tbCalendarioCaption.Text) ;
        fichero.Add(tbCalendarioMessage.Text) ;

        fichero.Add('---------------Fin---------------------');
         fichero.Add('                                       ');
        fichero.SaveToFile(rutaFichero);

        tbCalendario.Delete; tbCalendario.Refresh;

      end; end;

      end;

      end.
