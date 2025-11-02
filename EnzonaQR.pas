unit EnzonaQR;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Data.DB,   
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter;

type
  TdataEnzonaQR = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequestQR: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    tbtempcode: TFDMemTable;
    tbtempcodevendor_identity_code: TWideStringField;
    tbtempcodecreate_at: TWideStringField;
    tbtempcodeupdate_at: TWideStringField;
    DStoken: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dataEnzonaQR: TdataEnzonaQR;

implementation

uses ConexionDM, Venta;
{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
