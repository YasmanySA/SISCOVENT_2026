unit Backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.UI.Intf, FireDAC.Stan.Async, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.VCLUI.Script, FireDAC.Comp.UI,
  FireDAC.Stan.Intf, FireDAC.Comp.Script, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB;

type
  TFBackUp = class(TForm)
    Button1: TButton;
    Backup: TFDScript;
    Timer1: TTimer;
    ScrollBar1: TScrollBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBackUp: TFBackUp;

implementation

uses Dcaja, ConexionDM;

{$R *.dfm}

end.
