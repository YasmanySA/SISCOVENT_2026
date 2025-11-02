unit dataVentas;

interface

uses
  System.SysUtils, System.Classes, Data.DB,   UniProvider,
  SQLServerUniProvider,  CRBatchMove;

type
  TDataModule1 = class(TDataModule)
    MoveHistorico: TCRBatchMove;
    DSVentasCaja: TDataSource;
    tbHistorico_Ventas: TFDTable;
    tbHistorico_VentasNoComp: TLargeintField;
    tbHistorico_VentasUsuario: TWideStringField;
    tbHistorico_VentasFecha: TDateTimeField;
    tbHistorico_VentasHora: TDateTimeField;
    tbHistorico_VentasTotalCUP: TCurrencyField;
    tbHistorico_VentasTotalCUC: TCurrencyField;
    tbHistorico_VentasEfectivoCUC: TCurrencyField;
    tbHistorico_VentasEfectivoMN: TCurrencyField;
    tbHistorico_VentasEfectivoUSD: TCurrencyField;
    tbHistorico_VentasEfectivoEUR: TCurrencyField;
    tbHistorico_VentasTarjetaCredito: TCurrencyField;
    tbHistorico_VentasCambioCUC: TCurrencyField;
    tbHistorico_VentasCambioCUP: TCurrencyField;
    tbHistorico_VentasPropina: TCurrencyField;
    tbHistorico_VentasGastosGenerales: TCurrencyField;
    tbHistorico_VentasGastosInsumos: TCurrencyField;
    tbHistorico_VentasVentaCool: TBooleanField;
    DSHistorico_Ventas: TDataSource;
    SQLServerUniProvider1: TSQLServerUniProvider;
    tbCaja: TFDQuery;
    tbCajaNoComp: TLargeintField;
    tbCajaNoOperacion: TStringField;
    tbCajaUsuario: TWideStringField;
    tbCajaFecha: TDateField;
    tbCajaHora: TDateTimeField;
    tbCajaTotalVentaCUP: TCurrencyField;
    tbCajaEfectivoCUC: TCurrencyField;
    tbCajaEfectivoCUP: TCurrencyField;
    tbCajaEfectivoUSD: TCurrencyField;
    tbCajaEfectivoEUR: TCurrencyField;
    tbCajaComercioE_CUP: TCurrencyField;
    tbCajaComercioE_USD: TCurrencyField;
    tbCajaNoTarjetaCredito: TStringField;
    tbCajanameComercio: TStringField;
    tbCajaCambioCUP: TFloatField;
    tbCajaPropina: TCurrencyField;
    tbCajaGastosGenerales: TCurrencyField;
    tbCajaGastosInsumos: TCurrencyField;
    tbCajaVentaCool: TBooleanField;
    ConexDB: TfdConnection;
    Tbdescrip: TFDQuery;
    Tbdescripid_enlace: TIntegerField;
    TbdescripServicio: TWideStringField;
    TbdescripCod_Descrip: TIntegerField;
    TbdescripCodigoProducto: TWideStringField;
    TbdescripProducto: TWideStringField;
    TbdescripDescripcion: TWideStringField;
    DSClasif_Descrip: TDataSource;
    tbVentasOperaciones: TFDQuery;
    tbVentasOperacionesID: TLargeintField;
    tbVentasOperacionesenlace_id: TLargeintField;
    tbVentasOperacionesFecha: TDateField;
    tbVentasOperacionesServicios: TWideStringField;
    tbVentasOperacionesDescripcion: TWideStringField;
    tbVentasOperacionesPrecioCUP: TCurrencyField;
    tbVentasOperacionesPrecioCUC: TCurrencyField;
    tbVentasOperacionesCantidad: TCurrencyField;
    tbVentasOperacionesSubtotalCUP: TCurrencyField;
    tbVentasOperacionesSubtotalCUC: TCurrencyField;
    tbVentasOperacionesGastosInsumos: TCurrencyField;
    tbVentasOperacionesGastosGenerales: TCurrencyField;
    tbVentasOperacionesTotalInsumos: TCurrencyField;
    tbVentasOperacionesTotalGenerales: TCurrencyField;
    DSVentasOperaciones: TDataSource;
    tbOperacionesTotal: TFDQuery;
    tbOperacionesTotalenlace_id: TLargeintField;
    tbOperacionesTotalTotalGenerales: TCurrencyField;
    tbOperacionesTotalTotalInsumos: TCurrencyField;
    tbOperacionesTotalSubtotalCUP: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
