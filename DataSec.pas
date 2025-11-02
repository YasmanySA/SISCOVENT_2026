unit DataSec;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,  
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient, MemDS;

type
  TDMUsuarios = class(TDataModule)
    tbUsuarios: TFDTable;
    DSUsuarios: TDataSource;
    tbUsuariosCI: TWideStringField;
    tbUsuariosNombre: TWideStringField;
    tbUsuariosWideStringField1erApellido: TWideStringField;
    tbUsuariosWideStringField2doApellido: TWideStringField;
    tbUsuariosDireccion: TWideMemoField;
    tbUsuariosCargo: TWideStringField;
    tbUsuariosNoTelCelular: TWideStringField;
    tbUsuariosUsuario: TWideStringField;
    tbUsuariosClave: TWideStringField;
    tbUsuariosidUsuario: TIntegerField;
    tbUsuariosActivo: TBooleanField;
    tbUsuariosemail: TWideStringField;
    tbUsuariosimg: TBlobField;
    tbLogon: TFDTable;
    DSLogon: TDataSource;
    tbLogonCI: TWideStringField;
    tbLogonNombre: TWideStringField;
    tbLogonWideStringField1erApellido: TWideStringField;
    tbLogonWideStringField2doApellido: TWideStringField;
    tbLogonDireccion: TWideMemoField;
    tbLogonCargo: TWideStringField;
    tbLogonNoTelCelular: TWideStringField;
    tbLogonUsuario: TWideStringField;
    tbLogonClave: TWideStringField;
    tbLogonidUsuario: TIntegerField;
    tbLogonActivo: TBooleanField;
    tbLogonemail: TWideStringField;
    tbLogonimg: TBlobField;
    tbUsuariosChangePassword: TIntegerField;
    tbUsuariosDateCreate: TStringField;
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUsuarios: TDMUsuarios;
implementation
uses  Dcaja;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
