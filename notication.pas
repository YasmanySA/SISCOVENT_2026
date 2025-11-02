unit notication;

interface

uses
  System.SysUtils, System.Classes, System.Notification, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Uni;


type
  Tdata_notify = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  data_notify: Tdata_notify;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ConexionDM;

{$R *.dfm}

end.
