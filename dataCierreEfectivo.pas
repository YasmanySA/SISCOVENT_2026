unit dataCierreEfectivo;

interface

uses System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDMCierre = class(TDataModule)
    DSCierreCUP: TDataSource;
    dbDesgloseCierre: TFDQuery;
    DSCierreExtraciones: TDataSource;
    Q_CierreExtraciones: TFDQuery;
    DSFondoCaja: TDataSource;
    Q_FondoCaja: TFDQuery;
    InsertPeriodo: TFDQuery;
    Q_CierreDiario: TFDQuery;
    Q_PEriodo: TFDQuery;
    Q_PEriodoPeriodo: TWideStringField;
    Q_PEriodoHistory: TBooleanField;
    Q_PEriodoID: TDateField;
    Q_PeriodoMensual: TFDQuery;
    tb_state: TFDQuery;
    tb_stateID: TIntegerField;
    tb_statelang: TStringField;
    Tbperiodoscierre: TFDQuery;
    TbperiodoscierreID: TIntegerField;
    TbperiodoscierrePeriodo: TDateField;
    Tbperiodoscierrestate: TBooleanField;
    DS_PEriodo: TDataSource;
    DS_state: TDataSource;
    DSCierreDiario: TDataSource;
    DSPeriodoMensual: TDataSource;
    DSperiodoscierre: TDataSource;
    dbDesgloseCierreID: TLargeintField;
    dbDesgloseCierreFecha: TSQLTimeStampField;
    dbDesgloseCierreIntegerField100: TIntegerField;
    dbDesgloseCierreSubtotal_1: TIntegerField;
    dbDesgloseCierreIntegerField300: TIntegerField;
    dbDesgloseCierreSubtotal_3: TIntegerField;
    dbDesgloseCierreIntegerField500: TIntegerField;
    dbDesgloseCierreSubtotal_5: TIntegerField;
    dbDesgloseCierreIntegerField1000: TIntegerField;
    dbDesgloseCierreSubtotal_10: TIntegerField;
    dbDesgloseCierreIntegerField2000: TIntegerField;
    dbDesgloseCierreSubtotal_20: TIntegerField;
    dbDesgloseCierreIntegerField5000: TIntegerField;
    dbDesgloseCierreSubtotal_50: TIntegerField;
    dbDesgloseCierreIntegerField10000: TIntegerField;
    dbDesgloseCierreSubtotal_100: TIntegerField;
    dbDesgloseCierreIntegerField20000: TIntegerField;
    dbDesgloseCierreSubtotal_200: TIntegerField;
    dbDesgloseCierreIntegerField50000: TIntegerField;
    dbDesgloseCierreSubtotal_500: TIntegerField;
    dbDesgloseCierreIntegerField100000: TIntegerField;
    dbDesgloseCierreSubtotal_1000: TIntegerField;
    dbDesgloseCierreCUP_Banco: TCurrencyField;
    dbDesgloseCierreMLC_Banco: TCurrencyField;
    dbDesgloseCierreMLC_cambio: TCurrencyField;
    dbDesgloseCierreSubtotal_MLC: TCurrencyField;
    dbDesgloseCierreUSD: TCurrencyField;
    dbDesgloseCierreUSD_cambio: TCurrencyField;
    dbDesgloseCierreSubtotal_USD: TCurrencyField;
    dbDesgloseCierreEUR: TCurrencyField;
    dbDesgloseCierreEUR_cambio: TCurrencyField;
    dbDesgloseCierreSubtotal_EUR: TCurrencyField;
    dbDesgloseCierreTotal: TCurrencyField;
    dbDesgloseCierrehistory: TBooleanField;
    Q_CierreExtracionesID: TLargeintField;
    Q_CierreExtracionesFecha: TSQLTimeStampField;
    Q_CierreExtracionesIntegerField100: TIntegerField;
    Q_CierreExtracionesSubtotal_1: TIntegerField;
    Q_CierreExtracionesIntegerField300: TIntegerField;
    Q_CierreExtracionesSubtotal_3: TIntegerField;
    Q_CierreExtracionesIntegerField500: TIntegerField;
    Q_CierreExtracionesSubtotal_5: TIntegerField;
    Q_CierreExtracionesIntegerField1000: TIntegerField;
    Q_CierreExtracionesSubtotal_10: TIntegerField;
    Q_CierreExtracionesIntegerField2000: TIntegerField;
    Q_CierreExtracionesSubtotal_20: TIntegerField;
    Q_CierreExtracionesIntegerField5000: TIntegerField;
    Q_CierreExtracionesSubtotal_50: TIntegerField;
    Q_CierreExtracionesIntegerField10000: TIntegerField;
    Q_CierreExtracionesSubtotal_100: TIntegerField;
    Q_CierreExtracionesIntegerField20000: TIntegerField;
    Q_CierreExtracionesSubtotal_200: TIntegerField;
    Q_CierreExtracionesIntegerField50000: TIntegerField;
    Q_CierreExtracionesSubtotal_500: TIntegerField;
    Q_CierreExtracionesIntegerField100000: TIntegerField;
    Q_CierreExtracionesSubtotal_1000: TIntegerField;
    Q_CierreExtracionesCUP_Banco: TCurrencyField;
    Q_CierreExtracionesMLC_Banco: TCurrencyField;
    Q_CierreExtracionesMLC_cambio: TCurrencyField;
    Q_CierreExtracionesSubtotal_MLC: TCurrencyField;
    Q_CierreExtracionesUSD: TCurrencyField;
    Q_CierreExtracionesUSD_cambio: TCurrencyField;
    Q_CierreExtracionesSubtotal_USD: TCurrencyField;
    Q_CierreExtracionesEUR: TCurrencyField;
    Q_CierreExtracionesEUR_cambio: TCurrencyField;
    Q_CierreExtracionesSubtotal_EUR: TCurrencyField;
    Q_CierreExtracionesTotal: TCurrencyField;
    Q_CierreExtracioneshistory: TBooleanField;
    Q_FondoCajaID: TLargeintField;
    Q_FondoCajaid_enlacedate: TSQLTimeStampField;
    Q_FondoCajaFecha: TSQLTimeStampField;
    Q_FondoCajaIntegerField100: TIntegerField;
    Q_FondoCajaSubtotal_1: TIntegerField;
    Q_FondoCajaIntegerField300: TIntegerField;
    Q_FondoCajaSubtotal_3: TIntegerField;
    Q_FondoCajaIntegerField500: TIntegerField;
    Q_FondoCajaSubtotal_5: TIntegerField;
    Q_FondoCajaIntegerField1000: TIntegerField;
    Q_FondoCajaSubtotal_10: TIntegerField;
    Q_FondoCajaIntegerField2000: TIntegerField;
    Q_FondoCajaSubtotal_20: TIntegerField;
    Q_FondoCajaIntegerField5000: TIntegerField;
    Q_FondoCajaSubtotal_50: TIntegerField;
    Q_FondoCajaIntegerField10000: TIntegerField;
    Q_FondoCajaSubtotal_100: TIntegerField;
    Q_FondoCajaIntegerField20000: TIntegerField;
    Q_FondoCajaSubtotal_200: TIntegerField;
    Q_FondoCajaIntegerField50000: TIntegerField;
    Q_FondoCajaSubtotal_500: TIntegerField;
    Q_FondoCajaIntegerField100000: TIntegerField;
    Q_FondoCajaSubtotal_1000: TIntegerField;
    Q_FondoCajaTotal: TIntegerField;
    Q_PeriodoMensualid_enlace: TWideStringField;
    Q_PeriodoMensualSemana: TIntegerField;
    Q_PeriodoMensualDesde: TSQLTimeStampField;
    Q_PeriodoMensualHasta: TSQLTimeStampField;
    Q_PeriodoMensualTotalVenta: TCurrencyField;
    Q_PeriodoMensualPropina: TCurrencyField;
    Q_PeriodoMensualGastos: TFMTBCDField;
    Q_PeriodoMensualUtilidad: TFMTBCDField;
    Q_CierreDiarioid_enlace: TWideStringField;
    Q_CierreDiarioFecha: TSQLTimeStampField;
    Q_CierreDiarioTotalVentaCUP: TCurrencyField;
    Q_CierreDiarioEfectivoCUP: TCurrencyField;
    Q_CierreDiarioEfectivoCUC: TCurrencyField;
    Q_CierreDiarioEfectivoUSD: TCurrencyField;
    Q_CierreDiarioEfectivoEUR: TCurrencyField;
    Q_CierreDiarioComercioE_CUP: TCurrencyField;
    Q_CierreDiarioComercioE_USD: TCurrencyField;
    Q_CierreDiarioPropina: TCurrencyField;
    Q_CierreDiarioGastos: TFMTBCDField;
    Q_CierreDiarioUtilidad: TFMTBCDField;
    Q_CierreDiarioTotalDesglose: TCurrencyField;
    Q_CierreDiarioTotalVentaConPropina: TCurrencyField;
    Q_CierreDiarioBalance: TCurrencyField;

    procedure dbDesgloseCierreAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var DMCierre: TDMCierre;

implementation

uses ConexionDM, Cierre;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDMCierre.dbDesgloseCierreAfterPost(DataSet: TDataSet);
begin
  DMCierre.dbDesgloseCierre.Refresh;
end;

END.
