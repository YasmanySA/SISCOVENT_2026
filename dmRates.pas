unit dmRates;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, VirtualTable, FireDAC.Stan.Async,
  FireDAC.DApt, MemDS;

type
  TdmRate = class(TDataModule)
    tbCambioActual: TFDQuery;
    DSTasas: TDataSource;
    DSCambioActual: TDataSource;
    tbTasas: TFDMemTable;
    tbTasasBTC: TCurrencyField;
    tbTasasMLC: TCurrencyField;
    tbTasasECU: TCurrencyField;
    tbTasasUSDT_TRC20: TCurrencyField;
    tbTasasTRX: TCurrencyField;
    tbTasasUSD: TCurrencyField;
    FDQuery1: TFDQuery;
    tbCambioActualid: TLargeintField;
    tbCambioActualid_fecha: TSQLTimeStampField;
    tbCambioActualUSD: TCurrencyField;
    tbCambioActualMLC: TCurrencyField;
    tbCambioActualEUR: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRate: TdmRate;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ConexionDM;

{$R *.dfm}

end.
