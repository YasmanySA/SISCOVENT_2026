unit CierreMensualCUP;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit, cxCurrencyEdit,
  cxGroupBox, dxGDIPlusClasses, Vcl.ExtCtrls, dxSkinOffice2019Colorful, cxLabel,
  cxSpinEdit, cxButtonEdit, Vcl.ToolWin, Vcl.ComCtrls, cxRadioGroup,
  cxSpinButton, Vcl.Samples.Spin, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.Samples.Bind.Editors, Data.Bind.Components, dxWheelPicker,
  dxNumericWheelPicker, dxDateTimeWheelPicker, dxDBDateTimeWheelPicker,
  Vcl.DBActns, System.Actions, Vcl.ActnList, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl,
  cxCheckBox, dxToggleSwitch, dxSkinWXI, dxLayoutLookAndFeels;

type
  TF_CierreDesglose = class(TForm)
    cxButton2: TcxButton;
    btEntrar: TcxButton;
    BindingsList1: TBindingsList;
    cxButton1: TcxButton;
    Timer1: TTimer;
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
    ed100: TcxDBCurrencyEdit;
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
    Ed_100: TdxLayoutItem;
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
    e1000: TdxLayoutItem;
    L1000: TdxLayoutLabeledItem;
    S1000: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutAlignmentConstraint1: TdxLayoutAlignmentConstraint;
    dxLayoutItem78: TdxLayoutItem;
    edBancoCUP: TcxDBCurrencyEdit;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    edBANCOMLC: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    edEUR: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    edUSD: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    atContabilizar: TcxButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutGroup1: TdxLayoutGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    procedure btEntrarClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ed1000KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure atContabilizarClick(Sender: TObject);
  private
    procedure Entry_Out;
    { Private declarations }
  public
    conteo: integer;

    { Public declarations }
  end;

var F_CierreDesglose: TF_CierreDesglose;

implementation

uses Venta, Ajustes, dataCierreEfectivo, DCaja, tasaactual, ClassGlobal, Cierre,
  dmRates;
{$R *.dfm}

procedure TF_CierreDesglose.btEntrarClick(Sender: TObject);
begin

  DMCierre.dbDesgloseCierre.Post;
  DMCierre.dbDesgloseCierre.refresh;
  DMCierre.Q_CierreDiario.refresh;
  DMCierre.Q_PeriodoMensual.refresh;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh;
  // mdataVentas.tbCaja.Edit;
  // FormVenta.edEfec_CUP.Value := (edSubBilletes.Value);
  // mdataVentas.tbCaja.Post;
  // mdataVentas.tbCaja.Refresh;
  /// /
  // para agregar la fecha del comprob. hacia la tb de entrad. de Efectivo (MN)
  // data_efectivo.tbEnEfectMN.Edit;
  // edFecha.Date := FormVenta.edFecha.Date;
  // data_efectivo.tbEnEfectMN.Post;
  // data_efectivo.tbEnEfectMN.Refresh;
  /// /  /// --------------
  // Close;
end;

procedure TF_CierreDesglose.cxButton1Click(Sender: TObject);
begin
  with DMCierre do begin
    dbDesgloseCierre.Append;

    dbDesgloseCierre.Edit;

    dbDesgloseCierreFecha.AsDateTime := Date;

  end;
  with dmrate do begin
    tbCambioActual.refresh;

    with DMCierre do begin
      dbDesgloseCierreUSD_cambio.Value := tbCambioActualUSD.Value;
      dbDesgloseCierreEUR_cambio.Value := tbCambioActualEUR.Value;
      dbDesgloseCierreMLC_cambio.Value := tbCambioActualMLC.Value;

      dbDesgloseCierre.Post;

    end;

  end;
end;

procedure TF_CierreDesglose.cxButton2Click(Sender: TObject);
begin
  if MessageDlg('Usted va a limpiar el Efectivo ¿Estas seguro?', mtWarning,
    [mbYes, mbNo], 0, mbYes) = mrYes then

    // data_efectivo.tbEnEfectMN.Delete;
    // mdataVentas.tbCaja.Edit;
    // FormVenta.edEfec_CUP.Value := (edSubBilletes.Value);
    // mdataVentas.tbCaja.Post;
    // mdataVentas.tbCaja.Refresh;
    // Close;
end;

procedure TF_CierreDesglose.atContabilizarClick(Sender: TObject);
begin
  if edTotal.Value > 0 then begin
    Alerta_AdvertenciaContabilizar2
      ('Usted va a contabilizar la venta con el importe ' + '$' +
      DMCierre.dbDesgloseCierrehistory.Value.ToString + '. ¿Desea continuar?',
      DMCierre.dbDesgloseCierre, 'history', TMsgDlgType.mtConfirmation);
  end else begin

  end;

end;

procedure TF_CierreDesglose.ed1000KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_RETURN then begin
    Key := VK_TAB;
    DMCierre.dbDesgloseCierre.refresh;

  end;

  if Key = VK_NEXT then begin
    btEntrar.Click
  end;
end;

procedure agregarconteo;
begin
  // F_CierreMensualCUP.ed1.Properties.Increment := F_CierreMensualCUP.conteo;
  // F_CierreMensualCUP.ed2.Properties.Increment := F_CierreMensualCUP.conteo;
  // F_CierreMensualCUP.ed3.Properties.Increment := F_CierreMensualCUP.conteo;
  // F_CierreMensualCUP.ed4.Properties.Increment := F_CierreMensualCUP.conteo;
  // F_CierreMensualCUP.ed5.Properties.Increment := F_CierreMensualCUP.conteo;
  // F_CierreMensualCUP.ed6.Properties.Increment := F_CierreMensualCUP.conteo;
  // F_CierreMensualCUP.ed7.Properties.Increment := F_CierreMensualCUP.conteo;
  // F_CierreMensualCUP.ed8.Properties.Increment := F_CierreMensualCUP.conteo;
  // F_CierreMensualCUP.ed9.Properties.Increment := F_CierreMensualCUP.conteo;
  // F_CierreMensualCUP.ed10.Properties.Increment := F_CierreMensualCUP.conteo;
end;

procedure Increment;
var Value: integer;
begin

  // if F_CierreMensualCUP.ed1.isFocused then
  //
  // begin
  /// /    F_CierreMensualCUP.ed1.Value := F_CierreMensualCUP.ed1.Value +
  // F_CierreMensualCUP.conteo;
  /// /    DMCierreCUP.uniquery1.Post;
  /// /    DMCierreCUP.uniquery1.Refresh
  // end
  // else;

  // if F_CierreMensualCUP.ed2.isFocused then
  //
  // begin
  // F_CierreMensualCUP.ed2.Value := F_CierreMensualCUP.ed2.Value +
  // F_CierreMensualCUP.conteo;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh
  // end
  // else;
  // if F_CierreMensualCUP.ed3.isFocused then
  //
  // begin
  // F_CierreMensualCUP.ed3.Value := F_CierreMensualCUP.ed3.Value +
  // F_CierreMensualCUP.conteo;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh
  // end
  // else;
  // if F_CierreMensualCUP.ed4.isFocused then
  //
  // begin
  // F_CierreMensualCUP.ed4.Value := F_CierreMensualCUP.ed4.Value +
  // F_CierreMensualCUP.conteo;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh
  // end
  // else;
  // if F_CierreMensualCUP.ed5.isFocused then
  //
  // begin
  // F_CierreMensualCUP.ed5.Value := F_CierreMensualCUP.ed5.Value +
  // F_CierreMensualCUP.conteo;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh
  // end
  // else;
  // if F_CierreMensualCUP.ed6.isFocused then
  //
  // begin
  // F_CierreMensualCUP.ed6.Value := F_CierreMensualCUP.ed6.Value +
  // F_CierreMensualCUP.conteo;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh
  // end
  // else;
  // if F_CierreMensualCUP.ed7.isFocused then
  //
  // begin
  // F_CierreMensualCUP.ed7.Value := F_CierreMensualCUP.ed7.Value +
  // F_CierreMensualCUP.conteo;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh
  // end
  // else;
  // if F_CierreMensualCUP.ed8.isFocused then
  //
  // begin
  // F_CierreMensualCUP.ed8.Value := F_CierreMensualCUP.ed8.Value +
  // F_CierreMensualCUP.conteo;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh
  // end
  // else;
  // if F_CierreMensualCUP.ed9.isFocused then
  //
  // begin
  // F_CierreMensualCUP.ed9.Value := F_CierreMensualCUP.ed9.Value +
  // F_CierreMensualCUP.conteo;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh
  // end
  // else;
  // if F_CierreMensualCUP.ed10.isFocused then
  //
  // begin
  // F_CierreMensualCUP.ed10.Value := F_CierreMensualCUP.ed10.Value +
  // F_CierreMensualCUP.conteo;
  // DMCierreCUP.uniquery1.Post;
  // DMCierreCUP.uniquery1.Refresh
  // end
  // else;

end;

procedure TF_CierreDesglose.Entry_Out;
var

    i: integer; jt: integer; it: integer; messaje: string;
begin

  for i := 0 to Screen.ActiveForm.ComponentCount - 1 do begin
    // if Screen.ActiveForm.Components[i].ClassType = TcxDBCurrencyEdit then
    if TcxDBCurrencyEdit(Screen.Components[i]).Enabled then
      if TcxDBCurrencyEdit(Screen.ActiveForm.Components[i]).Focused then

      begin
        messaje := (TcxDBCurrencyEdit(Screen.Components[i]).Name);
        ShowMessage(messaje);

        // messaje := ( (TcxDBCurrencyEdit(Screen.Components[i]).Value * -1).ToString) ;
        // ShowMessage(messaje);

        // DMCierreCUP.dbCierreCUP.Edit;
        //
        // TcxDBCurrencyEdit(Screen.Components[i]).Value :=
        // TcxDBCurrencyEdit(Screen.Components[i]).Value * -1;
        // DMCierreCUP.dbCierreCUP.Post;
      end;

  end;

  /// /

end;

end.
