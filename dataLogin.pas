unit dataLogin;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt;

type
  TdmLogin = class(TDataModule)
    // Queries
    tbUserConect: TFDQuery;
    tbUsuarios: TFDQuery;
    update_pass: TFDQuery;

    // Campos persistentes tbUsuarios
    tbUsuariosID: TIntegerField;
    tbUsuariosDateCreate: TDateField;
    tbUsuariosCI: TStringField;
    tbUsuariosNombre: TStringField;
    tbUsuariosApellidos: TStringField;
    tbUsuariosdireccion: TStringField;
    tbUsuariosmovil: TStringField;
    tbUsuariosemail: TStringField;
    tbUsuariosCargo: TStringField;
    tbUsuariosusername: TStringField;
    tbUsuariosNumeroPIN: TStringField;
    tbUsuariosclave_sha: TStringField;
    tbUsuariosChangePassword: TDateField;
    tbUsuariosPassExpire: TDateField;
    tbUsuarioscode_activation: TStringField;
    tbUsuariostype_code: TStringField;
    tbUsuariospermiss: TMemoField;
    tbUsuariosenabled: TIntegerField;
    tbUsuariospassword: TStringField;
    tbUsuariosblockadmin: TIntegerField;
    tbUsuariospass_changue: TIntegerField;

    // DataSources
    DSUserConect: TDataSource;
    DSUsuarios: TDataSource;
    tbUserConectID: TFDAutoIncField;
    tbUserConectDateCreate: TDateField;
    tbUserConectCI: TStringField;
    tbUserConectNombre: TStringField;
    tbUserConectApellidos: TStringField;
    tbUserConectdireccion: TStringField;
    tbUserConectmovil: TStringField;
    tbUserConectemail: TStringField;
    tbUserConectCargo: TStringField;
    tbUserConectusername: TStringField;
    tbUserConectNumeroPIN: TStringField;
    tbUserConectclave_sha: TStringField;
    tbUserConectChangePassword: TDateField;
    tbUserConectPassExpire: TDateField;
    tbUserConectcode_activation: TStringField;
    tbUserConecttype_code: TStringField;
    tbUserConectpermiss: TMemoField;
    tbUserConectenabled: TIntegerField;
    tbUserConectpassword: TStringField;
    tbUserConectpass_changue: TIntegerField;
    tbUserConectblockadmin: TIntegerField;
    tbUserConectonline: TIntegerField;
  private
  public
  end;

var
  dmLogin: TdmLogin;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ConexionDM;

{$R *.dfm}

end.
