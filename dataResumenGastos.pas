unit dataResumenGastos;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.DApt;


type
  TDMResumenGastos = class(TDataModule)
    ResumenTrimestralGastosDetallados: TFDQuery;
    DSResumenTrimestralGastosDetallados: TDataSource;
    ResumenGastosDetalladosMensual: TFDQuery;
    DSResumenGastosDetalladosMensual: TDataSource;
    ResumenGastosDetalladosSemanal: TFDQuery;
    DSResumenGastosDetalladosSemanal: TDataSource;
    ResumenGastosDetalladosDiario: TFDQuery;
    DSResumenGastosDetalladosDiario: TDataSource;
    DSResAnualGastosDetalles: TDataSource;
    tbResAnualGastosDetalles: TFDQuery;
    ResumendDiario_pordetalles: TFDQuery;
    DSResumendDiario_pordetalles: TDataSource;
    tbResAnualGastosDetallesAño: TWideStringField;
    tbResAnualGastosDetallestype_gasto: TIntegerField;
    tbResAnualGastosDetallesTiposdeGasto: TStringField;
    tbResAnualGastosDetallesDescripcion: TStringField;
    tbResAnualGastosDetallesFormato: TStringField;
    tbResAnualGastosDetallestamaño: TStringField;
    tbResAnualGastosDetallesCantidad: TIntegerField;
    tbResAnualGastosDetallesTotal: TFMTBCDField;
    ResumenTrimestralGastosDetalladosid_enlace: TWideStringField;
    ResumenTrimestralGastosDetalladosTrimestre: TIntegerField;
    ResumenTrimestralGastosDetalladostype_gasto: TIntegerField;
    ResumenTrimestralGastosDetalladosTiposdeGasto: TStringField;
    ResumenTrimestralGastosDetalladosDescripcion: TStringField;
    ResumenTrimestralGastosDetalladosFormato: TStringField;
    ResumenTrimestralGastosDetalladostamaño: TStringField;
    ResumenTrimestralGastosDetalladosCantidad: TIntegerField;
    ResumenTrimestralGastosDetalladosTotal: TFMTBCDField;
    ResumenGastosDetalladosMensualenlace: TWideStringField;
    ResumenGastosDetalladosMensualMes: TWideStringField;
    ResumenGastosDetalladosMensualID: TWideStringField;
    ResumenGastosDetalladosMensualtype_gasto: TIntegerField;
    ResumenGastosDetalladosMensualTiposdeGasto: TStringField;
    ResumenGastosDetalladosMensualDescripcion: TStringField;
    ResumenGastosDetalladosMensualFormato: TStringField;
    ResumenGastosDetalladosMensualtamaño: TStringField;
    ResumenGastosDetalladosMensualCantidad: TIntegerField;
    ResumenGastosDetalladosMensualTotal: TFMTBCDField;
    ResumenGastosDetalladosSemanalid_enlaceMes: TWideStringField;
    ResumenGastosDetalladosSemanalID_Semana: TIntegerField;
    ResumenGastosDetalladosSemanalMesSorting: TWideStringField;
    ResumenGastosDetalladosSemanaltype_gasto: TIntegerField;
    ResumenGastosDetalladosSemanalTiposdeGasto: TStringField;
    ResumenGastosDetalladosSemanalDescripcion: TStringField;
    ResumenGastosDetalladosSemanalFormato: TStringField;
    ResumenGastosDetalladosSemanaltamaño: TStringField;
    ResumenGastosDetalladosSemanalCantidad: TIntegerField;
    ResumenGastosDetalladosSemanalTotal: TFMTBCDField;
    ResumenGastosDetalladosDiarioid_EnlaFecha: TWideStringField;
    ResumenGastosDetalladosDiarioid_enlacesemana: TIntegerField;
    ResumenGastosDetalladosDiarioFechaDia: TWideStringField;
    ResumenGastosDetalladosDiariotype_gasto: TIntegerField;
    ResumenGastosDetalladosDiarioTiposdeGasto: TStringField;
    ResumenGastosDetalladosDiarioDescripcion: TStringField;
    ResumenGastosDetalladosDiarioFormato: TStringField;
    ResumenGastosDetalladosDiariotamaño: TStringField;
    ResumenGastosDetalladosDiarioCantidad: TIntegerField;
    ResumenGastosDetalladosDiarioTotal: TFMTBCDField;
    ResumendDiario_pordetallesid_EnlaFecha: TWideStringField;
    ResumendDiario_pordetallesid_enlacesemana: TIntegerField;
    ResumendDiario_pordetallesFechaDia: TWideStringField;
    ResumendDiario_pordetallestype_gasto: TIntegerField;
    ResumendDiario_pordetallesTiposdeGasto: TStringField;
    ResumendDiario_pordetallesDescripcion: TStringField;
    ResumendDiario_pordetallesFormato: TStringField;
    ResumendDiario_pordetallestamaño: TStringField;
    ResumendDiario_pordetallesCantidad: TIntegerField;
    ResumendDiario_pordetallesTotal: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMResumenGastos: TDMResumenGastos;

implementation

//uses DataResumen;
{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
