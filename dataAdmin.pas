unit dataAdmin;

interface

uses
  System.SysUtils, System.Classes, Data.DB, 
  FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Stan.Async, FireDAC.Comp.DataSet;

type
  TdmAdmin = class(TDataModule)
    DSNew: TDataSource;
    tbAdmin: TFDTable;
    tbAdminUsuario: TWideStringField;
    tbAdminClave: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAdmin: TdmAdmin;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.