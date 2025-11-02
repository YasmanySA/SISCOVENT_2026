unit Venta;

interface

uses
  // --------------------------------

    IniFiles, Winapi.ShellAPI,

  // ------------------------------------

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxCurrencyEdit, dxSkinsForm, System.Actions, Vcl.ActnList, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, cxImageList, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, dxWheelPicker, dxNumericWheelPicker,
  dxDateTimeWheelPicker, dxDBDateTimeWheelPicker, cxDBNavigator, cxProgressBar,
  cxCheckBox, cxTextEdit, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxLabel, cxDBLabel, dxGDIPlusClasses,
  IdBaseComponent, IdComponent, IdCustomTCPServer, IdTCPServer, IdCmdTCPServer,
  IdExplicitTLSClientServerBase, IdSMTPServer, MMSystem, cxFilterControl,
  Vcl.DBCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, System.Math,
  Vcl.ActnMan, Vcl.ActnColorMaps, frxClass, frxDBSet, cxSpinEdit,
  dxSkinOffice2019Colorful, dxDateRanges, Vcl.DBActns, Vcl.MPlayer, dxBarCode,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, Vcl.WinXPickers, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, dxDBNumericWheelPicker, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations,
  dxNavBarCollns, dxNavBarBase, dxNavBar, Vcl.CategoryButtons, Vcl.ButtonGroup,
  cxCustomListBox, cxListBox, dxNavBarStyles, dxStatusBar, cxTimeEdit, dxBar,
  cxBarEditItem, dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, dxLayoutControlAdapters, cxSplitter, cxRadioGroup,
  dxCore, ClassLogin, dxSkinWXI, cxImage, dxToggleSwitch,
  Vcl.ButtonStylesAttributes, Vcl.StyledButtonGroup, Vcl.StyledCategoryButtons,
  Vcl.StyledButton, Vcl.StyledAnimatedButton, Vcl.StyledTaskDialog,
  Vcl.StyledAnimatedTaskDialog, FireDAC.UI.Intf, FireDAC.Stan.Async,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.DApt, MemDS, DBAccess, Uni,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DAScript, UniScript,
  FireDAC.Comp.Script;

type
  TFormVenta = class(TForm)
    btNewFact: TcxButton;
    img_icons: TcxImageList;
    time_enabBT0: TTimer;
    Time_reloj: TTimer;
    time_refresh: TTimer;
    time_position: TTimer;
    timepropina: TTimer;
    time_bar: TTimer;
    time_enabledBtContabilizar: TTimer;
    Timer1: TTimer;
    neveg_Ventas: TcxDBNavigator;
    edTime: TdxDBDateTimeWheelPicker;
    ActionList1: TActionList;
    Agregar: TAction;
    Entrar: TAction;
    Cancelar: TAction;
    Nuevo: TAction;
    Guardar: TAction;
    cash: TAction;
    Timer2: TTimer;
    OpenDialog: TOpenDialog;
    DBLookupComboBox2: TDBLookupComboBox;
    edGastoGenerales: TcxDBCurrencyEdit;
    edGastoInsumos: TcxDBCurrencyEdit;
    edPrecio: TcxDBCurrencyEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Timer3: TTimer;
    Timer4: TTimer;
    Imprimir: TTimer;
    Timer5: TTimer;
    Button2: TButton;
    Timer6: TTimer;
    Timer7: TTimer;
    Timer8: TTimer;
    DatasetDelete1: TDataSetDelete;
    DatasetDelete2: TDataSetDelete;
    cxCheckBox2: TcxCheckBox;
    Timer9: TTimer;
    CheckBox1: TCheckBox;
    cxDateNavigator1: TcxDateNavigator;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    dxDBNumericWheelPicker1: TdxDBNumericWheelPicker;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dxSkinController1: TdxSkinController;
    tvFilmsList: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Timer10: TTimer;
    Edit2: TEdit;
    BindSourceDB2: TBindSourceDB;
    Button5: TButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tvFilmsListServicio: TcxGridDBColumn;
    Memo1: TMemo;
    dxBarManager1: TdxBarManager;
    cxBarEditItem1: TcxBarEditItem;
    cxButton8: TcxButton;
    cxGrid4: TcxGrid;
    dataDescripcion: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Button6: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxGridDBTableView1id_enlace: TcxGridDBColumn;
    cxGridDBTableView1frequently_use: TcxGridDBColumn;
    cxGridDBTableView1usedate: TcxGridDBColumn;
    cxGridDBTableView1Descripcion: TcxGridDBColumn;
    cxGridDBTableView1Habilitado: TcxGridDBColumn;
    cxGridDBTableView1Cod_Descrip: TcxGridDBColumn;
    cxGridDBTableView1CodigoProducto: TcxGridDBColumn;
    cxGridDBTableView1Producto: TcxGridDBColumn;
    cxGridDBTableView1Servicio: TcxGridDBColumn;
    cxGridDBTableView1color: TcxGridDBColumn;
    Button1: TButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem28: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem39: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem41: TdxLayoutItem;
    edFecha: TcxDBDateEdit;
    dxLayoutItem42: TdxLayoutItem;
    btNuevo: TcxButton;
    dxLayoutItem43: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem44: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem45: TdxLayoutItem;
    btDelete: TcxButton;
    dxLayoutItem46: TdxLayoutItem;
    btSave: TcxButton;
    dxLayoutItem48: TdxLayoutItem;
    cxDBTimeEdit1: TcxDBTimeEdit;
    LayoutBackGroup_Root: TdxLayoutGroup;
    LayoutBack: TdxLayoutControl;
    brCancel: TcxButton;
    btcode: TcxButton;
    edDescrip: TcxDBLookupComboBox;
    GridCaja: TcxGrid;
    TablaCaja: TcxGridDBTableView;
    TablaCajaID1: TcxGridDBColumn;
    TablaCajaenlace_id1: TcxGridDBColumn;
    TablaCajaenlace_operacion1: TcxGridDBColumn;
    TablaCajaFecha1: TcxGridDBColumn;
    TablaCajahora1: TcxGridDBColumn;
    TablaCajaServicios1: TcxGridDBColumn;
    TablaCajaDescripcion1: TcxGridDBColumn;
    TablaCajaPrecioCUP1: TcxGridDBColumn;
    TablaCajaCantidad1: TcxGridDBColumn;
    TablaCajaSubtotalCUP1: TcxGridDBColumn;
    TablaCajaGastosInsumos1: TcxGridDBColumn;
    TablaCajaGastosGenerales1: TcxGridDBColumn;
    TablaCajaTotalInsumos1: TcxGridDBColumn;
    TablaCajaTotalGenerales1: TcxGridDBColumn;
    GridCajaLevel1: TcxGridLevel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem51: TdxLayoutItem;
    cxLabel35: TcxLabel;
    edTotal: TcxDBCurrencyEdit;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    edCambio: TcxDBCurrencyEdit;
    cxLabel38: TcxLabel;
    dxTotal: TdxLayoutItem;
    DXchangue: TdxLayoutItem;
    LayoutPagos: TdxLayoutControl;
    edEfec_CUP: TcxDBCurrencyEdit;
    edEfec_USD: TcxDBCurrencyEdit;
    edEfec_EUR: TcxDBCurrencyEdit;
    Panel5: TPanel;
    cxLabel21: TcxLabel;
    dxLayoutControl6: TdxLayoutControl;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    dxLayoutControl7: TdxLayoutControl;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    edCredito: TcxDBCurrencyEdit;
    edUSD: TcxDBCurrencyEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    LayoutPagosGroup_Root: TdxLayoutGroup;
    dxLayoutItem34: TdxLayoutItem;
    btcobrar: TcxButton;
    btTiket: TcxButton;
    cxSpinEdit1: TcxSpinEdit;
    barraContab: TcxProgressBar;
    cxButton3: TcxButton;
    btExportPDF: TcxButton;
    dxLayoutItem59: TdxLayoutItem;
    edOferta: TcxDBLookupComboBox;
    cxLabel40: TcxLabel;
    LCant: TcxLabel;
    dxLayoutItem53: TdxLayoutItem;
    edCant: TcxDBCurrencyEdit;
    dxLayoutItem54: TdxLayoutItem;
    cxButton6: TcxButton;
    add2: TdxLayoutItem;
    btno2: TcxButton;
    add3: TdxLayoutItem;
    btno3: TcxButton;
    dxLayoutItem57: TdxLayoutItem;
    add4: TcxButton;
    dxLayoutItem58: TdxLayoutItem;
    btAcept: TcxButton;
    dxLayoutItem76: TdxLayoutItem;
    edPrecioBase: TcxDBCurrencyEdit;
    dxLayoutItem71: TdxLayoutItem;
    edLargo: TcxCurrencyEdit;
    dxLayoutItem72: TdxLayoutItem;
    edAncho: TcxCurrencyEdit;
    dxLayoutItem81: TdxLayoutItem;
    edPrecioCalculo: TcxCurrencyEdit;
    dxLayoutItem78: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutItem75: TdxLayoutItem;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    dxLayoutItem79: TdxLayoutItem;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem82: TdxLayoutItem;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem83: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutItem84: TdxLayoutItem;
    dxLayoutItem85: TdxLayoutItem;
    btClearService_Frecuenty: TcxButton;
    dxLayoutItem93: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem94: TdxLayoutItem;
    BtPropina: TcxButton;
    dxLayoutItem95: TdxLayoutItem;
    edpropina: TcxDBCurrencyEdit;
    dxLayoutItem96: TdxLayoutItem;
    RGCambio: TcxRadioButton;
    dxLayoutItem97: TdxLayoutItem;
    RGPropina: TcxRadioButton;
    timer_tip: TTimer;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    cxRadioGroup1: TcxRadioGroup;
    atContabilizar: TAction;
    ShowCUP: TAction;
    cxImageCollection1: TcxImageCollection;
    cxImageCollection1Item1: TcxImageCollectionItem;
    icon_services: TcxImageList;
    Add_sale: TAction;
    BtShare: TcxButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView3ID_codigo: TcxGridDBColumn;
    cxGridDBTableView3id_enlace: TcxGridDBColumn;
    cxGridDBTableView3Detalles: TcxGridDBColumn;
    cxGridDBTableView3Precio: TcxGridDBColumn;
    cxGridDBTableView3Cantidad: TcxGridDBColumn;
    cxGridDBTableView3ReglaCarrito: TcxGridDBColumn;
    cxGridDBTableView3PrecioRegla: TcxGridDBColumn;
    dxLayoutItem5: TdxLayoutItem;
    Action1: TAction;
    dxLayoutItem98: TdxLayoutItem;
    btduplicate: TcxButton;
    duplicate: TAction;
    dxLayoutItem99: TdxLayoutItem;
    btupdatetasas: TcxButton;
    Timer11: TTimer;
    dxLayoutSplitterItem9: TdxLayoutSplitterItem;
    dxLayoutItem101: TdxLayoutItem;
    dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group_Root1: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutControl6Group_Root: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    dxLayoutSplitterItem3: TdxLayoutSplitterItem;
    dxLayoutSplitterItem4: TdxLayoutSplitterItem;
    dxLayoutSplitterItem5: TdxLayoutSplitterItem;
    dxLayoutSplitterItem6: TdxLayoutSplitterItem;
    dxLayoutSplitterItem7: TdxLayoutSplitterItem;
    dxLayoutSplitterItem8: TdxLayoutSplitterItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    LGHeader: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem26: TdxLayoutItem;
    btMinimise: TcxButton;
    dxLayoutGroup18: TdxLayoutGroup;
    LGItems: TdxLayoutGroup;
    LGPrices: TdxLayoutGroup;
    LGTotal: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    LGOperation: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutGroup25: TdxLayoutGroup;
    LGServices: TdxLayoutGroup;
    LGPlasticado: TdxLayoutGroup;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup26: TdxLayoutGroup;
    cbListServices: TStyledCategoryButtons;
    Button3: TButton;
    Button4: TButton;
    Button7: TButton;
    cxGridDBTableView2id_enlace: TcxGridDBColumn;
    cxGridDBTableView2frequently_use: TcxGridDBColumn;
    cxGridDBTableView2usedate: TcxGridDBColumn;
    cxGridDBTableView2Descripcion: TcxGridDBColumn;
    cxGridDBTableView2Habilitado: TcxGridDBColumn;
    cxGridDBTableView2Cod_Descrip: TcxGridDBColumn;
    cxGridDBTableView2CodigoProducto: TcxGridDBColumn;
    cxGridDBTableView2Producto: TcxGridDBColumn;
    cxGridDBTableView2Servicio: TcxGridDBColumn;
    cxGridDBTableView2color: TcxGridDBColumn;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutGroup31: TdxLayoutGroup;
    dxLayoutGroup32: TdxLayoutGroup;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutGroup34: TdxLayoutGroup;
    dxLayoutGroup35: TdxLayoutGroup;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutGroup37: TdxLayoutGroup;
    dxLayoutGroup38: TdxLayoutGroup;
    dxLayoutGroup39: TdxLayoutGroup;
    dxLayoutGroup41: TdxLayoutGroup;
    dxLayoutGroup40: TdxLayoutGroup;
    dxLayoutGroup42: TdxLayoutGroup;
    SDialog: TStyledTaskDialog;
    Button9: TButton;
    cxImageList1: TcxImageList;
    cxImageCollection2: TcxImageCollection;
    dxLayoutItem1: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutGroup28: TdxLayoutGroup;
    cxGrid5DBTableView1id_enlaceCaja: TcxGridDBColumn;
    cxGrid5DBTableView1Id_Operacion: TcxGridDBColumn;
    cxGrid5DBTableView1id_date: TcxGridDBColumn;
    cxGrid5DBTableView1Largo: TcxGridDBColumn;
    cxGrid5DBTableView1Ancho: TcxGridDBColumn;
    cxGrid5DBTableView1Area: TcxGridDBColumn;
    cxGrid5DBTableView1Precio: TcxGridDBColumn;
    cxEditStyleController1: TcxEditStyleController;
    cxStyle3: TcxStyle;
    styleGrid: TcxStyleRepository;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    dxLayoutItem23: TdxLayoutItem;
    btOpenBox: TcxButton;
    OpenBox: TAction;
    StyledAnimatedTaskDialog1: TStyledAnimatedTaskDialog;
    StyledTaskDialog1: TStyledTaskDialog;
    dataDescripcionID: TcxGridDBColumn;
    dataDescripcionenlace_id: TcxGridDBColumn;
    dataDescripcionenlace_operacion: TcxGridDBColumn;
    dataDescripcionFecha: TcxGridDBColumn;
    dataDescripcionhora: TcxGridDBColumn;
    dataDescripcionServicios: TcxGridDBColumn;
    dataDescripcionDescripcion: TcxGridDBColumn;
    dataDescripcionPrecioCUP: TcxGridDBColumn;
    dataDescripcionCantidad: TcxGridDBColumn;
    dataDescripcionSubtotalCUP: TcxGridDBColumn;
    dataDescripcionGastosInsumos: TcxGridDBColumn;
    dataDescripcionGastosGenerales: TcxGridDBColumn;
    dataDescripcionTotalInsumos: TcxGridDBColumn;
    dataDescripcionTotalGenerales: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NoComp: TcxGridDBColumn;
    cxGrid1DBTableView1NoOperacion: TcxGridDBColumn;
    cxGrid1DBTableView1IDUser: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Hora: TcxGridDBColumn;
    cxGrid1DBTableView1TotalVentaCUP: TcxGridDBColumn;
    cxGrid1DBTableView1EfectivoCUP: TcxGridDBColumn;
    cxGrid1DBTableView1EfectivoEUR: TcxGridDBColumn;
    cxGrid1DBTableView1EfectivoUSD: TcxGridDBColumn;
    cxGrid1DBTableView1EfectivoCUC: TcxGridDBColumn;
    cxGrid1DBTableView1ComercioE_CUP: TcxGridDBColumn;
    cxGrid1DBTableView1ComercioE_USD: TcxGridDBColumn;
    cxGrid1DBTableView1NoTarjetaCredito: TcxGridDBColumn;
    cxGrid1DBTableView1nameComercio: TcxGridDBColumn;
    cxGrid1DBTableView1Propina: TcxGridDBColumn;
    cxGrid1DBTableView1CambioCUP: TcxGridDBColumn;
    cxGrid1DBTableView1GastosGenerales: TcxGridDBColumn;
    cxGrid1DBTableView1GastosInsumos: TcxGridDBColumn;
    cxGrid1DBTableView1history: TcxGridDBColumn;
    cxGrid1DBTableView1Share: TcxGridDBColumn;
    cxGrid1DBTableView1c_usd: TcxGridDBColumn;
    cxGrid1DBTableView1c_eur: TcxGridDBColumn;
    cxGrid1DBTableView1c_mlc: TcxGridDBColumn;
    cxGrid1DBTableView1date_openbox: TcxGridDBColumn;
    cxGrid8DBTableView1: TcxGridDBTableView;
    cxGrid8Level1: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGrid8DBTableView1enlace_id: TcxGridDBColumn;
    cxGrid8DBTableView1TotalGenerales: TcxGridDBColumn;
    cxGrid8DBTableView1TotalInsumos: TcxGridDBColumn;
    cxGrid8DBTableView1SubtotalCUP: TcxGridDBColumn;

    procedure CancelarExecute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure btSaveClick(Sender: TObject);

    procedure edTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure time_refreshTimer(Sender: TObject);
    procedure Time_relojTimer(Sender: TObject);
    procedure time_enabledBtContabilizarTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edEfec_MNKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TablaCajaCantidadHeaderClick(Sender: TObject);

    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAceptClick(Sender: TObject);
    procedure edOfertaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodigoEnter(Sender: TObject);

    procedure cxButton2Click(Sender: TObject);
    procedure brCancelClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure edCantKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btcodeClick(Sender: TObject);
    procedure btTiketClick(Sender: TObject);
    procedure edEfec_USDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edEfec_EURKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGroupBox2DblClick(Sender: TObject);
    procedure edCreditoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton6Click(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure btMinimiseClick(Sender: TObject);
    procedure btno2Click(Sender: TObject);
    procedure btno3Click(Sender: TObject);
    procedure add4Click(Sender: TObject);
    procedure Edit2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Edit2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);

    procedure Button5Click(Sender: TObject);

    procedure servicesButtonClicked(Sender: TObject; const Button: TButtonItem);
    procedure ListServicesFrecuentify2LinkClick(Sender: TObject;
      ALink: TdxNavBarItemLink);
    procedure btClearService_FrecuentyClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure TablaCajaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TablaCajaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dataDescripcionCInsertdatadragdropellDblClick
      (Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button6Click(Sender: TObject);
    procedure btExportPDFClick(Sender: TObject);
    procedure edLargoPropertiesChange(Sender: TObject);
    procedure edAnchoPropertiesChange(Sender: TObject);
    procedure cxDBCurrencyEdit1PropertiesChange(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure Q_PlasicadoAfterDelete(DataSet: TDataSet);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure BtPropinaClick(Sender: TObject);
    procedure timer_tipTimer(Sender: TObject);
    procedure LayoutBackDblClick(Sender: TObject);
    procedure atContabilizarExecute(Sender: TObject);
    procedure AddEfectivoExecute(Sender: TObject);
    procedure ShowCUPExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Add_saleExecute(Sender: TObject);
    procedure edAnchoPropertiesEditValueChanged(Sender: TObject);
    procedure edLargoPropertiesEditValueChanged(Sender: TObject);
    procedure BtShareClick(Sender: TObject);
    procedure ListServicesFrecuentifyMouseLeave(Sender: TObject);
    procedure btduplicateClick(Sender: TObject);
    procedure duplicateExecute(Sender: TObject);
    procedure btupdatetasasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure cbListServicesButtonClicked(Sender: TObject;
      const Button: TButtonItem);
    procedure edEfec_CUPEnter(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure cbListServicesExit(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure OpenBoxExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    procedure InsertarServicios;
    procedure duplicateservices;
    procedure Collapsed;
    procedure add_sales;

    { Private declarations }
  public
    ConfigINI: TIniFile;

    procedure Insertdatadragdrop;
    procedure CreateGroupServices;
    procedure CreateItemServices;
    procedure OpenBoxCash;

    { Public declarations }
  end;

var FormVenta: TFormVenta;

implementation

{$R *.dfm}

uses
  // --------Classes---------
    ClassGlobal, Main,
  // ----------

  DCaja, DataClasif_U, DesgloseMN, Alerta, ReportTicket, DesgloseUSD,
  DesgloseEUR, DataResumen, DesgloseBanco, notication, send_notify, tasaactual,
  ConexionDM;

procedure Reseed(const ANewSeed: Integer; const AConnection: TFDConnection);
var Script: TFDScript;
begin
  Script := TFDScript.Create(nil);
  try
    Script.Connection := AConnection;
    Script.SQLScripts.Clear;
    with Script.SQLScripts.Add do begin
      Name := 'ReseedScript';
      SQL.Text := 'DBCC CHECKIDENT (''dbo.Historico_tbVentasCaja'', RESEED, ' +
        IntToStr(ANewSeed) + ') WITH NO_INFOMSGS;';
    end;
    Script.ExecuteAll;
  finally Script.Free;
  end;
end;

procedure TFormVenta.Collapsed;
var I: Integer;
begin
  for I := 0 to cbListServices.Categories.Count - 1 do begin
    FormVenta.cbListServices.Categories.Items[I].Collapsed := true;
  end;
end;

function CalcPrecio(Largo, Ancho, Precio: double): double;
begin
  Result := Round((Largo * Ancho) * Precio)
end;

procedure CalculoMicaAuto;
begin
  FormVenta.edPrecioCalculo.Value := CalcPrecio(FormVenta.edLargo.Value,
    FormVenta.edAncho.Value, DMCaja.QMedidasPlasticado2Preciocm2.AsFloat)
end;

procedure TFormVenta.Insertdatadragdrop;
begin
  DMCaja.tbVentaOperacionesFind.Params[0].AsInteger :=
    DMCaja.TbdescripCod_Descrip.Value;

  DMCaja.tbVentaOperacionesFind.Execute;

  if DMCaja.tbVentaOperacionesFindDescripcion.Text <> '' then

  begin
    DMCaja.tbVentaOperacionesFind.Edit;
    DMCaja.tbVentaOperacionesFindCantidad.Value :=
      DMCaja.tbVentaOperacionesFindCantidad.Value + 1;
    DMCaja.tbVentaOperacionesFind.Post;
    btAcept.Click;

  end ELSE

  begin

    if DMCaja.tbCaja.RecordCount > 0 then

    begin

      DMCaja.tbVentasOperaciones.Append;

      // edDescrip.OnEnter(edDescrip);
      DMCaja.tbVentasOperacionesDescripcion.Value :=
        DMCaja.TbdescripCod_Descrip.Text;
      // --------------------------------------------

      DM_Clasif_U.Tbdescrip.Refresh;
      DM_Clasif_U.tb_Precios.Refresh;

      DMCaja.tbVentasOperaciones.Edit;
      DMCaja.tbVentasOperacionesFecha.Value := DMCaja.tbCajaFecha.Value;
      DMCaja.tbVentasOperacionesServicios.Value :=
        DMCaja.TbdescripServicio.Text;;

      DMCaja.tbVentasOperacionesPrecioCUP.Value :=
        DM_Clasif_U.tb_PreciosPrecio.Value;

      DMCaja.tbVentasOperacionesCantidad.Value :=
        DM_Clasif_U.tb_PreciosCantidad.Value;

      DMCaja.tbVentasOperaciones.Post;
      DMCaja.tbVentasOperaciones.Refresh;

      DMCaja.tbVentasOperaciones.Edit;

      DMCaja.tbVentasOperacionesGastosGenerales.Value :=
        DM_Clasif_U.costosGeneralesSUMGasto.Value;

      DMCaja.tbVentasOperacionesGastosInsumos.Value :=
        DM_Clasif_U.costosInsumosSUMGasto.Value;
      DMCaja.tbVentasOperaciones.Post;
      DMCaja.tbVentasOperaciones.Refresh;
      // -----------------------------
      DM_Clasif_U.Tbdescrip.Edit;
      DM_Clasif_U.Tbdescripfrequently_use.Value := true;
      DM_Clasif_U.Tbdescripusedate.AsDateTime := Date;
      DM_Clasif_U.Tbdescrip.Post;
      DMCaja.Tbdescrip.Refresh;
      DMCaja.tbServices.Refresh;
      btAcept.Click;

    end else begin
      btNuevo.Click;
      DMCaja.tbVentasOperaciones.Append;
      // edDescrip.OnEnter(edDescrip);
      DMCaja.tbVentasOperacionesDescripcion.Value :=
        DMCaja.TbdescripCod_Descrip.Text;
      // --------------------------------------------

      DM_Clasif_U.Tbdescrip.Refresh;
      DM_Clasif_U.tb_Precios.Refresh;

      DMCaja.tbVentasOperaciones.Edit;
      DMCaja.tbVentasOperacionesFecha.Value := DMCaja.tbCajaFecha.Value;
      DMCaja.tbVentasOperacionesServicios.Value :=
        DMCaja.TbdescripServicio.Text;

      DMCaja.tbVentasOperacionesPrecioCUP.Value :=
        DM_Clasif_U.tb_PreciosPrecio.Value;

      DMCaja.tbVentasOperacionesCantidad.Value :=
        DM_Clasif_U.tb_PreciosCantidad.Value;

      DMCaja.tbVentasOperaciones.Post;
      DMCaja.tbVentasOperaciones.Refresh;

      DMCaja.tbVentasOperaciones.Edit;

      DMCaja.tbVentasOperacionesGastosGenerales.Value :=
        DM_Clasif_U.costosGeneralesSUMGasto.Value;

      DMCaja.tbVentasOperacionesGastosInsumos.Value :=
        DM_Clasif_U.costosInsumosSUMGasto.Value;
      DMCaja.tbVentasOperaciones.Post;
      DMCaja.tbVentasOperaciones.Refresh;
      // -----------------------------
      DM_Clasif_U.Tbdescrip.Edit;
      DM_Clasif_U.Tbdescripfrequently_use.Value := true;
      DM_Clasif_U.Tbdescripusedate.AsDateTime := Now;
      DM_Clasif_U.Tbdescrip.Post;
      DMCaja.Tbdescrip.Refresh;
      DMCaja.tbServices.Refresh;
      btAcept.Click;
    end;

  end;
end;

procedure TFormVenta.InsertarServicios;
begin
  with DMCaja.tbVentasOperaciones do begin
    Append; // Agrega un nuevo registro
    try

      // 🔹 Asignar valores desde Tbdescrip y tbPreciosInsert
      FieldByName('Descripcion').AsString :=
        DMCaja.TbdescripCod_Descrip.AsString;
      FieldByName('Servicios').AsString := DMCaja.TbdescripServicio.AsString;
      FieldByName('PrecioCUP').Value := DMCaja.tbPreciosInsertPrecio.Value;
      FieldByName('Cantidad').Value := DMCaja.tbPreciosInsertCantidad.Value;
      Post; // Guardar registro
    except
      on E: Exception do begin
        Cancel; // Cancelar en caso de error
        raise; // Re-lanzar para capturar en bloque externo
      end;
    end;
  end;

  // 🔹 Actualizar vistas y refrescar datasets relacionados
  DMCaja.tbVentasOperaciones.Refresh;
  DMCaja.Tbdescrip.Refresh;
  DMCaja.tbServices.Refresh;

  // 🔹 Ejecutar acción de aceptación
  btAcept.Click;
end;

procedure TFormVenta.CancelarExecute(Sender: TObject);
begin
  DMCaja.tbVentasOperaciones.Cancel;
  close;
end;

procedure LogError(const ErrorMessage: string);
var IniFile: TIniFile; LogFilePath: string;
begin
  // Obtener la ruta raíz del programa
  LogFilePath := ExtractFilePath(ParamStr(0)) + 'error_log.ini';

  // Crear o abrir el archivo INI
  IniFile := TIniFile.Create(LogFilePath);
  try
    // Guardar el error en una sección con la fecha y hora
      IniFile.WriteString('Errores', FormatDateTime('YYYY-MM-DD HH:NN:SS', Now),
      ErrorMessage);
  finally IniFile.Free;
  end;
end;

procedure TFormVenta.cbListServicesButtonClicked(Sender: TObject;
  const Button: TButtonItem);
var codeSQL: string; LogPath, LogURL, StackInfo: string;
begin
  try
    // 🔹 Construcción del codeSQL
    codeSQL := 'SELECT * FROM tbServiceDescripC WHERE [frequently_use] = 1' +
      ' AND [Habilitado] = 1' +
      ' and Producto = :Producto ORDER BY [usedate] DESC';

    with DMCaja.Tbdescrip do begin
      close;
      SQL.Text := codeSQL;
      ParamByName('Producto').AsString := Button.Caption;
      Open;

      // 🔹 Si no hay registros, salir
      if IsEmpty then Exit;
    end;

    // 🔹 Buscar operación existente
    with DMCaja.tbVentaOperacionesFind do begin
      close;
      if Params.Count > 0 then begin
        Params[0].DataType := ftInteger;
        Params[0].AsInteger := DMCaja.TbdescripCod_Descrip.Value;
      end;
      Open;

      if not IsEmpty then begin
        Edit;
        FieldByName('Cantidad').Value := FieldByName('Cantidad').Value + 1;
        Post;
        btAcept.Click;
      end else begin
        // 🔹 Insertar nuevo servicio
        if DMCaja.tbCaja.IsEmpty then btNuevo.Click;
        InsertarServicios;
      end;
    end;

  except
    on E: Exception do begin
      // 🔹 Log dinámico
      LogPath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) +
        'error_log.ini';
      LogURL := 'file:///' + StringReplace(LogPath, '\', '/', [rfReplaceAll]);

      // 🔹 Si usas JCL, puedes agregar Stack trace
      if E.StackTrace <> '' then StackInfo := E.StackTrace
      else StackInfo := '(No disponible, compilar con debug info)';

      LogError('Clase: ' + Self.ClassName +
        ' | Procedimiento: cbListServicesButtonClicked' + ' | Error: ' +
        E.Message + sLineBreak + 'Stack: ' + StackInfo);

      ShowMessage('Ha ocurrido un error. Se abrirá el archivo error_log.');
      if FileExists(LogPath) then
          ShellExecute(0, 'open', PChar(LogURL), nil, nil, SW_SHOWNORMAL)
      else ShowMessage('No se encontró el archivo de log en: ' + LogPath);
    end;
  end;
end;

procedure TFormVenta.cbListServicesExit(Sender: TObject);
begin
  Collapsed
end;

procedure TFormVenta.ShowCUPExecute(Sender: TObject);
begin
  if DMCaja.tbCaja.RecordCount > 0 then BEGIN
    if DMCaja.tbCajaTotalVentaCUP.Value > 0 then begin
      F_EnEfecMN.ShowModal;
    end;

  END else

  begin

  end;

end;

procedure TFormVenta.AddEfectivoExecute(Sender: TObject);
begin
  //
end;

procedure TFormVenta.Add_saleExecute(Sender: TObject);
var Number_Sales: Integer;
begin
  Number_Sales := 3; // límite máximo permitido

  if DMCaja.tbCaja.RecordCount < Number_Sales then add_sales
  else ShowMessage
      (Format('Lo sentimos, alcanzó el límite de registros. Solo se permiten %d como máximo. Termine las operaciones pendientes.',
      [Number_Sales]));
end;

procedure TFormVenta.atContabilizarExecute(Sender: TObject);
begin
  if edCambio.Value > 0 then begin
    FAlerta.edFaltanteMN.Value := (FAlerta.edFaltanteCUC.Value * 24);
    FAlerta.ShowModal
  end else begin

    Alerta_AdvertenciaContabilizar
      ('Usted va a contabilizar la venta con el importe ' + '$' +
      DMCaja.tbCajaTotalVentaCUP.Value.ToString + '.Desea continuar?',
      DMCaja.tbCaja, 'history', 'share', TMsgDlgType.mtConfirmation);
    atContabilizar.Enabled := false;
    OpenBox.Enabled := false;
  end;

end;

procedure TFormVenta.add4Click(Sender: TObject);
begin
  try
    DMCaja.tbVentasOperaciones.Edit;

    edCant.Value := edCant.Value + 4;

    btAcept.Click;

  except

    on E: Exception do ShowMessage(E.Message);
  end;
end;

procedure TFormVenta.BtPropinaClick(Sender: TObject);
var msg: string;
begin

  try
    msg := 'Estas seguro(a) que deseas agregar el vuelto como propina';
    if RGCambio.Checked = true then begin

      if MessageDlg(msg, TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
      then

      begin
        DMCaja.tbCaja.Edit;
        DMCaja.tbCajaPropina.Value := (DMCaja.tbCajaCambioCUP.Value * -1);
        DMCaja.tbCaja.Post;
      end;

      // FormVenta.propinaChek.Checked := False;
      // Close;
    end;
    if RGPropina.Checked = true then begin

      if MessageDlg(msg, TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes
      then

      begin
        DMCaja.tbCaja.Post;
      end;


      // FormVenta.propinaChek.Checked := False;
      // Close;

    end;
  except
    on E: Exception do begin
      ShowMessage(E.Message)
    end;
  end;

end;

procedure TFormVenta.btExportPDFClick(Sender: TObject);
begin
  if DirectoryExists(ExtractFilePath(Application.ExeName) + 'Tikets') then begin
    FTicket.tiket.LoadFromFile(ExtractFilePath(Application.ExeName) +
      'Reportes\Tiket.fr3');

    /// /      ShowMessage(ExtractFilePath(Application.ExeName) +
    /// /      'Reportes\' + 'Tiket.fr3');
    // //
    // FTicket.frxPDFExport1.Title := 'Tiket ' + DMCaja.tbCajaNoOperacion.Value;
    FTicket.frxPDFExport1.FileName := ExtractFilePath(Application.ExeName) +
      'Tikets\' + 'Comprobante' + DMCaja.tbCajaNoOperacion.Text + '.pdf';

    FTicket.tiket.Export(FTicket.frxPDFExport1);
    // FTicket.tiket.PrepareReport(true);

  end
  else CreateDir(ExtractFilePath(Application.ExeName) + 'Tikets');
  // ShowMessage
  // ('Se ha creado el Directorio correctamente, Por favor intentelo de nuevo');
end;

procedure TFormVenta.cxButton11Click(Sender: TObject);

begin

  try

    DMCaja.Q_insertmedidas.ParamByName('id_enlaceCaja').AsInteger :=
      DMCaja.tbCajaNoComp.Value;
    DMCaja.Q_insertmedidas.ParamByName('Id_Operacion').AsString :=
      DMCaja.tbCajaNoOperacion.Text;
    DMCaja.Q_insertmedidas.ParamByName('Largo').AsCurrency := edLargo.Value;
    DMCaja.Q_insertmedidas.ParamByName('Ancho').AsCurrency := edAncho.Value;
    DMCaja.Q_insertmedidas.ParamByName('id_date').AsDate :=
      DMCaja.tbCajaFecha.AsDateTime;
    DMCaja.Q_insertmedidas.Execute;
    edAncho.Clear;
    edLargo.Clear;
    DMCaja.Q_Plasicado.Refresh;
    DMCaja.Q_PlasticadoResumen.Refresh;

  except
    on E: Exception do begin
      ShowMessage(E.Message)
    end;
  end;

end;

procedure TFormVenta.cxButton1Click(Sender: TObject);
begin
  DMCaja.tbCaja.Prior;
end;

procedure TFormVenta.cxButton2Click(Sender: TObject);
begin
  DMCaja.tbCaja.Next;
end;

procedure TFormVenta.cxButton3Click(Sender: TObject);
begin
  time_position.Enabled := not time_position.Enabled
end;

procedure TFormVenta.cxButton4Click(Sender: TObject);
begin
  DMCaja.tbCaja.Refresh
end;

procedure TFormVenta.cxButton5Click(Sender: TObject);
begin
  close
end;

procedure TFormVenta.btduplicateClick(Sender: TObject);
begin
  duplicateservices
end;

procedure TFormVenta.btcodeClick(Sender: TObject);
begin
  edDescrip.Visible := not edDescrip.Visible;
  edDescrip.TabOrder := 0;
  // edCodigo.Visible := not edCodigo.Visible;
  edDescrip.TabOrder := 0;
end;

procedure TFormVenta.btTiketClick(Sender: TObject);
begin
  FTicket.tiket.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'Reportes\Tiket.fr3');
  FTicket.tiket.ShowPreparedReport;

  FTicket.tiket.ShowReport(true);
  // FTicket.tiket.PrintOptions.Copies := cxSpinEdit1.Value;
  // FTicket.tiket.Print
  FTicket.Visible := true;
end;

procedure TFormVenta.btupdatetasasClick(Sender: TObject);
begin
  // Ftasa.refresh_tasas;
  // DMCaja.tbPreciosInsert.Refresh;
  // DMCaja.tbVentasOperacionesPrecioCUP.Value :=
  // StrToCurr(DM_Clasif_U.tbPreciosInsertDetalles.Value) *
  // DMCaja.tbCajac_usd.Value;
  // DMCaja.tbVentasOperaciones.Post;
  // DMCaja.tbVentasOperaciones.Refresh;
end;

procedure TFormVenta.cxButton6Click(Sender: TObject);
begin
  DMCaja.tbVentasOperaciones.Edit;

  edCant.Value := edCant.Value + 1;

  btAcept.Click;

end;

procedure TFormVenta.cxButton7Click(Sender: TObject);
begin

  try

      DMCaja.Q_Plasicado.Delete;
  except
    on E: Exception do begin
      ShowMessage(E.Message)
    end;
  end;

end;

procedure TFormVenta.btMinimiseClick(Sender: TObject);
begin
  FormVenta.WindowState := wsMinimized;

end;

procedure TFormVenta.cxButton8Click(Sender: TObject);
var numincrement: int64;

begin
  DMCaja.qlastnumber.Execute;

  numincrement := DMCaja.qlastnumberlastnumber.Value;

  DMCaja.qreset_inc.Params[0].AsInteger := numincrement;
  DMCaja.qreset_inc.Execute;

end;

procedure TFormVenta.cxButton9Click(Sender: TObject);
var Value, Resultado: double;

  function AjustarValor(Value: double): double;
  var LastDigit: Integer;
  begin
    LastDigit := StrToInt(Value.ToString.Chars[Value.ToString.Length - 1]);
    case LastDigit of
    1, 6: Result := Value - 1;
    2, 7: Result := Value - 2;
    3, 8: Result := Value + 2;
    4, 9: Result := Value + 1;
  else Result := Value;
    end;
  end;

begin
  try
    Value := DMCaja.Q_PlasticadoResumenPrecio.AsFloat;

    if DM_Clasif_U.tb_Precios.Locate('Precio', Value, []) then begin
      DMCaja.tbVentasOperaciones.Edit;
      DMCaja.tbVentasOperacionesPrecioCUP.Value := Value;
      DMCaja.tbVentasOperaciones.Post;
    end else begin
      DMCaja.tbInsertPrecio.Params[0].AsInteger :=
        DMCaja.tbVentasOperacionesDescripcion.Value.ToInt64();
      DMCaja.tbInsertPrecio.Params[2].AsInteger := 1;

      Resultado := AjustarValor(Value);
      DMCaja.tbInsertPrecio.Params[1].AsCurrency := Resultado;
      DMCaja.tbInsertPrecio.Params[3].AsString :=
        FormatFloat('0.00', Resultado) + ' CUP';

      DMCaja.tbInsertPrecio.Execute;
      DM_Clasif_U.tb_Precios.Refresh;

      DMCaja.tbVentasOperaciones.Edit;
      DMCaja.tbVentasOperacionesPrecioCUP.Value := Resultado;
      DMCaja.tbVentasOperaciones.Post;
      btAcept.Click;
    end;

  except
    on E: Exception do begin
      // Manejo del error
      ShowMessage('Ocurrió un error: ' + E.Message);
    end;
  end;
end;

procedure TFormVenta.cxDBCurrencyEdit1PropertiesChange(Sender: TObject);
begin
  // QMedidasPlasticado.Post
end;

procedure TFormVenta.btno3Click(Sender: TObject);
begin
  try
    DMCaja.tbVentasOperaciones.Edit;

    edCant.Value := edCant.Value + 3;

    btAcept.Click;

  except

    on E: Exception do ShowMessage(E.Message);
  end;
end;

procedure TFormVenta.btno2Click(Sender: TObject);
begin

  try
    DMCaja.tbVentasOperaciones.Edit;

    edCant.Value := edCant.Value + 2;

    btAcept.Click;

  except

    on E: Exception do ShowMessage(E.Message);
  end;

end;

procedure TFormVenta.cxGroupBox2DblClick(Sender: TObject);
begin
  // edEfec_CUC.Visible := not edEfec_CUC.Visible;
  // ----- cxLabel2.Visible := not cxLabel2.Visible;

  // if edEfec_CUC.Visible = true then

  // begin
  // (edEfec_USD.Left := 4);
  // (cxLabel6.Left := 160);
  // end
  // else
  // edEfec_USD.Left := 130;
  // cxLabel6.Left := 286;
  //
  // if edEfec_CUC.Visible = true then
  //
  // begin;
  // (cxLabel6.Left := 160);
  // end
  // else
  //
  // cxLabel6.Left := 286;
end;

procedure TFormVenta.dataDescripcionCInsertdatadragdropellDblClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Insertdatadragdrop
end;

procedure TFormVenta.duplicateExecute(Sender: TObject);
begin
  duplicateservices
end;

procedure TFormVenta.duplicateservices;
var var_service: string; var_descrip: string; var_precio: currency;
  var_cant: double;

begin

  if not DMCaja.tbVentasOperaciones.IsEmpty then

  begin
    var_service := DMCaja.tbVentasOperacionesServicios.Value;
    var_descrip := DMCaja.tbVentasOperacionesDescripcion.Text;
    var_precio := DMCaja.tbVentasOperacionesPrecioCUP.Value;
    var_cant := 1;

    DMCaja.tbVentasOperaciones.Append;

    DMCaja.tbVentasOperaciones.Edit;
    DMCaja.tbVentasOperacionesDescripcion.Text := var_descrip;

    DMCaja.tbVentasOperaciones.Post;

    DM_Clasif_U.tb_Precios.Refresh;
    DMCaja.tbVentasOperaciones.Edit;
    DMCaja.tbVentasOperacionesFecha.Value := DMCaja.tbCajaFecha.Value;
    DMCaja.tbVentasOperacionesServicios.Value := var_service;
    DMCaja.tbVentasOperacionesPrecioCUP.Value := var_precio;
    DMCaja.tbVentasOperacionesCantidad.Value := var_cant;
    DMCaja.tbVentasOperaciones.Post;
    DMCaja.tbVentasOperaciones.Refresh;
    DMCaja.tbVentasOperaciones.Edit;
    DMCaja.tbVentasOperacionesGastosGenerales.Value :=
      DM_Clasif_U.costosGeneralesSUMGasto.Value;
    DMCaja.tbVentasOperacionesGastosInsumos.Value :=
      DM_Clasif_U.costosInsumosSUMGasto.Value;
    DMCaja.tbVentasOperaciones.Post;
    DMCaja.tbVentasOperaciones.Refresh;

    DM_Clasif_U.Tbdescrip.Edit;
    DM_Clasif_U.Tbdescripfrequently_use.Value := true;
    DM_Clasif_U.Tbdescripusedate.AsDateTime := Now;
    DM_Clasif_U.Tbdescrip.Post;
    DMCaja.Tbdescrip.Refresh;
    DMCaja.tbServices.Refresh;
    btAcept.Click;
  end else

  begin
    msgAlert('No hay elementos en la lista para duplicar',
      TMsgDlgType.mtWarning)
  end;

end;

procedure TFormVenta.LayoutBackDblClick(Sender: TObject);
begin
  FormVenta.AutoSize := not FormVenta.AutoSize;
end;

procedure TFormVenta.ListServicesFrecuentify2LinkClick(Sender: TObject;
  ALink: TdxNavBarItemLink);
var SQL: string;

begin
  SQL := 'SELECT * FROM tbServiceDescrip WHERE [frequently_use] =' + '1' + '' +
    ' AND [Habilitado] =' + '1' +
    ' and  Producto =  :Producto  ORDER BY[usedate] DESC';

  // ShowMessage(sql);
  DMCaja.Tbdescrip.SQL.Text := SQL;

  DMCaja.Tbdescrip.ParamByName('Producto').AsString := ALink.Item.Caption;
  // DMCaja.Tbdescrip.Locate('Producto', ALink.Item.Caption, []);
  DMCaja.Tbdescrip.Execute;

  // if  DMCaja.Tbdescrip.RecordCount<>0 then
  //
  // begin
  DMCaja.tbVentaOperacionesFind.Params[0].AsInteger :=
    DMCaja.TbdescripCod_Descrip.Value;

  DMCaja.tbVentaOperacionesFind.Execute;

  if DMCaja.tbVentaOperacionesFindDescripcion.Text <> '' then

  begin
    DMCaja.tbVentaOperacionesFind.Edit;
    DMCaja.tbVentaOperacionesFindCantidad.Value :=
      DMCaja.tbVentaOperacionesFindCantidad.Value + 1;
    DMCaja.tbVentaOperacionesFind.Post;
    btAcept.Click;

  end ELSE

  begin

    if DMCaja.tbCaja.RecordCount > 0 then

    begin
      InsertarServicios;

    end else begin
      btNuevo.Click;
      InsertarServicios;
    end;

  end;

  // end else ShowMessage('Servicio no encontrado')
end;

procedure TFormVenta.ListServicesFrecuentifyMouseLeave(Sender: TObject);
begin
  InsertarServicios;
end;

procedure TFormVenta.edEfec_USDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := VK_TAB;
    DMCaja.tbCaja.Refresh;

  end;

  begin
    if Key = VK_ADD then begin
      F_EnEfecUSD.ShowModal;

    end;
  end;
end;

procedure ListServicesFrecuenty;
begin
  // DMCaja.Tbdescrip.Refresh;
  // DMCaja.tbServices.Refresh;
  // FormVenta.ListServicesFrecuentify2.Groups.Clear;
  // FormVenta.cbListServices.Categories.Clear;
  // FormVenta.ListServicesFrecuentify2.Items.Clear;
  // FormVenta.cbListServices.Categories.Items.Clear;
  // FormVenta.services.Categories[0].Items.Clear;
end;

procedure TFormVenta.Edit2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  (Sender as TEdit).Text := (Source as TListBox)
    .Items[(Source as TListBox).ItemIndex]
end;

procedure TFormVenta.Edit2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  // Accept := true;
  // Asignamos True para cuando soltemos el mouse el Edit acepte el items
end;

procedure TFormVenta.btDeleteClick(Sender: TObject);
begin

  if DMCaja.tbVentasOperaciones.IsEmpty then

  begin
    if MessageDlg('Usted va a eliminar una Venta ,Estas seguro?', mtWarning,
      [mbYes, mbNo], 0, mbYes) = mrYes then begin
      DMCaja.tbCaja.Delete;
    end else begin

    end;
  end else begin

    ShowMessage
      ('No se puede eliminar este comprobante porque contiene elemnetos en la lista')

  end;

end;

procedure TFormVenta.GuardarExecute(Sender: TObject);
begin
  try DMCaja.tbCaja.Post;
  except
    on E: Exception do begin
      ShowMessage(E.Message)
    end;
  end;

end;
//
// function generateOperacion(tamaño: Integer): string;
// const
// content = 'ABCD9EF1GHIJ4KLNO7PQRS9TUVWZ23456M780';
//
// var
// operation: string;
// I: Integer;
// begin
//
// for I := 1 to tamaño do
// begin
// Randomize;
// operation := operation + content[1 + Random(Length(content))];
// Randomize;
// end;
//
// Result := operation;
//
// end;

procedure TFormVenta.CreateGroupServices;
begin

  if not DMCaja.tbServices.Active then Exit;
  // Verificar que el dataset esté activo

  FormVenta.cbListServices.Categories.BeginUpdate;
  try
    FormVenta.cbListServices.Categories.Clear; // Limpiar categorías

    DMCaja.tbServices.First;
    while not DMCaja.tbServices.Eof do begin
      with FormVenta.cbListServices.Categories.Add do
          Caption := DMCaja.tbServices.FieldByName('Servicio').AsString;

      // StyleName:=

      DMCaja.tbServices.Next;

    end;
  finally FormVenta.cbListServices.Categories.EndUpdate;
  end;
end;


// procedure CreateGroupServices;
// var
// Group: TdxNavBarGroup;
// I1: Integer;
// begin
// DMCaja.tbServices.Refresh;
// DMCaja.tbServices.First;
//
// // Recorremos los registros de servicios
// while not DMCaja.tbServices.Eof do
// begin
// // Crear un nuevo grupo para cada servicio
// Group := FormVenta.ListServicesFrecuentify.Groups.Add;
//
// // Asignar propiedades al grupo
// Group.Caption := DMCaja.tbServicesServicio.AsString;
//
// // Opcional: Cambiar el color del grupo
// Group.Style.BackColor := clSkyBlue;  // Fondo azul claro
// Group.Style.Font.Color := clWhite;  // Texto blanco
//
// // (Opcional) Vincular una imagen si lo necesitas
// // Group.LargeImageIndex := <indice_imagen>;
//
// // Avanzar al siguiente servicio
// DMCaja.tbServices.Next;
// end;
// end;

//
procedure TFormVenta.CreateItemServices;
var CategoryIndex: Integer; Item: TStyledButtonCategoriesClass;
begin
  if not DMCaja.tbDescripLoadServices.Active then Exit;

  DMCaja.tbDescripLoadServices.First;
  while not DMCaja.tbDescripLoadServices.Eof do begin
    // Buscar la categoría correcta
    CategoryIndex := FormVenta.cbListServices.Categories.IndexOf
      (DMCaja.tbDescripLoadServices.FieldByName('Servicio').AsString);

    if CategoryIndex <> -1 then begin
      // Agregar un nuevo item a la categoría encontrada
      FormVenta.cbListServices.Categories.Items[CategoryIndex].Items.Add.Caption
        := DMCaja.tbDescripLoadServices.FieldByName('Producto').AsString;

    end;

    DMCaja.tbDescripLoadServices.Next;
  end;

end;

procedure TFormVenta.OpenBoxCash;
begin
  try

    if FormVenta.edCambio.Value <= 0 then begin
      DMCaja.ApiOpenBox.Execute;
      // ShowMessage('Caja Abierta')
    end else begin

    end;

  except
    on E: Exception do begin
      ShowMessage('El Servidor no esta activo. Inicielo');
    end;
  end;
end;

procedure TFormVenta.add_sales;
begin
  try
    resetincrement(0, DMCaja.qlastnumber, DMCaja.qreset_inc, 'lastnumber');

    DMCaja.tbCaja.Append;
    DMCaja.tbCaja.Edit;
    DMCaja.tbCajaFecha.AsDateTime := Date;
    DMCaja.tbCambioActual.Refresh;
    DMCaja.tbCajac_usd.Value := DMCaja.tbCambioActualUSD.Value;
    DMCaja.tbCajac_eur.Value := DMCaja.tbCambioActualEUR.Value;
    DMCaja.tbCajac_mlc.Value := DMCaja.tbCambioActualMLC.Value;
    DMCaja.tbCajaIDUser.Value := UID;
    DMCaja.tbCajahistory.Value := false;
    DMCaja.tbCajaNoOperacion.Text := generate(10, true, true);
    DMCaja.tbCajaHora.AsDateTime := Now;
    // DMCaja.tbCajaUsuario.Value :=
    // (DataAdmin.tbUsuariosidUsuario.vText + '-' +
    // DataAdmin.tbUsuariosUsuario.Value);
    DMCaja.tbCaja.Post;
    timepropina.Enabled := true;
    // FormVenta.propinaChek.Checked := false;
    DMCaja.tbCaja.Refresh;
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;

procedure LoadServicesFrecuenty;
var I1, I2: Integer; Item: TdxNavBarItem;
begin
  FormVenta.CreateGroupServices;
  FormVenta.CreateItemServices;
end;

procedure TFormVenta.NuevoExecute(Sender: TObject);
var numcomprobantereset: int64;
begin

end;

procedure TFormVenta.OpenBoxExecute(Sender: TObject);
begin

  OpenBoxCash;
end;

procedure TFormVenta.Q_PlasicadoAfterDelete(DataSet: TDataSet);
begin
  DMCaja.Q_PlasticadoResumen.Refresh
end;

procedure TFormVenta.servicesButtonClicked(Sender: TObject;
  const Button: TButtonItem);
begin
  // edDescrip.OnEnter(edDescrip);
  // edDescrip.Text := services.SelectedItem.Caption;

end;

procedure TFormVenta.TablaCajaCantidadHeaderClick(Sender: TObject);
begin
  TablaCaja.OptionsData.Editing := not TablaCaja.OptionsData.Editing
end;

function GetDragSourceGridView(Source: TObject): TcxCustomGridView;
begin
  if (TDragControlObject(Source).Control is TcxGridSite) then
      Result := TcxGridSite(TDragControlObject(Source).Control).GridView
  else Result := nil;
end;

procedure TFormVenta.TablaCajaDragDrop(Sender, Source: TObject; X, Y: Integer);
var FilmID: Integer; AGridView: TcxCustomGridView;
begin
  AGridView := GetDragSourceGridView(Source);
  if AGridView = nil then Exit;
  Insertdatadragdrop

end;

procedure TFormVenta.TablaCajaDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  with TcxGridSite(TDragControlObject(Source).Control) do
      Accept := GridView = dataDescripcion;
end;

procedure TFormVenta.btSaveClick(Sender: TObject);
begin
  time_refresh.Enabled := true
end;

procedure TFormVenta.BtShareClick(Sender: TObject);
begin

  // fsend_notify.Show;

  DMCaja.tbCaja.Edit;
  DMCaja.tbCajashare.Value := true;
  DMCaja.tbCaja.Post;
end;

procedure TFormVenta.Button1Click(Sender: TObject);
begin
  ShowMessage(ExtractFilePath(Application.ExeName) + 'Reportes\Tiket.fr3')
end;

procedure TFormVenta.Button2Click(Sender: TObject);
begin
  Timer6.Enabled := true
end;

procedure TFormVenta.Button3Click(Sender: TObject);
begin
  CreateGroupServices;
  CreateItemServices;

end;

procedure TFormVenta.Button4Click(Sender: TObject);
begin
  CreateItemServices;
end;

procedure SetOrderValue(DS: TDataSet; AValue: Variant);
begin;
  DS.Edit;
  DS.FieldByName('Order').Value := AValue;
  DS.Post;
end;

procedure TFormVenta.Button5Click(Sender: TObject);
var I: Integer;
begin
  cbListServices.Categories.BeginUpdate;
  // Para evitar actualizaciones mientras limpiamos
  try cbListServices.Categories.Clear;
    // Limpia todas las categorías junto con sus ítems
  finally cbListServices.Categories.EndUpdate;
    // Reactiva las actualizaciones
  end;

  // for I := 0 to FormVenta.ListServicesFrecuentify.Groups.Count - 1 do
  // begin
  // ListServicesFrecuentify.Groups.Items[I].ClearLinks;
  // ListServicesFrecuentify.Groups.Delete(I);
  // end;
  // ListServicesFrecuentify.Categories.Clear;
  // ListServicesFrecuentify.CurrentCategory.Items.Clear;
  //
  // // GroupService.ClearLinks;
  // services.Categories[0].Items.Clear;
end;

procedure TFormVenta.Button6Click(Sender: TObject);
begin
  GridCaja.DragCursor := crAppStart
end;

procedure TFormVenta.Button7Click(Sender: TObject);
begin

  if not DMCaja.tbDescripLoadServices.Active then Exit;
  // Verificar que el dataset esté activo

  FormVenta.cbListServices.Categories.BeginUpdate;
  try
    // Limpiar categorías

    DMCaja.tbDescripLoadServices.First;
    while not DMCaja.tbDescripLoadServices.Eof do begin
      with FormVenta.cbListServices.Categories.Add do
          Caption := DMCaja.tbServices.FieldByName('Servicio').AsString;
      DMCaja.tbServices.Next;
    end;
  finally FormVenta.cbListServices.Categories.EndUpdate;
  end;

end;

procedure TFormVenta.Button9Click(Sender: TObject);
var I: Integer;
begin
  for I := 0 to cbListServices.Categories.Count - 1 do begin
    cbListServices.Categories.CategoryButtons.Categories[I].Collapsed := true
  end;
end;

procedure TFormVenta.edTotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := VK_TAB;
    time_refresh.Enabled := true;
  end;
end;

procedure TFormVenta.edEfec_CUPEnter(Sender: TObject);
begin
  F_EnEfecMN.ShowModal;
end;

procedure TFormVenta.edEfec_EURKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := VK_TAB;
    DMCaja.tbCaja.Refresh;
  end;

  begin
    if Key = VK_ADD then begin
      F_EnEfecEUR.ShowModal;

    end;
  end;
end;

procedure TFormVenta.edEfec_MNKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := VK_TAB;
    DMCaja.tbCaja.Refresh;
  end;

  begin
    if Key = VK_ADD then begin
      F_EnEfecMN.ShowModal;

    end;
  end;
end;

procedure TFormVenta.edLargoPropertiesChange(Sender: TObject);
begin
  CalculoMicaAuto
end;

procedure TFormVenta.edLargoPropertiesEditValueChanged(Sender: TObject);
begin
  CalculoMicaAuto
end;

procedure TFormVenta.edOfertaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := VK_TAB;

  end;
end;

procedure TFormVenta.time_refreshTimer(Sender: TObject);
begin

  time_refresh.Enabled := false;
end;
// para que se traspase de la caja al historico

procedure TFormVenta.time_enabledBtContabilizarTimer(Sender: TObject);
begin
  atContabilizar.Enabled := (edTotal.Value > 0.00) and (edCambio.Value <= 0.00);
  OpenBox.Enabled := atContabilizar.Enabled;
end;

procedure TFormVenta.Time_relojTimer(Sender: TObject);
begin
  edTime.DateTime := Time;
end;

procedure TFormVenta.timer_tipTimer(Sender: TObject);
begin
  if RGCambio.Checked = true then begin
    edpropina.Enabled := false;
  end
  else edpropina.Enabled := true;
end;

procedure TFormVenta.FormActivate(Sender: TObject);
begin

  try
    DMCaja.tbCaja.ParamByName('idUser').AsInteger := UID;
    DMCaja.tbCaja.Open;
    DMCaja.tbCaja.Refresh;
    ShowCUP.ShortCut := ShortCut(VK_ADD, []);
  except
    on E: Exception do

        ShowMessage(E.Message)
  end;

end;

procedure TFormVenta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  // ListServicesFrecuentify.Groups.Clear;
  // ListServicesFrecuentify.Items.Clear;

  // GroupService.ClearLinks;
  // services.Categories[0].Items.Clear;

end;

procedure TFormVenta.FormCreate(Sender: TObject);

begin
  // Calcular el factor de escala basado en la resolución del monitor

end;

procedure TFormVenta.FormShow(Sender: TObject);
begin
  LoadServicesFrecuenty;
  Sleep(1000);
  Collapsed
  // ConfigINI := TIniFile.Create(ExtractFilePath(Application.ExeName) +
  // 'Config.ini');
  //
  // tempWidth := ConfigINI.ReadInteger('scalecaja', 'Width', 0); // temp = 2
  // tempHeight := ConfigINI.ReadInteger('scalecaja', 'Height', 0); // temp = 2
  // ConfigINI.FreeInstance;
  //
  // FormVenta.Width := tempWidth;
  // FormVenta.Height := tempHeight;

end;

procedure TFormVenta.brCancelClick(Sender: TObject);
begin
  if MessageDlg('Estas seguro(a) eliminar este producto', TMsgDlgType.mtWarning,
    [mbYes, mbNo], 0, mbYes) = mrYes then begin
    DMCaja.tbVentasOperaciones.Delete;
    btAcept.Click;
  end;
end;

procedure TFormVenta.btAceptClick(Sender: TObject);
begin

  try
    DMCaja.tbVentasOperaciones.Refresh;
    DMCaja.tbOperacionesTotal.Refresh;

    // DM_Clasif_U.tbReglas.SQL.Text :=
    // 'SELECT	*FROM	dbo.tbReglasDescuentos WHERE 	cantI <= N' + '''' +
    // DMCaja.tbVentasOperacionesCantidad.Value.ToString + '''' +
    // ' AND 	CantF >= N' + '''' + DMCaja.tbVentasOperacionesCantidad.Value.
    // ToString + '''';
    //
    // ;
    // DM_Clasif_U.tbReglas.Execute;
    // DMCaja.tbVentasOperaciones.Edit;
    // DMCaja.tbVentasOperacionesPrecioCUP.Value :=
    // DM_Clasif_U.tb_PreciosPrecio.Value - DM_Clasif_U.tbReglasdescuento.Value;
    // DMCaja.tbVentasOperaciones.Post;
    DMCaja.tbVentasOperaciones.Refresh;
    DMCaja.tbOperacionesTotal.Refresh;

    DMCaja.tbCaja.Edit;
    DMCaja.tbCajaTotalVentaCUP.Value :=
      DMCaja.tbOperacionesTotalSubtotalCUP.Value;

    DMCaja.tbCajaGastosGenerales.Value :=
      DMCaja.tbOperacionesTotalTotalGenerales.Value;
    DMCaja.tbCajaGastosInsumos.Value :=
      DMCaja.tbOperacionesTotalTotalInsumos.Value;

    DMCaja.tbCambioActual.Refresh;
    DMCaja.tbCajac_usd.Value := DMCaja.tbCambioActualUSD.Value;
    DMCaja.tbCajac_eur.Value := DMCaja.tbCambioActualEUR.Value;
    DMCaja.tbCajac_mlc.Value := DMCaja.tbCambioActualMLC.Value;

    DMCaja.tbCaja.Post;
    DMCaja.tbCaja.Refresh;
  except
    on E: Exception do ShowMessage(E.Message)
  end;

end;

procedure TFormVenta.btClearService_FrecuentyClick(Sender: TObject);
begin
  DMCaja.q_clearservices_usefrecuenty.Execute;
  // ListServicesFrecuentify.Items.Clear;
  // ListServicesFrecuentify.Groups.Clear;

  DMCaja.Tbdescrip.Refresh;
  LoadServicesFrecuenty

end;

procedure TFormVenta.Timer4Timer(Sender: TObject);
begin
  if DMCaja.tbCaja.RecordCount > 0 then begin
    btDelete.Enabled := true
  end
  else btDelete.Enabled := false
end;

procedure TFormVenta.Timer5Timer(Sender: TObject);
begin

  // Validar edTotal y edCambio
  if edTotal.Value >= 0.0 then begin
    // Cambiar estado de Timer6 y color de texto
    Timer6.Enabled := not(edCambio.Value <= 0.0);
    edCambio.Style.TextColor := IfThen(edCambio.Value <= 0.0, $000DEE29,
      IfThen(edCambio.Style.TextColor = $000DEE29, clRed, $000DEE29));
  end;

end;

procedure TFormVenta.Timer9Timer(Sender: TObject);
begin
  if cxCheckBox2.Checked = true then begin
    DMCaja.tbCaja.Refresh;
    DMCaja.tbVentasOperaciones.Refresh;
  end;
end;

procedure TFormVenta.edAnchoPropertiesChange(Sender: TObject);
begin
  CalculoMicaAuto
end;

procedure TFormVenta.edAnchoPropertiesEditValueChanged(Sender: TObject);
begin
  CalculoMicaAuto
end;

procedure TFormVenta.edCantKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := VK_TAB;

    DMCaja.tbVentasOperaciones.Refresh;
    btAcept.Click;

  end;
end;

procedure TFormVenta.edCodigoEnter(Sender: TObject);
begin
  DMCaja.tbVentasOperaciones.Append;
end;

procedure TFormVenta.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var SQL: string;
begin

  try
    if Key = VK_RETURN then begin
      DMCaja.tbVentasOperaciones.Post;

      SQL := 'SELECT * FROM tbServiceDescrip WHERE [frequently_use] =' + '1' +
        '' + ' AND [Habilitado] =' + '1' +
        ' and  Cod_Descrip = :Cod_Descrip  ORDER BY[usedate] DESC';

      DMCaja.Tbdescrip.SQL.Text := SQL;

      // ShowMessage(DMCaja.tbVentasOperacionesDescripcion.Value);
      DMCaja.Tbdescrip.ParamByName('Cod_Descrip').AsInteger :=
        DMCaja.tbVentasOperacionesDescripcion.Value.ToInteger;
      // DMCaja.Tbdescrip.Locate('Producto', ALink.Item.Caption, []);
      DMCaja.Tbdescrip.Execute;

      // if  DMCaja.Tbdescrip.RecordCount<>0 then
      //
      // begin

      DM_Clasif_U.tb_Precios.Refresh;
      DMCaja.tbVentasOperaciones.Edit;
      DMCaja.tbVentasOperacionesFecha.Value := DMCaja.tbCajaFecha.Value;
      DMCaja.tbVentasOperacionesServicios.Value :=
        DMCaja.TbdescripServicio.Value;
      DMCaja.tbVentasOperacionesPrecioCUP.Value :=
        DMCaja.tbPreciosInsertPrecio.Value;
      DMCaja.tbVentasOperacionesCantidad.Value :=
        DMCaja.tbPreciosInsertCantidad.Value;
      DMCaja.tbVentasOperaciones.Post;
      DMCaja.tbVentasOperaciones.Refresh;
      DMCaja.tbVentasOperaciones.Edit;
      DMCaja.tbVentasOperacionesGastosGenerales.Value :=
        DM_Clasif_U.costosGeneralesSUMGasto.Value;
      DMCaja.tbVentasOperacionesGastosInsumos.Value :=
        DM_Clasif_U.costosInsumosSUMGasto.Value;
      DMCaja.tbVentasOperaciones.Post;
      DMCaja.tbVentasOperaciones.Refresh;

      DM_Clasif_U.Tbdescrip.Edit;
      DM_Clasif_U.Tbdescripfrequently_use.Value := true;
      DM_Clasif_U.Tbdescripusedate.AsDateTime := Now;
      DM_Clasif_U.Tbdescrip.Post;
      DMCaja.Tbdescrip.Refresh;
      DMCaja.tbServices.Refresh;

      ListServicesFrecuenty;
      LoadServicesFrecuenty;
      btAcept.Click;
      Key := VK_TAB;

    end;
  except
    on E: Exception do begin
      ShowMessage(E.Message)
    end;
  end;

end;

procedure TFormVenta.edCreditoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    Key := VK_TAB;
    DMCaja.tbCaja.Refresh;

  end;

  begin
    if Key = VK_ADD then begin

      DesgloseCredito.ShowModal;

    end;
  end;
end;

end.
