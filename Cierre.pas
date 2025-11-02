unit Cierre;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Forms, Vcl.Controls,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxButtons, cxDBEdit,
  cxCurrencyEdit, cxGrid, cxGridDBTableView, cxGridLevel, System.Actions,
  Vcl.ActnList, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinWXI,
  dxSkinXmas2008Blue, Vcl.Menus, cxContainer, cxEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxCore,
  Vcl.DBActns, cxClasses, dxLayoutLookAndFeels, dxSkinsForm, dxWheelPicker,
  dxNumericWheelPicker, dxDateTimeWheelPicker, dxDBDateTimeWheelPicker,
  cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, dxLayoutControl,
  Vcl.Dialogs;

type
  TF_Cierre = class(TForm)
    cxButton1: TcxButton;
    btDesglose: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    btEntrar: TcxButton;
    ed1000: TcxDBCurrencyEdit;
    procedure btDesgloseClick(Sender: TObject);
    procedure btEntrarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure ed1000KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  public
  end;

var F_Cierre: TF_Cierre;

implementation

{$R *.dfm}

uses ConexionDM, gastos, CierreExtraciones, CierreMensualCUP,
  dataCierreEfectivo, ClassGlobal;

procedure TF_Cierre.btDesgloseClick(Sender: TObject);
begin
  F_CierreDesglose.Show;
end;

procedure TF_Cierre.btEntrarClick(Sender: TObject);
begin
  DMCierre.Q_FondoCaja.Post;
  DMCierre.Q_FondoCaja.Refresh;
  DMCierre.Q_CierreDiario.Refresh;
  DMCierre.Q_PeriodoMensual.Refresh;
end;

procedure TF_Cierre.cxButton1Click(Sender: TObject);
begin
  DMCierre.Q_PEriodo.Append;
  DMCierre.Q_PEriodoID.Value := Now;
  DMCierre.Q_PEriodoHistory.Value := False;
  DMCierre.Q_PEriodo.Post;
  DMCierre.Q_PEriodo.Refresh;
end;

procedure TF_Cierre.cxButton2Click(Sender: TObject);
begin
  Alerta_AdvertenciaContabilizar2('Estas seguro que desea cerrar el Periodo de '
    + DMCierre.Q_PEriodoPeriodo.Value, DMCierre.Q_PEriodo, 'history',
    TMsgDlgType.mtConfirmation);
end;

procedure TF_Cierre.cxButton3Click(Sender: TObject);
begin
  F_Gasto.Show;
end;

procedure TF_Cierre.cxButton4Click(Sender: TObject);
begin
  F_CierreExtraciones.Show;
end;

procedure TF_Cierre.cxButton6Click(Sender: TObject);
begin
  DMCierre.Q_FondoCaja.Append;
  DMCierre.Q_FondoCaja.Edit;
  DMCierre.Q_FondoCajaFecha.AsDateTime := Date;
  DMCierre.Q_FondoCaja.Post;
end;

procedure TF_Cierre.ed1000KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := VK_TAB;
    DMCierre.Q_FondoCaja.Refresh;
  end;
end;

end.
