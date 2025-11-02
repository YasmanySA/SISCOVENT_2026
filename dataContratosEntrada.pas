unit dataContratosEntrada;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDMContratosEntrada = class(TDataModule)
    tbTipoEvento: TFDQuery;
    tbTipoEventoID: TIntegerField;
    tbTipoEventoTiposEventos: TWideStringField;
    DSTipoEvento: TDataSource;

    tbTamañoEvento: TFDQuery;
    tbTamañoEventoid_enlace: TIntegerField;
    tbTamañoEventoID: TIntegerField;
    tbTamañoEventoDiasOfertados: TWideStringField;
    DSTamañoEvento: TDataSource;

    tbOfertasContratos: TFDQuery;
    tbOfertasContratosid_enlace: TIntegerField;
    tbOfertasContratosID: TIntegerField;
    tbOfertasContratosOferta: TWideStringField;
    tbOfertasContratosIdLaminado: TIntegerField;
    DSOfertasContratos: TDataSource;

    tbSubOfertasContratos: TFDQuery;
    tbSubOfertasContratosid_enlace: TIntegerField;
    tbSubOfertasContratosID: TIntegerField;
    tbSubOfertasContratosSubOferta: TStringField;
    tbSubOfertasContratosPrecio: TCurrencyField;
    tbSubOfertasContratosGasto: TCurrencyField;
    DSSubOfertasContratos: TDataSource;

    tbOfertaDetalles: TFDQuery;
    tbOfertaDetallesid_enlace: TIntegerField;
    tbOfertaDetallesID: TLargeintField;
    tbOfertaDetallesIncluye: TStringField;
    DSOfertaDetalles: TDataSource;

    tbTiposLaminados: TFDQuery;
    tbTiposLaminadosID: TIntegerField;
    tbTiposLaminadosid_enlace: TIntegerField;
    tbTiposLaminadosPortada: TStringField;
    DSTiposLaminados: TDataSource;

    procedure tbTamañoEventoAfterPost(DataSet: TDataSet);
    procedure tbOfertasContratosAfterPost(DataSet: TDataSet);
    procedure tbSubOfertasContratosAfterPost(DataSet: TDataSet);
    procedure tbOfertaDetallesAfterPost(DataSet: TDataSet);
    procedure tbTiposLaminadosAfterPost(DataSet: TDataSet);
    procedure tbTipoEventoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMContratosEntrada: TDMContratosEntrada;

implementation

uses dataContratos, ConexionDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDMContratosEntrada.tbOfertaDetallesAfterPost(DataSet: TDataSet);
begin
  DMContratos.tbOfertaDetalles.Refresh;
end;

procedure TDMContratosEntrada.tbOfertasContratosAfterPost(DataSet: TDataSet);
begin
  DMContratos.tbOfertasContratos.Refresh;
end;

procedure TDMContratosEntrada.tbSubOfertasContratosAfterPost(DataSet: TDataSet);
begin
  DMContratos.tbSubOfertasContratos.Refresh;
end;

procedure TDMContratosEntrada.tbTamañoEventoAfterPost(DataSet: TDataSet);
begin
  DMContratos.tbTamañoEvento.Refresh;
end;

procedure TDMContratosEntrada.tbTipoEventoAfterPost(DataSet: TDataSet);
begin
  DMContratos.tbTipoEvento.Refresh;
end;

procedure TDMContratosEntrada.tbTiposLaminadosAfterPost(DataSet: TDataSet);
begin
  DMContratos.tbTiposLaminados.Refresh;
end;

end.
