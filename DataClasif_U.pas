unit DataClasif_U;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF, frCoreClasses;

type
  TDM_Clasif_U = class(TDataModule)
    DSClasif_Servicio: TDataSource;
    DSClasif_Descrip: TDataSource;
    DSClasif_Precios: TDataSource;
    DSCostos: TDataSource;
    DSOfertas: TDataSource;

    Tb_servicio: TFDQuery;
    Tb_servicioid: TFDAutoIncField;
    Tb_servicioServicio: TWideStringField;
    Tb_serviciocolor: TStringField;
    Tb_servicioHabilitado: TBooleanField;
    Tb_servicioicon: TBlobField;

    tb_Precios: TFDQuery;
    tb_PreciosID_codigo: TIntegerField;
    tb_Preciosid_enlace: TLargeintField;
    tb_PreciosDetalles: TWideStringField;
    tb_PreciosPrecio: TCurrencyField;
    tb_PreciosCantidad: TSmallintField;
    tb_PreciosReglaCarrito: TLargeintField;
    tb_PreciosPrecioRegla: TCurrencyField;
    tbOfertas: TFDTable;
    tbOfertasid: TIntegerField;
    tbOfertasOfertas: TWideStringField;
    tbOfertasCantidadHojas: TIntegerField;
    tbOfertasCantidad_Tarjetas: TIntegerField;
    tbOfertasCantidadOfertada: TIntegerField;

    costosGeneralesSUM: TFDQuery;
    costosGeneralesSUMid_enlace: TIntegerField;
    costosGeneralesSUMTipoGasto: TWideStringField;
    costosGeneralesSUMGasto: TCurrencyField;
    DScostosGeneralesSUM: TDataSource;

    costosInsumosSUM: TFDQuery;
    costosInsumosSUMid_enlace: TIntegerField;
    costosInsumosSUMTipoGasto: TWideStringField;
    costosInsumosSUMGasto: TCurrencyField;
    DScostosInsumosSUM: TDataSource;

    DSReglas: TDataSource;
    tbReglas: TFDQuery;
    tbReglasID: TLargeintField;
    tbReglasid_enlace: TLargeintField;
    tbReglascantI: TCurrencyField;
    tbReglasCantF: TCurrencyField;
    tbReglasprecio: TCurrencyField;
    tbReglasdescuento: TCurrencyField;

    Tbdescrip: TFDQuery;

    PDFExport: TfrxPDFExport;
    ReportCode: TfrxReport;
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
    tbCosto: TFDTable;
    tbCostoid_enlace: TIntegerField;
    tbCostoTipoGasto: TWideStringField;
    tbCostoDetalles: TWideStringField;
    tbCostoCosto: TCurrencyField;
    tbCostoCantidad: TCurrencyField;
    tbCostoGasto: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Clasif_U: TDM_Clasif_U;

implementation

uses
  Dcaja, ConexionDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
