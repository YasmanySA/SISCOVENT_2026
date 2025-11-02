unit DataEnzonaToken;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  REST.Client, REST.Authenticator.Basic, REST.Response.Adapter,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.Dialogs;

type
  TEnzonaToken = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    tbtemp: TFDMemTable;
    OAuthBasic: THTTPBasicAuthenticator;
    tbtempaccess_token: TWideStringField;
    tbtempscope: TWideStringField;
    tbtemptoken_type: TWideStringField;
    tbtempexpires_in: TFloatField;
    tbComerceEnzona: TFDQuery;
    tbComerceEnzonaID: TIntegerField;
    tbComerceEnzonaproducer: TIntegerField;
    tbComerceEnzonacomercio: TStringField;
    tbComerceEnzonamerchant_uuid: TStringField;
    tbComerceEnzonaConsumer_Key: TStringField;
    tbComerceEnzonaConsumer_Secret: TStringField;
    tbComerceEnzonascope: TStringField;
    tbComerceEnzonareturn_url: TStringField;
    tbComerceEnzonacancel_url: TStringField;
    tbComerceEnzonacurrency: TStringField;

    function tokenEnzona(ConsumerKey, ConsumerSecret: string;
      Auth: THTTPBasicAuthenticator): string;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EnzonaToken: TEnzonaToken;

implementation

uses
  ConexionDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

function TEnzonaToken.tokenEnzona(ConsumerKey, ConsumerSecret: string;
  Auth: THTTPBasicAuthenticator): string;
begin
  Result := '';
  try
    // Configurar autenticación básica
    Auth.Username := ConsumerKey;
    Auth.Password := ConsumerSecret;

    // Configurar parámetros de la petición
    RESTRequest1.Params.ParameterByName('grant_type').Value := 'client_credentials';
    RESTRequest1.Params.ParameterByName('scope').Value := 'enzona_business_payment';

    // Ejecutar petición
    RESTRequest1.Execute;

    // Verificar respuesta
    if RESTResponse1.StatusCode <> 200 then
      ShowMessage('Error al obtener token: ' + RESTResponse1.StatusText)
    else
      Result := tbtemptoken_type.Value + ' ' + tbtempaccess_token.Value;

  except
    on E: Exception do
      ShowMessage('Excepción al obtener token: ' + E.Message);
  end;
end;

end.
