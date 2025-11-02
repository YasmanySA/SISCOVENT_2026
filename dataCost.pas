unit dataCost;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt;

type
  TdmCost = class(TDataModule)
    // Gastos
    q_Gastos: TFDQuery;
    q_GastosID_Operacion: TStringField;
    q_GastosTamano: TStringField;

    // Tipo de materia prima
    tb_typeMP: TFDQuery;

    // Formatos
    tbFormat: TFDQuery;
    tbFormatID: TIntegerField;
    tbFormatid_tipoGasto: TIntegerField;
    tbFormatlang: TStringField;
    tbFormatsize: TStringField;
    tbFormatid_usable: TStringField;

    // Precios
    tbPrecio: TFDQuery;

    // Tipos de gasto
    tbtip: TFDQuery;
    tbtype_gasto: TFDQuery;
    tbtype_gastoID: TIntegerField;
    tbtype_gastolang: TStringField;
    q_GastosID: TLargeintField;
    q_GastosID_Operación: TStringField;
    q_Gastosdate_ID: TSQLTimeStampField;
    q_Gastoscodebar: TStringField;
    q_GastosTipoMateriaPrima: TIntegerField;
    q_GastosCantidad: TIntegerField;
    q_GastosCosto: TFMTBCDField;
    q_GastosFormato: TStringField;
    q_GastosTamaño: TStringField;
    q_Gastosdescrip: TStringField;
    q_Gastoshistory_check: TBooleanField;
    q_Gastostype_gasto: TIntegerField;
    q_GastosImgComprobante: TBlobField;
    q_GastosTotal: TFMTBCDField;
    tb_typeMPID: TFDAutoIncField;
    tb_typeMPlang: TStringField;
    tb_typeMPid_usable: TStringField;
    tb_typeMPid_enlace: TIntegerField;
    tb_typeMPPrecio: TCurrencyField;
    tb_typeMPCantidad: TIntegerField;
    tb_typeMPcodebar: TStringField;
    tb_typeMPId_date: TSQLTimeStampField;
    tbPrecioID: TFDAutoIncField;
    tbPreciolang: TStringField;
    tbPrecioid_usable: TStringField;
    tbPrecioid_enlace: TIntegerField;
    tbPrecioPrecio: TCurrencyField;
    tbPrecioCantidad: TIntegerField;
    tbPreciocodebar: TStringField;
    tbPrecioId_date: TSQLTimeStampField;
    tbtipFecha: TSQLTimeStampField;
    tbtipTip: TCurrencyField;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCost: TdmCost;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
