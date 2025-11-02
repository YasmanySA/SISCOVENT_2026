unit dataRegUser;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TdmRegUser = class(TDataModule)
    // Queries
    tb_validated: TFDQuery;
    tbMail: TFDQuery;
    tbUserSelect: TFDQuery;
    tbUsuarios: TFDQuery;
    UniQuery1: TFDQuery;
    UniQuery2: TFDQuery;
    UniQuery3: TFDQuery;

    // Campos persistentes tb_validated
    tb_validatedmovil: TStringField;
    tb_validatedemail: TStringField;
    tb_validatedusername: TStringField;
    tb_validatedpassword: TStringField;
    tb_validatedNumeroPin: TStringField;

    // Campos persistentes tbMail
    tbMailID: TIntegerField;
    tbMailproducer: TBooleanField;
    tbMailHost: TStringField;
    tbMailServer: TStringField;
    tbMailmail_user: TStringField;
    tbMailmail_pass: TStringField;
    tbMaile_mail: TStringField;
    tbMailname: TStringField;
    tbMailport: TIntegerField;

    // Campos persistentes tbUsuarios
    tbUsuariosidUsuario: TIntegerField;
    tbUsuariosCI: TStringField;
    tbUsuariosNombre: TStringField;
    tbUsuariosApellido1: TStringField;
    tbUsuariosApellido2: TStringField;
    tbUsuariosDireccion: TStringField;
    tbUsuariosCelular: TStringField;
    tbUsuariosemail: TStringField;
    tbUsuariosCargo: TStringField;
    tbUsuariosUsuario: TStringField;
    tbUsuariosClave: TMemoField;
    tbUsuariosclave_sha: TStringField;
    tbUsuariosNumeroPIN: TStringField;
    tbUsuariosActivo: TBooleanField;
    tbUsuariosChangePassword: TIntegerField;
    tbUsuariosDateCreate: TDateTimeField;
    tbUsuariosPassExpire: TDateTimeField;

    // DataSource
    DataSource1: TDataSource;
  private
  public
  end;

var
  dmRegUser: TdmRegUser;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
