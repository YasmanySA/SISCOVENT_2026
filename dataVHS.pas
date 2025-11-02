unit dataVHS;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,  
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, MemDS;

type
  TDM_VHS = class(TDataModule)
    tbVHS: TFDTable;
    tbOfertas: TFDTable;
    tbOfertasID: TFDAutoIncField;
    tbOfertasOfertas: TWideStringField;
    tbOfertasDuracion: TIntegerField;
    tbOfertasImporte: TCurrencyField;
    tbOfertasCosto: TCurrencyField;
    DSVHS: TDataSource;
    DSDetallesVHS: TDataSource;
    DStbOfertas: TDataSource;
    tbVHSCod_casete: TIntegerField;
    tbVHSFecha: TDateTimeField;
    tbVHSServicio: TWideStringField;
    tbVHSNombreCliente: TWideStringField;
    tbVHSEntradasVHS: TIntegerField;
    tbDetallesVHS: TFDQuery;
    tbDetallesVHSid_enlace: TIntegerField;
    tbDetallesVHSCodigoVHS: TIntegerField;
    tbDetallesVHSTitulo: TWideStringField;
    tbDetallesVHSOferta: TWideStringField;
    tbDetallesVHSDuracion: TDateTimeField;
    tbDetallesVHSLimpiesa: TBooleanField;
    tbDetallesVHSEstado: TFloatField;
    tbDetallesVHSImporte: TCurrencyField;
    tbDetallesVHSMinutos: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_VHS: TDM_VHS;

implementation
uses Dcaja,ConexionDM;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
