unit mdataVentas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.ODBC,
  FireDAC.Phys.ODBCDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove, FireDAC.Comp.Client,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs;

type
  TDMVentas = class(TDataModule)
    DSVentas: TDataSource;
    DSdetalles: TDataSource;
    tbVentas: TFDQuery;
    tbVentasNoComp: TFDAutoIncField;
    tbVentasUsuario: TWideStringField;
    tbVentasFecha: TSQLTimeStampField;
    tbVentasHora: TSQLTimeStampField;
    tbVentasEfectivoCUC: TCurrencyField;
    tbVentasEfectivoMN: TCurrencyField;
    tbVentasTotal: TCurrencyField;
    tbVentasCambio: TCurrencyField;
    tbVentasCambioMN: TCurrencyField;
    tbVentasPropina: TCurrencyField;
    tbVentasGastosDeducible: TCurrencyField;
    tbVentasGastosInsumos: TCurrencyField;
    TbdetallesconsultaView: TFDQuery;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMVentas: TDMVentas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
