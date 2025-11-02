unit enzonapayment;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,    DCaja,
  REST.Types, REST.Client, REST.Response.Adapter,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  Tpaymentenzona = class(TDataModule)
    tbOperacion: TFDQuery;
    DSOperacion: TDataSource;
    DSamount: TDataSource;
    tbOperacionid: TIntegerField;
    tbOperacionmerchant_uuid: TStringField;
    tbOperacionmerchant_op_id: TStringField;
    tbOperaciondescription: TStringField;
    tbOperacionreturn_url: TStringField;
    tbOperacioncurrency: TStringField;
    tbOperacioninvoice_number: TStringField;
    tbOperacioncancel_url: TStringField;
    tbOperacionbuyer_identity_code: TStringField;
    tbOperacionterminal_id: TStringField;
    tbOperacionid_Caja: TLargeintField;

    items: TFDQuery;
    itemsenlace_id: TLargeintField;
    itemsname: TWideStringField;
    itemsdescription: TWideStringField;
    itemsquantity: TIntegerField;
    itemsprice: TCurrencyField;
    itemstax: TStringField;

    amount: TFDQuery;
    amountid_Caja: TLargeintField;
    amounttotal: TStringField;

    details: TFDQuery;
    detailstax: TStringField;
    detailsid_caja: TIntegerField;
    detailsshipping: TCurrencyField;
    detailsdiscount: TCurrencyField;
    detailstip: TCurrencyField;

    tbDetails: TFDQuery;
    tbDetailsid_caja: TIntegerField;
    tbDetailsshipping: TCurrencyField;
    tbDetailsdiscount: TCurrencyField;
    tbDetailstax: TCurrencyField;
    tbDetailstip: TCurrencyField;
    DStbDetails: TDataSource;

    tbComerceEnzona: TFDQuery;
    tbComerceEnzonaID: TIntegerField;
    tbComerceEnzonaproducer: TIntegerField;
    tbComerceEnzonacomercio: TStringField;
    tbComerceEnzonamerchant_uuid: TStringField;
    tbComerceEnzonaConsumer_Key: TStringField;
    tbComerceEnzonaConsumer_Secret: TStringField;
    tbComerceEnzonascope: TStringField;
    tbComerceEnzonareturn_url: TStringField;
    tbComerceEnzonacancel_url: TStringField;
    tbComerceEnzonacurrency: TStringField;

    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    GetPay: TRESTRequest;
    RESTResponseGetPayment: TRESTResponse;
    RESTResponseDataSetAdapterGEtPay: TRESTResponseDataSetAdapter;
    DataResponse_GetPay: TFDMemTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  paymentenzona: Tpaymentenzona;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
 uses ConexionDM, DesgloseBanco;
{$R *.dfm}

end.
