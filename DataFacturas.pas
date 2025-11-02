unit DataFacturas;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet,
  frxClass, frxDBSet, fs_ipascal, frCoreClasses;

type
  TDMFacturas = class(TDataModule)

    // Tablas y fuentes de datos
    tbFacturas: TFDTable;
    DSFacturas: TDataSource;
    tbFactDetalles: TFDQuery;
    DSFactDetalles: TDataSource;
    tbFacturasHistorico: TFDTable;
    DSFacturasHistorico: TDataSource;
    tbOfertas: TFDTable;
    DSOfertas: TDataSource;
    tbOfertaReport: TFDTable;
    DSOfertaReport: TDataSource;
    tbPreciosR: TFDTable;
    DSPreciosR: TDataSource;
    tbClientes: TFDTable;
    DSClientes: TDataSource;
    tbClasif_Servicio: TFDTable;
    DSClasif_Servicio: TDataSource;
    tbClasif_Descrip: TFDTable;
    DSClasif_Descrip: TDataSource;
    tbClasif_Precios: TFDTable;
    DSClasif_Precios: TDataSource;

    // Reportes
    ReportCooperativas: TfrxReport;
    ReportTarjetas: TfrxReport;
    ReporteTarjetas: TfrxReport;
    RtbFacturas: TfrxDBDataset;
    RtbCliente: TfrxDBDataset;
    RtbFactDetalles: TfrxDBDataset;
    RtbOfertas: TfrxDBDataset;
    RtbClasif_Precios: TfrxDBDataset;
    tbFacturasNoFactura: TIntegerField;
    tbFacturasFecha: TSQLTimeStampField;
    tbFacturasProveedor: TWideStringField;
    tbFacturasContactoProveed: TWideStringField;
    tbFacturasNoVale: TIntegerField;
    tbClientes1id: TLargeintField;
    tbClientes1IDCLIENTE: TStringField;
    tbClientes1name_cliente: TStringField;
    tbClientes1number_contrato: TStringField;
    tbClientes1direccion: TStringField;
    tbClientes1estado: TIntegerField;
    tbClientes1date_contrato: TSQLTimeStampField;
    tbClientes1Telefonomovil: TStringField;
    tbClientes1Telefonofijo: TStringField;
    tbFactDetallesid_enlace: TIntegerField;
    tbFactDetallesFecha: TSQLTimeStampField;
    tbFactDetallesServicio: TWideStringField;
    tbFactDetallesMaterial: TWideStringField;
    tbFactDetallesPrecio: TCurrencyField;
    tbFactDetallesCantidadHojas: TSmallintField;
    tbFactDetallesCantporHojas: TIntegerField;
    tbFactDetallesImporte: TCurrencyField;
    tbFactDetallesCantOfertada: TIntegerField;
    tbClientesid: TLargeintField;
    tbClientesIDCLIENTE: TStringField;
    tbClientesname_cliente: TStringField;
    tbClientesnumber_contrato: TStringField;
    tbClientesdireccion: TStringField;
    tbClientesestado: TIntegerField;
    tbClientesdate_contrato: TSQLTimeStampField;
    tbClientesTelefonomovil: TStringField;
    tbClientesTelefonofijo: TStringField;
    tbClasif_Servicioid: TFDAutoIncField;
    tbClasif_ServicioServicio: TWideStringField;
    tbClasif_ServicioHabilitado: TBooleanField;
    tbClasif_Serviciocolor: TStringField;
    tbClasif_Servicioicon: TBlobField;
    tbClasif_Descripid_enlace: TIntegerField;
    tbClasif_Descripfrequently_use: TBooleanField;
    tbClasif_Descripusedate: TSQLTimeStampField;
    tbClasif_DescripDescripcion: TWideStringField;
    tbClasif_DescripHabilitado: TBooleanField;
    tbClasif_DescripCod_Descrip: TIntegerField;
    tbClasif_DescripCodigoProducto: TWideStringField;
    tbClasif_Descripcolor: TStringField;
    tbClasif_DescripServicio: TWideStringField;
    tbClasif_DescripProducto: TWideStringField;
    tbClasif_PreciosID_codigo: TFDAutoIncField;
    tbClasif_Preciosid_enlace: TLargeintField;
    tbClasif_PreciosDetalles: TWideStringField;
    tbClasif_PreciosPrecio: TCurrencyField;
    tbClasif_PreciosCantidad: TSmallintField;
    tbFacturasHistoricoNoFactura: TLargeintField;
    tbFacturasHistoricoFecha: TSQLTimeStampField;
    tbFacturasHistoricoProveedor: TWideStringField;
    tbFacturasHistoricoContactoProveed: TWideStringField;
    tbFacturasHistoricoNoVale: TIntegerField;

    procedure tbFacturasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFacturas: TDMFacturas;

implementation

uses
  DCaja, DataClasif_U, ConexionDM, Facturas;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDMFacturas.tbFacturasAfterPost(DataSet: TDataSet);
begin
  tbFacturas.Refresh;
end;

end.
