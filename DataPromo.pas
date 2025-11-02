unit DataPromo;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt,
  frxExportPDF, frxClass, frxExportBaseDialog, frxExportImage,
  frxBarcode, frxDBSet, frCoreClasses;

type
  TDm_promo = class(TDataModule)
    // DataSources
    DSCuentas: TDataSource;
    DSPIN: TDataSource;

    // Tablas reemplazadas por FireDAC
    tbCuentas: TFDTable;
    tbPIN: TFDTable;

    // Campos persistentes tbCuentas
    tbCuentasdeCuentas: TWideStringField;
    tbCuentasFecha: TDateTimeField;
    tbCuentasHora: TDateTimeField;
    tbCuentasNombre: TWideStringField;
    tbCuentasApellidos: TWideStringField;
    tbCuentasDireccion: TWideStringField;
    tbCuentasTelefonoFijo: TWideStringField;
    tbCuentasTelefonoCelular: TWideStringField;
    tbCuentasPIN: TWideStringField;

    // Campos persistentes tbPIN
    tbPINPIN: TWideStringField;
    tbPINUsado: TBooleanField;

    // Reportes
    ImpressCodeQR: TfrxReport;
    CodeBarra: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxJPEGExport1: TfrxJPEGExport;
    Cuentas: TfrxDBDataset;
    Exp_IdentidadPromo: TfrxPDFExport;
  private
  public
  end;

var
  Dm_promo: TDm_promo;

implementation

uses Dcaja, ConexionDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
