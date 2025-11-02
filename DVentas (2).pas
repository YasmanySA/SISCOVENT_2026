unit Dcaja;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.ODBC,
  FireDAC.Phys.ODBCDef, FireDAC.VCLUI.Wait, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove, FireDAC.Comp.Client,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.ASAWrapper, FireDAC.Phys.ASA,    UniDacVcl,
  UniProvider, ODBCUniProvider, AccessUniProvider, CRBatchMove,
  MyConnectForm, SQLServerUniProvider, FireDAC.VCLUI.Login, FireDAC.Comp.UI,
  MySQLUniProvider;

type
  TmdataVentas = class(TDataModule)
    DSVentasCaja: TDataSource;
    DSHistorico_Ventas: TDataSource;
    tbCaja: TFDQuery;
    tbVentasOperaciones: TFDQuery;
    DSVentasOperaciones: TDataSource;
    tbOperacionesTotal: TFDQuery;
    tbOperacionesTotalenlace_id: TLargeintField;
    tbOperacionesTotalTotalGenerales: TCurrencyField;
    tbOperacionesTotalTotalInsumos: TCurrencyField;
    tbOperacionesTotalSubtotalCUP: TCurrencyField;
    tbVentasOperacionesID: TLargeintField;
    tbVentasOperacionesenlace_id: TLargeintField;
    tbVentasOperacionesenlace_operacion: TStringField;
    tbVentasOperacionesFecha: TDateTimeField;
    tbVentasOperacioneshora: TTimeField;
    tbVentasOperacionesServicios: TWideStringField;
    tbVentasOperacionesDescripcion: TWideStringField;
    tbVentasOperacionesPrecioCUP: TCurrencyField;
    tbVentasOperacionesCantidad: TCurrencyField;
    tbVentasOperacionesSubtotalCUP: TCurrencyField;
    tbVentasOperacionesGastosInsumos: TCurrencyField;
    tbVentasOperacionesGastosGenerales: TCurrencyField;
    tbVentasOperacionesTotalInsumos: TCurrencyField;
    tbVentasOperacionesTotalGenerales: TCurrencyField;
    Tbdescrip: TFDQuery;
    DSClasif_Descrip: TDataSource;
    Tbdescripid_enlace: TIntegerField;
    Tbdescripfrequently_use: TBooleanField;
    Tbdescripusedate: TDateTimeField;
    TbdescripDescripcion: TWideStringField;
    TbdescripHabilitado: TBooleanField;
    TbdescripCod_Descrip: TIntegerField;
    TbdescripCodigoProducto: TWideStringField;
    TbdescripProducto: TWideStringField;
    TbdescripServicio: TWideStringField;
    Tbdescripcolor: TStringField;
    q_clearservices_usefrecuenty: TFDQuery;
    IntegerField1: TIntegerField;
    BooleanField2: TBooleanField;
    DateTimeField2: TDateTimeField;
    WideStringField2: TWideStringField;
    BooleanField3: TBooleanField;
    IntegerField2: TIntegerField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    StringField4: TStringField;
    tbVentaOperacionesFind: TFDQuery;
    tbVentaOperacionesFindID: TLargeintField;
    tbVentaOperacionesFindenlace_id: TLargeintField;
    tbVentaOperacionesFindenlace_operacion: TStringField;
    tbVentaOperacionesFindFecha: TDateTimeField;
    tbVentaOperacionesFindhora: TTimeField;
    tbVentaOperacionesFindServicios: TWideStringField;
    tbVentaOperacionesFindDescripcion: TWideStringField;
    tbVentaOperacionesFindPrecioCUP: TCurrencyField;
    tbVentaOperacionesFindCantidad: TCurrencyField;
    tbVentaOperacionesFindSubtotalCUP: TCurrencyField;
    tbVentaOperacionesFindGastosInsumos: TCurrencyField;
    tbVentaOperacionesFindGastosGenerales: TCurrencyField;
    tbVentaOperacionesFindTotalInsumos: TCurrencyField;
    tbVentaOperacionesFindTotalGenerales: TCurrencyField;
    DStbVentaOperacionesFind: TDataSource;
    tbServices: TFDQuery;
    tbServicesServicio: TWideStringField;
    DStbServices: TDataSource;
    tbCajaNoComp: TLargeintField;
    tbCajaNoOperacion: TStringField;
    tbCajaUsuario: TWideStringField;
    tbCajaFecha: TDateTimeField;
    tbCajaHora: TDateTimeField;
    tbCajaTotalVentaCUP: TCurrencyField;
    tbCajaEfectivoCUP: TCurrencyField;
    tbCajaEfectivoEUR: TCurrencyField;
    tbCajaEfectivoUSD: TCurrencyField;
    tbCajaEfectivoCUC: TCurrencyField;
    tbCajaComercioE_CUP: TCurrencyField;
    tbCajaComercioE_USD: TCurrencyField;
    tbCajaNoTarjetaCredito: TStringField;
    tbCajanameComercio: TStringField;
    tbCajaPropina: TCurrencyField;
    tbCajaCambioCUP: TCurrencyField;
    tbCajaGastosGenerales: TCurrencyField;
    tbCajaGastosInsumos: TCurrencyField;
    tbCajahistory: TBooleanField;
    tbCajaVentaCool: TBooleanField;
    qlastnumber: TFDQuery;

    qlastnumberlastnumber: TLargeintField;
    procedure DeleteCajaBatchMoveProgress(Sender: TObject; Percent: Integer);
    procedure MoveHistoricoBatchMoveProgress(Sender: TObject; Percent: Integer);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  mdataVentas: TmdataVentas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ConexionDM, Venta;

{$R *.dfm}

procedure TmdataVentas.DeleteCajaBatchMoveProgress(Sender: TObject;
  Percent: Integer);
begin
tbCaja.Refresh;
end;

procedure TmdataVentas.MoveHistoricoBatchMoveProgress(Sender: TObject;
  Percent: Integer);
begin
mdataVentas.tbCaja.Delete;
 mdataVentas.tbCaja.Refresh;
end;

end.
