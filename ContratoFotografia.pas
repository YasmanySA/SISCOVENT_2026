unit ContratoFotografia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxDBLabel, Vcl.StdCtrls,
  Vcl.DBCtrls, dxWheelPicker, dxNumericWheelPicker, dxDateTimeWheelPicker,
  dxDBDateTimeWheelPicker, cxDBEdit, cxSpinEdit, cxTimeEdit, cxCalendar,
  Vcl.Menus, cxButtons, Vcl.ComCtrls, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  cxScheduler, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerAgendaView, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerRecurrence, dxBarBuiltInMenu,
  cxSchedulerTreeListBrowser, cxSchedulerRibbonStyleEventEditor, dxRibbonSkins,
  dxRibbonCustomizationForm, cxCheckBox, cxCurrencyEdit, dxPrinting,
  cxSchedulerActions, dxBar, cxClasses, dxRibbon, System.Actions, Vcl.ActnList,
  dxActions, System.ImageList, Vcl.ImgList, cxImageList, dxRibbonGallery,
  dxBarExtItems, Vcl.DBActns, dxSkinsForm, dxGaugeCustomScale,
  dxGaugeDigitalScale, dxGaugeDBScale, dxGaugeControl, Vcl.ExtCtrls, frxClass,
  frxDBSet, cxMemo, dxSkiniMaginary, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxCore, dxSkinWXI,
  frCoreClasses;

const
  Dia = 24;
  Hora = 60;
  day1 = '1 Dia';
  day2 = '2 Dias';

type

  TContrato = class(TForm)
    cxScheduler1: TcxScheduler;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    dxSchedulerNewEvent: TdxSchedulerNewEvent;
    dxRibbonTabHome: TdxRibbonTab;
    dxBarEvent: TdxBar;
    dxBarLargeButtonNewEvent: TdxBarLargeButton;
    dxSchedulerNewRecurringEvent: TdxSchedulerNewRecurringEvent;
    dxBarLargeButtonNewRecurringEvent: TdxBarLargeButton;
    dxSchedulerGoBackward: TdxSchedulerGoBackward;
    dxBarNavigation: TdxBar;
    dxBarLargeButtonGoBackward: TdxBarLargeButton;
    dxSchedulerGoForward: TdxSchedulerGoForward;
    dxBarLargeButtonGoForward: TdxBarLargeButton;
    dxSchedulerGoToToday: TdxSchedulerGoToToday;
    dxBarLargeButtonGotoToday: TdxBarLargeButton;
    dxSchedulerGoToDate: TdxSchedulerGoToDate;
    dxBarLargeButtonGotoDate: TdxBarLargeButton;
    dxSchedulerNextSevenDays: TdxSchedulerNextSevenDays;
    dxBarLargeButtonNext7Days: TdxBarLargeButton;
    dxSchedulerDayView: TdxSchedulerDayView;
    dxBarArrange: TdxBar;
    dxBarLargeButtonDay: TdxBarLargeButton;
    dxSchedulerWorkWeekView: TdxSchedulerWorkWeekView;
    dxBarLargeButtonWorkWeek: TdxBarLargeButton;
    dxSchedulerWeekView: TdxSchedulerWeekView;
    dxBarLargeButtonWeek: TdxBarLargeButton;
    dxSchedulerMonthView: TdxSchedulerMonthView;
    dxBarLargeButtonMonth: TdxBarLargeButton;
    dxSchedulerTimeGridView: TdxSchedulerTimeGridView;
    dxBarLargeButtonTimeline: TdxBarLargeButton;
    dxSchedulerYearView: TdxSchedulerYearView;
    dxBarLargeButtonYear: TdxBarLargeButton;
    dxSchedulerGanttView: TdxSchedulerGanttView;
    dxBarLargeButtonGanttView: TdxBarLargeButton;
    dxSchedulerAgendaView: TdxSchedulerAgendaView;
    dxBarLargeButtonAgenda: TdxBarLargeButton;
    dxSchedulerGroupByNone: TdxSchedulerGroupByNone;
    dxBarGroupBy: TdxBar;
    dxBarLargeButtonGroupByNone: TdxBarLargeButton;
    dxSchedulerGroupByDate: TdxSchedulerGroupByDate;
    dxBarLargeButtonGroupByDate: TdxBarLargeButton;
    dxSchedulerGroupByResource: TdxSchedulerGroupByResource;
    dxBarLargeButtonGroupByResource: TdxBarLargeButton;
    dxRibbonTabView: TdxRibbonTab;
    dxBarTimeScale: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxSchedulerTimeScale60Minutes: TdxSchedulerTimeScale60Minutes;
    dxBarLargeButton60Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale30Minutes: TdxSchedulerTimeScale30Minutes;
    dxBarLargeButton30Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale15Minutes: TdxSchedulerTimeScale15Minutes;
    dxBarLargeButton15Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale10Minutes: TdxSchedulerTimeScale10Minutes;
    dxBarLargeButton10Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale6Minutes: TdxSchedulerTimeScale6Minutes;
    dxBarLargeButton6Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale5Minutes: TdxSchedulerTimeScale5Minutes;
    dxBarLargeButton5Minutes: TdxBarLargeButton;
    dxSchedulerCompressWeekends: TdxSchedulerCompressWeekends;
    dxBarLayout: TdxBar;
    dxBarLargeButtonCompressWeekends: TdxBarLargeButton;
    dxSchedulerWorkTimeOnly: TdxSchedulerWorkTimeOnly;
    dxBarLargeButtonWorkingHours: TdxBarLargeButton;
    dxSchedulerSnapEventsToTimeSlots: TdxSchedulerSnapEventsToTimeSlots;
    dxBarLargeButtonSnapEventsToTimeSlots: TdxBarLargeButton;
    dxSchedulerDateNavigator: TdxSchedulerDateNavigator;
    dxBarLargeButtonDateNavigator: TdxBarLargeButton;
    dxSchedulerResourcesLayoutEditor: TdxSchedulerResourcesLayoutEditor;
    dxBarLargeButtonResourcesLayoutEditor: TdxBarLargeButton;
    dxRibbonTabFile: TdxRibbonTab;
    dxBarPrint: TdxBar;
    dxBarLargeButtonPrint: TdxBarLargeButton;
    dxBarLargeButtonPrintPreview: TdxBarLargeButton;
    dxBarLargeButtonPageSetup: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1Tab2: TdxRibbonTab;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarColorCombo1: TdxBarColorCombo;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    DatasetPost1: TDataSetPost;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    DatasetNext1: TDataSetNext;
    DatasetPrior1: TDataSetPrior;
    DatasetEdit1: TDataSetEdit;
    DatasetRefresh1: TDataSetRefresh;
    dxBarManager1Bar5: TdxBar;
    dxBarLargeButton8: TdxBarLargeButton;
    DatasetDelete1: TDataSetDelete;
    dxBarLargeButton9: TdxBarLargeButton;
    dxRibbon1Tab3: TdxRibbonTab;
    dxBarManager1Bar6: TdxBar;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    Timer1: TTimer;
    Timer2: TTimer;
    frxReport1: TfrxReport;
    dataRQContratos: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Contrato: TContrato;

implementation

uses dataContratos, Fcalendar, Ofertas, NewPrereserva;
{$R *.dfm}

procedure TContrato.dxBarLargeButton2Click(Sender: TObject);
begin
  FNewPreReserva.ShowModal
end;

procedure TContrato.dxBarLargeButton9Click(Sender: TObject);
begin
  AddOferta.ShowModal;
end;

end.
