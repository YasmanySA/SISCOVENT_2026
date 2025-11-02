unit DDesgloseEfec;

interface

uses
  SysUtils, Classes, DB,    FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Efectivos = class(TDataModule)
    DSEnEfectCUC: TDataSource;
    DSEnMonCUC: TDataSource;
    DSEnEfectMN: TDataSource;
    tbEntradaEfectMNid_enlace: TSmallintField;
    tbEntradaEfectMNFecha: TDateTimeField;
    tbEntradaEfectMNIntegerField100: TIntegerField;
    tbEntradaEfectMNSubTotal100: TIntegerField;
    tbEntradaEfectMNIntegerField300: TIntegerField;
    tbEntradaEfectMNSubTotal300: TIntegerField;
    tbEntradaEfectMNIntegerField500: TIntegerField;
    tbEntradaEfectMNSubTotal500: TIntegerField;
    tbEntradaEfectMNIntegerField1000: TIntegerField;
    tbEntradaEfectMNSubTotal1000: TIntegerField;
    tbEntradaEfectMNIntegerField2000: TIntegerField;
    tbEntradaEfectMNSubTotal2000: TIntegerField;
    tbEntradaEfectMNIntegerField5000: TIntegerField;
    tbEntradaEfectMNSubTotal5000: TIntegerField;
    tbEntradaEfectMNIntegerField10000: TIntegerField;
    tbEntradaEfectMNSubTotal10000: TIntegerField;
    tbEntradaEfectMNIntegerField20000: TIntegerField;
    tbEntradaEfectMNSubTotal20000: TIntegerField;
    tbEntradaEfectMNIntegerField50000: TIntegerField;
    tbEntradaEfectMNSubTotal50000: TIntegerField;
    tbEntradaEfectMNIntegerField100000: TIntegerField;
    tbEntradaEfectMNTotal: TIntegerField;
    UniTable1: TFDTable;
    UniTable2: TFDTable;
    IntegerField2: TIntegerField;
    DateField2: TDateField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    CurrencyField13: TCurrencyField;
    CurrencyField14: TCurrencyField;
    UniTable3: TFDTable;
    IntegerField3: TIntegerField;
    DateField3: TDateField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    CurrencyField15: TCurrencyField;
    CurrencyField16: TCurrencyField;
    CurrencyField17: TCurrencyField;
    CurrencyField18: TCurrencyField;
    CurrencyField19: TCurrencyField;
    CurrencyField20: TCurrencyField;
    CurrencyField21: TCurrencyField;
    tbEnEfectCUCid_enlace: TSmallintField;
    tbEnEfectCUCFecha: TDateTimeField;
    tbEnEfectCUCIntegerField100: TIntegerField;
    tbEnEfectCUCSubTotal100: TIntegerField;
    tbEnEfectCUCIntegerField300: TIntegerField;
    tbEnEfectCUCSubTotal300: TIntegerField;
    tbEnEfectCUCIntegerField500: TIntegerField;
    tbEnEfectCUCSubTotal500: TIntegerField;
    tbEnEfectCUCIntegerField1000: TIntegerField;
    tbEnEfectCUCSubTotal1000: TIntegerField;
    tbEnEfectCUCIntegerField2000: TIntegerField;
    tbEnEfectCUCSubTotal2000: TIntegerField;
    tbEnEfectCUCIntegerField5000: TIntegerField;
    tbEnEfectCUCSubTotal5000: TIntegerField;
    tbEnEfectCUCIntegerField10000: TIntegerField;
    tbEnEfectCUCSubTotal10000: TIntegerField;
    tbEnEfectCUCTotal: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Efectivos: TDM_Efectivos;

implementation
uses Dcaja, Venta;
{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
