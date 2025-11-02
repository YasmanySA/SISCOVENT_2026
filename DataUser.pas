unit DataUser;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,  
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient, 
  UniProvider, MySQLUniProvider
   ;

type
  TDMUsuarios = class(TDataModule)
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUsuarios: TDMUsuarios;
implementation
uses  ConexionDM, RegistroUser;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
