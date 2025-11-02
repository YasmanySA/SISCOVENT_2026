unit DataClientes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Clientes = class(TDataModule)
    DSClientes: TDataSource;
    DSDetallesClientes: TDataSource;
    DSCodigos: TDataSource;
    DSClientes1: TDataSource;

    tbLogos: TClientDataSet;
    tbLogosid: TFloatField;
    tbLogosLogo: TGraphicField;
    DSLogos: TDataSource;

    tbClientes: TFDQuery;
    tbClientesid: TLargeintField;
    tbClientesIDCLIENTE: TStringField;
    tbClientesname_cliente: TStringField;
    tbClientesnumber_contrato: TStringField;
    tbClientesdireccion: TStringField;
    tbClientesestado: TIntegerField;
    tbClientesdate_contrato: TSQLTimeStampField;
    tbClientesTelefonomovil: TStringField;
    tbClientesTelefonofijo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Clientes: TDM_Clientes;

implementation

uses Dcaja, ConexionDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
