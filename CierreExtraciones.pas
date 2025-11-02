unit CierreExtraciones;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Samples.Spin,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.Samples.Bind.Editors, Data.Bind.Components,
  // DevExpress Controls
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxButtons,
  cxTextEdit, cxCurrencyEdit, cxGroupBox, cxLabel, cxSpinEdit, cxButtonEdit,
  cxRadioGroup, cxSpinButton, cxCheckBox, cxClasses,
  // DevExpress Skins
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinOffice2019Colorful, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinWXI,
  // DevExpress Layout & Other
  dxGDIPlusClasses, dxWheelPicker, dxNumericWheelPicker, dxDateTimeWheelPicker,
  dxDBDateTimeWheelPicker, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutControl, dxToggleSwitch, dxLayoutLookAndFeels;

type
  TF_CierreExtraciones = class(TForm)
    cxButton2: TcxButton;
    btEntrar: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel12: TcxLabel;
    BindingsList1: TBindingsList;
    dxDBDateTimeWheelPicker1: TdxDBDateTimeWheelPicker;
    cxButton1: TcxButton;
    Timer1: TTimer;
    cxLabel13: TcxLabel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    ActionList1: TActionList;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    LayoutCUP: TdxLayoutControl;
    edTotal: TcxDBCurrencyEdit;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    ed1: TcxDBCurrencyEdit;
    ed3: TcxDBCurrencyEdit;
    ed5: TcxDBCurrencyEdit;
    ed10: TcxDBCurrencyEdit;
    ed20: TcxDBCurrencyEdit;
    ed50: TcxDBCurrencyEdit;
    ed12: TcxDBCurrencyEdit;
    ed200: TcxDBCurrencyEdit;
    ed500: TcxDBCurrencyEdit;
    ed1000: TcxDBCurrencyEdit;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    cxDBCurrencyEdit21: TcxDBCurrencyEdit;
    cxDBCurrencyEdit22: TcxDBCurrencyEdit;
    cxDBCurrencyEdit25: TcxDBCurrencyEdit;
    cxDBCurrencyEdit26: TcxDBCurrencyEdit;
    cxDBCurrencyEdit27: TcxDBCurrencyEdit;
    cxDBCurrencyEdit28: TcxDBCurrencyEdit;
    LayoutCUPGroup_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem64: TdxLayoutItem;
    dxLayoutItem65: TdxLayoutItem;
    dxLayoutItem66: TdxLayoutItem;
    dxLayoutItem67: TdxLayoutItem;
    dxLayoutItem68: TdxLayoutItem;
    dxLayoutItem69: TdxLayoutItem;
    dxLayoutItem70: TdxLayoutItem;
    Ed100: TdxLayoutItem;
    e200: TdxLayoutItem;
    e500: TdxLayoutItem;
    dxLayoutItem71: TdxLayoutItem;
    dxLayoutItem72: TdxLayoutItem;
    dxLayoutItem73: TdxLayoutItem;
    dxLayoutItem74: TdxLayoutItem;
    dxLayoutItem75: TdxLayoutItem;
    dxLayoutItem76: TdxLayoutItem;
    S100: TdxLayoutItem;
    S200: TdxLayoutItem;
    S500: TdxLayoutItem;
    L200: TdxLayoutLabeledItem;
    L500: TdxLayoutLabeledItem;
    dxLayoutLabeledItem12: TdxLayoutLabeledItem;
    dxLayoutLabeledItem13: TdxLayoutLabeledItem;
    dxLayoutLabeledItem14: TdxLayoutLabeledItem;
    dxLayoutLabeledItem15: TdxLayoutLabeledItem;
    L100: TdxLayoutLabeledItem;
    dxLayoutLabeledItem18: TdxLayoutLabeledItem;
    dxLayoutLabeledItem20: TdxLayoutLabeledItem;
    dxLayoutItem77: TdxLayoutItem;
    dxLayoutLabeledItem3: TdxLayoutLabeledItem;
    dxLayoutLabeledItem4: TdxLayoutLabeledItem;
    dxLayoutLabeledItem6: TdxLayoutLabeledItem;
    dxLayoutLabeledItem7: TdxLayoutLabeledItem;
    e1000: TdxLayoutItem;
    L1000: TdxLayoutLabeledItem;
    S1000: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutAlignmentConstraint1: TdxLayoutAlignmentConstraint;
    dxLayoutItem78: TdxLayoutItem;
    edBancoCUP: TcxDBCurrencyEdit;
    dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    edBANCOMLC: TcxDBCurrencyEdit;
    dxLayoutAutoCreatedGroup19: TdxLayoutAutoCreatedGroup;
    dxLayoutItem10: TdxLayoutItem;
    edEUR: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    edUSD: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    atContabilizar: TcxButton;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    procedure btEntrarClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ed1000KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure atContabilizarClick(Sender: TObject);
  private
    procedure Entry_Out;
    { Private declarations }
  public
    conteo: Integer;
    { Public declarations }
  end;

var F_CierreExtraciones: TF_CierreExtraciones;

implementation

uses Venta, dataCierreEfectivo, DCaja, tasaactual, ClassGlobal, Cierre, dmRates;

{$R *.dfm}

procedure TF_CierreExtraciones.btEntrarClick(Sender: TObject);
begin
  DMCierre.Q_CierreExtraciones.Post;
  DMCierre.Q_CierreExtraciones.Refresh;
  DMCierre.Q_CierreDiario.Refresh;
  DMCierre.Q_PeriodoMensual.Refresh;
end;

procedure TF_CierreExtraciones.cxButton1Click(Sender: TObject);
begin
  with dmrate do begin
    DMCierre.Q_CierreExtraciones.Append;
    DMCierre.Q_CierreExtraciones.Edit;
    DMCierre.Q_CierreExtracionesFecha.AsDateTime := Date;

    tbCambioActual.Refresh;
    DMCierre.Q_CierreExtracionesUSD_cambio.Value := tbCambioActualUSD.Value;
    DMCierre.Q_CierreExtracionesEUR_cambio.Value := tbCambioActualEUR.Value;
    DMCierre.Q_CierreExtracionesMLC_cambio.Value := tbCambioActualMLC.Value;

    DMCierre.Q_CierreExtraciones.Post;
  end;
end;

procedure TF_CierreExtraciones.cxButton2Click(Sender: TObject);
begin
  if MessageDlg('Usted va a limpiar el Efectivo ¿Estas seguro?', mtWarning,
    [mbYes, mbNo], 0, mbYes) = mrYes then begin
    // Implementar lógica de limpieza
  end;
end;

procedure TF_CierreExtraciones.atContabilizarClick(Sender: TObject);
begin
  if edTotal.Value > 0 then begin
    Alerta_AdvertenciaContabilizar2
      ('Usted va a contabilizar la venta con el importe ' + '$' +
      DMCierre.dbDesgloseCierrehistory.Value.ToString + '. ¿Desea continuar?',
      DMCierre.dbDesgloseCierre, 'history', TMsgDlgType.mtConfirmation);
  end;
end;

procedure TF_CierreExtraciones.ed1000KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := VK_TAB;
    DMCierre.dbDesgloseCierre.Refresh;
  end;

  if Key = VK_NEXT then begin
    btEntrar.Click;
  end;
end;

procedure TF_CierreExtraciones.Entry_Out;
var i: Integer; messaje: string;
begin
  for i := 0 to Screen.ActiveForm.ComponentCount - 1 do begin
    if TcxDBCurrencyEdit(Screen.Components[i]).Enabled then
      if TcxDBCurrencyEdit(Screen.ActiveForm.Components[i]).Focused then begin
        messaje := TcxDBCurrencyEdit(Screen.Components[i]).Name;
        ShowMessage(messaje);
      end;
  end;
end;

end.
