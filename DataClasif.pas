unit DataClasif;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.ODBC,
  FireDAC.Phys.ODBCDef, FireDAC.VCLUI.Wait, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF, frCoreClasses;

type
  TDM_Clasif_E = class(TDataModule)
    PDFExport: TfrxPDFExport;
    ReportCode: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;

    // DataSources
    DStbDetallesGastosC: TDataSource;
    DSTiposGastos: TDataSource;
    tbTiposGastos2: TFDTable;
    DSTiposGastos2: TDataSource;

    DSDetallesGastosC_Lookup: TDataSource;
    DSDetallesGastosC_Lookup2: TDataSource;

    DSClasif_Servicio: TDataSource;
    DSClasif_Descrip: TDataSource;
    DSClasif_Precios: TDataSource;
    DSCostos: TDataSource;
    DSOfertas: TDataSource;
    DS_servicioPrint: TDataSource;
    DSdescripPrint: TDataSource;
    DS_PreciosPrint: TDataSource;
    DSReglas: TDataSource;
    DS_typeMP: TDataSource;
    DSFormat: TDataSource;
    DSGastosFijos: TDataSource;
    DStype_gasto: TDataSource;
    tbTiposGastos: TFDTable;
    tbDetallesGastosC: TFDTable;
    tbDetallesGastosC_Lookup: TFDTable;
    tbDetallesGastosC_Lookup2: TFDTable;

    Tbdescrip: TFDQuery;
    tb_Precios: TFDQuery;
    tbCosto: TFDTable;
    tbOfertas: TFDTable;
    Tb_servicio: TFDQuery;
    tbCodigoEAN: TFDTable;
    tbInventario: TFDTable;

    Tb_servicioPrint: TFDQuery;
    TbdescripPrint: TFDQuery;
    tb_PreciosPrint: TFDQuery;

    tbReglas: TFDQuery;
    Tb_servicioScript: TFDQuery;

    Insert: TFDQuery;
    q_InsertTypeProducto: TFDQuery;
    tb_typeMP: TFDQuery;
    tbFormat: TFDQuery;
    tbtype_gasto: TFDQuery;
    UniQuery1: TFDQuery;

    // Campos
    tbTiposGastosID: TIntegerField;
    tbTiposGastosTiposGastos: TStringField;

    tbTiposGastos2ID: TIntegerField;
    tbTiposGastos2TiposGastos: TStringField;

    tbDetallesGastosCenlace: TIntegerField;
    tbDetallesGastosCDetallesGastos: TWideStringField;
    tbDetallesGastosCCosto: TCurrencyField;
    tbDetallesGastosCCantidad: TCurrencyField;
    tbDetallesGastosCGasto: TCurrencyField;

    tbDetallesGastosC_Lookupenlace: TIntegerField;
    tbDetallesGastosC_LookupDetallesGastos: TWideStringField;
    tbDetallesGastosC_LookupCosto: TCurrencyField;
    tbDetallesGastosC_LookupCantidad: TCurrencyField;
    tbDetallesGastosC_LookupGasto: TCurrencyField;

    tbDetallesGastosC_Lookup2enlace: TIntegerField;
    tbDetallesGastosC_Lookup2DetallesGastos: TWideStringField;
    tbDetallesGastosC_Lookup2Costo: TCurrencyField;
    tbDetallesGastosC_Lookup2Cantidad: TCurrencyField;
    tbDetallesGastosC_Lookup2Gasto: TCurrencyField;

    tbCostoid_enlace: TIntegerField;
    tbCostoTipoGasto: TWideStringField;
    tbCostoDetalles: TWideStringField;
    tbCostoCosto: TCurrencyField;
    tbCostoCantidad: TCurrencyField;
    tbCostoGasto: TCurrencyField;

    tbOfertasid: TIntegerField;
    tbOfertasOfertas: TWideStringField;
    tbOfertasCantidadHojas: TIntegerField;
    tbOfertasCantidad_Tarjetas: TIntegerField;
    tbOfertasCantidadOfertada: TIntegerField;
    tb_PreciosID_codigo: TFDAutoIncField;
    tb_Preciosid_enlace: TLargeintField;
    tb_PreciosDetalles: TWideStringField;
    tb_PreciosPrecio: TCurrencyField;
    tb_PreciosCantidad: TSmallintField;
    tb_PreciosReglaCarrito: TLargeintField;
    tb_PreciosPrecioRegla: TCurrencyField;

    tbReglasID: TLargeintField;
    tbReglasid_enlace: TLargeintField;
    tbReglasprecio: TCurrencyField;
    tbReglasdescuento: TCurrencyField;
    tbReglascantI: TCurrencyField;
    tbReglasCantF: TCurrencyField;
    Tb_servicioid: TFDAutoIncField;
    Tb_servicioServicio: TWideStringField;
    Tb_servicioHabilitado: TBooleanField;
    Tb_serviciocolor: TStringField;
    Tb_servicioicon: TBlobField;
    Tbdescripid_enlace: TIntegerField;
    Tbdescripfrequently_use: TBooleanField;
    Tbdescripusedate: TSQLTimeStampField;
    TbdescripDescripcion: TWideStringField;
    TbdescripHabilitado: TBooleanField;
    TbdescripCod_Descrip: TIntegerField;
    TbdescripCodigoProducto: TWideStringField;
    Tbdescripcolor: TStringField;
    TbdescripServicio: TWideStringField;
    TbdescripProducto: TWideStringField;
    tbInventarioID: TFDAutoIncField;
    tbInventarioCODIGO: TStringField;
    tbInventarioINSUMO: TStringField;
    tbInventarioEntrada: TFMTBCDField;
    tbInventarioFechaEntrada: TDateField;
    tbInventarioConsumo: TFMTBCDField;
    tbInventarioFechaConsumo: TDateField;
    tbInventarioExistenciaFinal: TFMTBCDField;
    tb_typeMPID: TFDAutoIncField;
    tb_typeMPlang: TStringField;
    tb_typeMPid_usable: TStringField;
    tb_typeMPid_enlace: TIntegerField;
    tb_typeMPPrecio: TCurrencyField;
    tb_typeMPCantidad: TIntegerField;
    tb_typeMPcodebar: TStringField;
    tb_typeMPId_date: TSQLTimeStampField;
    tb_typeMPprice_unit: TCurrencyField;
    tbCodigoEANCodigoPais: TWideStringField;
    tbCodigoEANCodigoEmpresa: TWideStringField;
    tbCodigoEANCodigo: TWideStringField;
    tbGastosFijos: TFDQuery;
    tbGastosFijosid_enlace: TIntegerField;
    tbGastosFijosImporteTotal: TCurrencyField;
    tbGastosFijosfrecuency: TMemoField;
    tbGastosFijosID: TIntegerField;
    tbGastosFijosactive: TStringField;
    tbGastosFijosdefaultAmount: TLargeintField;

    procedure TbdescripAfterPost(DataSet: TDataSet);
    procedure tbDetallesGastosCAfterPost(DataSet: TDataSet);
    procedure tbCostoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Clasif_E: TDM_Clasif_E;

implementation

uses Dcaja, ConexionDM, DataClasif_U, Servicios;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM_Clasif_E.tbCostoAfterPost(DataSet: TDataSet);
begin
  tbCosto.Refresh;
end;

procedure TDM_Clasif_E.TbdescripAfterPost(DataSet: TDataSet);
begin
  Tbdescrip.Refresh;
end;

procedure TDM_Clasif_E.tbDetallesGastosCAfterPost(DataSet: TDataSet);
begin
  tbTiposGastos2.Refresh;
  tbDetallesGastosC_Lookup.Refresh;
  tbDetallesGastosC_Lookup2.Refresh;
end;

end.
