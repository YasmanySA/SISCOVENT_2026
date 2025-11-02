unit dataContratos;

interface

uses
  System.SysUtils, System.Classes, Data.DB,  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, Vcl.DBActns;

type
  TDMContratos = class(TDataModule)
    QPreReservaPrincipal: TFDQuery;
    DSPreReservaPrincipal: TDataSource;
    tbTipoContratos: TFDTable;
    DSTipoContratos: TDataSource;
    tbProvincia: TFDTable;
    DSProvincia: TDataSource;
    Municipio: TFDTable;
    DSMunicipio: TDataSource;
    MunicipioID: TIntegerField;
    MunicipioMunicipio: TWideStringField;
    tbTipoEvento: TFDTable;
    DSTipoEvento: TDataSource;

    tbTipoContratosID: TIntegerField;
    tbTipoContratosTiposEventos: TWideStringField;
    tbTamañoEvento: TFDTable;
    DSTamañoEvento: TDataSource;
    tbTamañoEventoid_enlace: TIntegerField;
    tbTamañoEventoID: TIntegerField;
    tbTamañoEventoDiasOfertados: TWideStringField;
    tbOfertasContratos: TFDTable;
    DSOfertasContratos: TDataSource;
    tbSubOfertasContratos: TFDTable;
    DSSubOfertasContratos: TDataSource;
    tbSubOfertasContratosid_enlace: TIntegerField;
    tbSubOfertasContratosID: TIntegerField;
    tbSubOfertasContratosSubOferta: TStringField;
    tbSubOfertasContratosPrecio: TCurrencyField;
    tbSubOfertasContratosGasto: TCurrencyField;
    tbOfertaDetalles: TFDTable;
    DSOfertaDetalles: TDataSource;
    tbTiposLaminados: TFDTable;
    DSTiposLaminados: TDataSource;
    tbTiposLaminadosID: TIntegerField;
    tbTiposLaminadosid_enlace: TIntegerField;
    tbTiposLaminadosPortada: TStringField;
    tbOfertasContratos2: TFDTable;
    DSOfertasContratos2: TDataSource;
    tbSubOfertasContratos2: TFDTable;
    DSSubOfertasContratos2: TDataSource;
    tbOfertaDetalles2: TFDTable;
    DSOfertaDetalles2: TDataSource;

    tbPreReservaHistorico: TFDQuery;
    DSPreReservaHistorico: TDataSource;

    tbReservaHistorico: TFDQuery;
    DSReservaHistorico: TDataSource;

    // Campos de tbPreReservaHistorico
    tbPreReservaHistoricoID_Contrato: TLargeintField;
    tbPreReservaHistoricoFechaContrato: TDateField;
    tbPreReservaHistoricoHora: TTimeField;
    tbPreReservaHistoricoNombreClienteAdulta: TWideStringField;
    tbPreReservaHistoricoTelefono1: TWideStringField;
    tbPreReservaHistoricoTelefono2: TWideStringField;
    tbPreReservaHistoricoNombre: TWideStringField;
    tbPreReservaHistoricoDireccion: TStringField;
    tbPreReservaHistoricoProvincia: TStringField;
    tbPreReservaHistoricoMunicipio: TStringField;
    tbPreReservaHistoricoPoblado: TStringField;
    tbPreReservaHistoricoEvento: TWideStringField;
    tbPreReservaHistoricoTipoContratacion: TWideStringField;
    tbPreReservaHistoricoLugar: TWideStringField;
    tbPreReservaHistoricoOferta: TWideStringField;
    tbPreReservaHistoricoSubOferta: TWideStringField;
    tbPreReservaHistoricoPortada: TStringField;
    tbPreReservaHistoricoImporte: TCurrencyField;
    tbPreReservaHistoricoFechaEstudio: TDateField;
    tbPreReservaHistoricoFechaExteriores: TDateField;
    tbPreReservaHistoricoGarantia: TCurrencyField;
    tbPreReservaHistoricoTotalaPagar: TCurrencyField;
    tbPreReservaHistoricoPagoGarantia: TBooleanField;
    tbPreReservaHistoricoTiempoRecogida: TIntegerField;

    // Campos de tbReservaHistorico
    tbReservaHistoricoID_Contrato: TIntegerField;
    tbReservaHistoricoFechaContrato: TDateField;
    tbReservaHistoricoHora: TTimeField;
    tbReservaHistoricoNombreClienteAdulta: TWideStringField;
    tbReservaHistoricoTelefono1: TWideStringField;
    tbReservaHistoricoTelefono2: TWideStringField;
    tbReservaHistoricoNombre: TWideStringField;
    tbReservaHistoricoDireccion: TStringField;
    tbReservaHistoricoProvincia: TStringField;
    tbReservaHistoricoMunicipio: TStringField;
    tbReservaHistoricoPoblado: TStringField;
    tbReservaHistoricoEvento: TWideStringField;
    tbReservaHistoricoTipoContratacion: TWideStringField;
    tbReservaHistoricoLugar: TWideStringField;
    tbReservaHistoricoOferta: TWideStringField;
    tbReservaHistoricoSubOferta: TWideStringField;
    tbReservaHistoricoPortada: TStringField;
    tbReservaHistoricoImporte: TCurrencyField;
    tbReservaHistoricoFechaEstudio: TDateField;
    tbReservaHistoricoFechaExteriores: TDateField;
    tbReservaHistoricoGarantia: TCurrencyField;
    tbReservaHistoricoTotalaPagar: TCurrencyField;
    tbReservaHistoricoPagoGarantia: TBooleanField;
    tbReservaHistoricoTiempoRecogida: TIntegerField;

    // Campos de QPreReservaPrincipal
    QPreReservaPrincipalID_Contrato: TLargeintField;
    QPreReservaPrincipalFechaContrato: TDateField;
    QPreReservaPrincipalHora: TTimeField;
    QPreReservaPrincipalNombreClienteAdulta: TWideStringField;
    QPreReservaPrincipalTelefono1: TWideStringField;
    QPreReservaPrincipalTelefono2: TWideStringField;
    QPreReservaPrincipalDireccion: TStringField;
    QPreReservaPrincipalNombre: TWideStringField;
    QPreReservaPrincipalProvincia: TStringField;
    QPreReservaPrincipalMunicipio: TStringField;
    QPreReservaPrincipalPoblado: TStringField;
    QPreReservaPrincipalEvento: TWideStringField;
    QPreReservaPrincipalTipoContratacion: TWideStringField;
    QPreReservaPrincipalLugar: TWideStringField;
    QPreReservaPrincipalOferta: TWideStringField;
    QPreReservaPrincipalSubOferta: TWideStringField;
    QPreReservaPrincipalPortada: TStringField;
    QPreReservaPrincipalImporte: TCurrencyField;
    QPreReservaPrincipalFechaEstudio: TDateField;
    QPreReservaPrincipalFechaExteriores: TDateField;
    QPreReservaPrincipalGarantia: TCurrencyField;
    QPreReservaPrincipalTotalaPagar: TCurrencyField;
    QPreReservaPrincipalPagoGarantia: TBooleanField;
    QPreReservaPrincipalTiempoRecogida: TIntegerField;
    tbOfertaDetalles2id_enlace: TIntegerField;
    tbOfertaDetalles2ID: TLargeintField;
    tbOfertaDetalles2Incluye: TStringField;
    tbOfertaDetallesid_enlace: TIntegerField;
    tbOfertaDetallesID: TLargeintField;
    tbOfertaDetallesIncluye: TStringField;
    tbTipoEventoID: TFDAutoIncField;
    tbTipoEventoTiposEventos: TWideStringField;
    tbTipoEventodefinedcolor: TSingleField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMContratos: TDMContratos;

implementation

uses Dcaja, ConexionDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
