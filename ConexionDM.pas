unit ConexionDM;

interface

uses System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Phys.ODBCBase, FireDAC.Comp.Client, IniFiles,
  Vcl.Forms;

type
  Tdataconex = class(TDataModule)
    ConexDB: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    procedure ConexDBBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    ConfigINI: TIniFile;
    { Public declarations }
  end;

var dataconex: Tdataconex;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure Tdataconex.ConexDBBeforeConnect(Sender: TObject);
var ConfigINI: TIniFile; IniPath: string;
begin
  IniPath := ExtractFilePath(Application.ExeName) + 'Config.ini';
  ConfigINI := TIniFile.Create(IniPath);
  try
    // 🔸 Lee las credenciales y parámetros del archivo INI
    ConexDB.Params.Values['User_Name'] := ConfigINI.ReadString('LoginSQL',
      'User', '');
    ConexDB.Params.Values['Password'] := ConfigINI.ReadString('LoginSQL',
      'Password', '');
    ConexDB.Params.Values['Server'] := ConfigINI.ReadString('LoginSQL',
      'Server', '');
    ConexDB.Params.Values['Database'] := ConfigINI.ReadString('LoginSQL',
      'Database', '');
    ConexDB.Params.Values['DriverID'] := ConfigINI.ReadString('LoginSQL',
      'DriverID', 'MSSQL');

    // 🔸 Evita el diálogo de login
    ConexDB.LoginPrompt := False;

    // 🔸 Desactiva pooling (importante si trabajas desde el IDE y ejecución simultánea)
    ConexDB.Params.Values['Pooled'] := 'False';

  finally ConfigINI.Free;
  end;
end;

end.
