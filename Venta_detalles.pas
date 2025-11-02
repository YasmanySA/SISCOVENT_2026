unit Venta_detalles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.Menus, Vcl.ExtCtrls,
  cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.StdCtrls, cxButtons, Vcl.DBCtrls,
  cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxNavigator, cxDBNavigator, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxFilterControl, cxDBFilterControl, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, dxSkinsForm, cxDBLabel, dxSkinOffice2019Colorful, dxDateRanges,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TF_VentaEntrar = class(TForm)
    Timer1: TTimer;
    navegador: TcxDBNavigator;
    LPrecio: TcxLabel;
    LDescrip: TcxLabel;
    LCant: TcxLabel;
    edPrecio: TcxDBCurrencyEdit;
    edGastoGenerales: TcxDBCurrencyEdit;
    edGastoInsumos: TcxDBCurrencyEdit;
    edCant: TcxDBCurrencyEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxButton1: TcxButton;
    btAcept: TcxButton;
    brCancel: TcxButton;
    cxLabel1: TcxLabel;
    edFecha: TcxDBDateEdit;
    edDescrip: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    filter1: TcxFilterControl;
    AplicarFiltro1: TcxButton;
    OpenDialog: TOpenDialog;
    filter2: TcxFilterControl;
    AplicarFiltro2: TcxButton;
    tablaGastosGenerales: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tablaGastosGeneralesid_enlace1: TcxGridDBColumn;
    tablaGastosGeneralesTipoGasto1: TcxGridDBColumn;
    tablaGastosGeneralesDetalles1: TcxGridDBColumn;
    tablaGastosGeneralesCosto1: TcxGridDBColumn;
    tablaGastosGeneralesCantidad1: TcxGridDBColumn;
    tablaGastosGeneralesGasto1: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    tablaGastosInsumos: TcxGridDBTableView;
    tablaGastosInsumosid_enlace: TcxGridDBColumn;
    tablaGastosInsumosTipoGasto: TcxGridDBColumn;
    tablaGastosInsumosDetalles: TcxGridDBColumn;
    tablaGastosInsumosCosto: TcxGridDBColumn;
    tablaGastosInsumosCantidad: TcxGridDBColumn;
    tablaGastosInsumosGasto: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    cxDBLabel1: TcxDBLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Panel1: TPanel;
    Shape1: TShape;
    cxDBLabel2: TcxDBLabel;
    Button2: TButton;
    procedure btAceptClick(Sender: TObject);
    procedure edCantKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure edDescripKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edServicioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure AplicarFiltro1Click(Sender: TObject);
    procedure filter1ApplyFilter(Sender: TObject);
    procedure AplicarFiltro2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_VentaEntrar: TF_VentaEntrar;

implementation

uses venta,  DataClasif_U;
{$R *.dfm}

procedure TF_VentaEntrar.AplicarFiltro2Click(Sender: TObject);
begin
  filter2.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'Filtros\GastosInsumos.flt');
  filter2.ApplyFilter
end;

procedure TF_VentaEntrar.btAceptClick(Sender: TObject);
begin // Para que la suma del Footer vaya hacia el Total
//  mdataVentas.tbCaja.Edit;
//  mdataVentas.tbCajaTotal.Value := FormVenta.TablaCaja.DataController.Summary.
//    FooterSummaryValues[0];
//  mdataVentas.tbCajaGastosGenerales.Value :=
//    FormVenta.TablaCaja.DataController.Summary.FooterSummaryValues[1];
//  mdataVentas.tbCajaGastosInsumos.Value :=
//    FormVenta.TablaCaja.DataController.Summary.FooterSummaryValues[2];
//  mdataVentas.tbCaja.Post;
//  mdataVentas.tbCaja.Refresh;







end;

procedure TF_VentaEntrar.Button1Click(Sender: TObject);
begin
//  mdataVentas.tbVentasOperaciones.Edit;
//  mdataVentas.tbVentasOperacionesGastosGenerales.Value :=
//    tablaGastosGenerales.DataController.Summary.FooterSummaryValues[0];
//  mdataVentas.tbVentasOperaciones.Edit;
//  mdataVentas.tbVentasOperacionesGastosInsumos.Value :=
//    tablaGastosInsumos.DataController.Summary.FooterSummaryValues[0];
//  mdataVentas.tbVentasOperaciones.Post;
//
//  mdataVentas.tbVentasOperaciones.Refresh;
end;

procedure TF_VentaEntrar.Button2Click(Sender: TObject);
begin
 ResetIme;
end;

procedure TF_VentaEntrar.edCantKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
    mdataVentas.tbVentasOperaciones.Refresh;
     Key := VK_TAB;
      Key := VK_TAB;
  end;

end;

procedure TF_VentaEntrar.FormActivate(Sender: TObject);
begin



  AplicarFiltro1.Click;
  AplicarFiltro2.Click;

end;

procedure TF_VentaEntrar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Key:= VK_TAB
end;

procedure TF_VentaEntrar.edDescripKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
//    mdataVentas.tbVentasOperaciones.Append;
//    mdataVentas.tbVentasOperaciones.Edit;
//    mdataVentas.tbVentasOperacionesFecha.Value := mdataVentas.tbCajaFecha.Value;
//
//    edPrecio.Value := DM_Clasif_U.tb_PreciosPrecio.Value;
//
//    edCant.Value := DM_Clasif_U.tb_PreciosCantidad.Value;
//
//    mdataVentas.tbVentasOperaciones.Post;
//    mdataVentas.tbVentasOperaciones.Refresh;
//
//  mdataVentas.tbVentasOperaciones.Edit;
//  mdataVentas.tbVentasOperacionesGastosGenerales.Value :=
//    tablaGastosGenerales.DataController.Summary.FooterSummaryValues[0];
//  mdataVentas.tbVentasOperaciones.Edit;
//  mdataVentas.tbVentasOperacionesGastosInsumos.Value :=
//    tablaGastosInsumos.DataController.Summary.FooterSummaryValues[0];
//  mdataVentas.tbVentasOperaciones.Post;
//
//  mdataVentas.tbVentasOperaciones.Refresh;
//
//    Key := VK_TAB;
  end;
end;

procedure TF_VentaEntrar.edServicioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    mdataVentas.tbCajaFecha.Value := mdataVentas.tbCajaFecha.Value;
    edPrecio.Value := DM_Clasif_U.tb_PreciosPrecio.Value;
    edCant.Value := DM_Clasif_U.tb_PreciosCantidad.Value;

    mdataVentas.tbCaja.Post;

    mdataVentas.tbCaja.Refresh;
    Key := VK_TAB;

  end;

end;

procedure TF_VentaEntrar.filter1ApplyFilter(Sender: TObject);
begin
  tablaGastosGenerales.DataController.Filter.Active := true
end;

procedure TF_VentaEntrar.cxButton1Click(Sender: TObject);
begin
  mdataVentas.tbVentasOperaciones.Append;
end;

procedure TF_VentaEntrar.AplicarFiltro1Click(Sender: TObject);
begin
  filter1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'Filtros\GastosGenerales.flt');
  filter1.ApplyFilter

end;

end.
