unit Sobres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ClassGlobal, frxExportImage, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, dxToggleSwitch, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxContainer, dxLayoutLookAndFeels, dxSkinsForm, cxTextEdit,
  cxMaskEdit, cxSpinEdit, dxLayoutControl, cxImage, cxDBEdit, dxCore, dxSkinWXI,
  frCoreClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFSobres = class(TForm)
    tbSobresLote: TFDQuery;
    DSSobresLote: TDataSource;
    tbSobresLoteID: TLargeintField;
    tbSobresLoteLote: TStringField;
    tbSobresLoteFechaCreate: TDateField;
    tbSobres: TFDQuery;
    DSSobres: TDataSource;
    tbSobresID: TLargeintField;
    tbSobresLote2: TStringField;
    tbSobresFechaPrint: TDateField;
    tbSobresused: TLargeintField;
    tbSobresOperacion: TStringField;
    tbSobresNoVale: TLargeintField;
    tbSobresFechaUsed: TDateField;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1Lote: TcxGridDBColumn;
    cxGridDBTableView1FechaPrint: TcxGridDBColumn;
    cxGridDBTableView1used: TcxGridDBColumn;
    cxGridDBTableView1Operacion: TcxGridDBColumn;
    cxGridDBTableView1NoVale: TcxGridDBColumn;
    cxGridDBTableView1FechaUsed: TcxGridDBColumn;
    qreset_inc: TFDQuery;
    qlastnumber: TFDQuery;
    qlastnumberlastnumber: TLargeintField;
    tbSobresLoteused: TBooleanField;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxJPEGExport1: TfrxJPEGExport;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edCant: TcxSpinEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxSkinController1: TdxSkinController;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid11: TcxGrid;
    cxGrid11DBTableView1: TcxGridDBTableView;
    cxGrid11DBTableView1ID: TcxGridDBColumn;
    cxGrid11DBTableView1Lote: TcxGridDBColumn;
    cxGrid11DBTableView1FechaCreate: TcxGridDBColumn;
    cxGrid11DBTableView1used: TcxGridDBColumn;
    cxGrid11Level1: TcxGridLevel;
    dxLayoutItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    tbSobresInsert: TFDQuery;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    DateField1: TDateField;
    LargeintField2: TLargeintField;
    StringField2: TStringField;
    LargeintField3: TLargeintField;
    DateField2: TDateField;
    tbimg: TFDQuery;
    UniDataSource1: TDataSource;
    tbimgID: TIntegerField;
    tbimgSobreCarta: TBlobField;
    cxDBImage1: TcxDBImage;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSobres: TFSobres;

implementation

{$R *.dfm}

procedure TFSobres.cxButton1Click(Sender: TObject);
var
  numcomprobantereset: int64;
begin

  if tbSobresLote.RecordCount < 1 then
  begin

  end
  else
  begin
    resetincrement(0, qlastnumber, qreset_inc, 'lastnumber');
  end;

  tbSobresLote.Append;
  tbSobresLote.Edit;

  tbSobresLoteFechaCreate.Value := now;

  tbSobresLoteused.Value := false;
  tbSobresLoteLote.text := generate(tbSobresLoteLote.Size,
    true, true);

  tbSobresLote.Post;

  tbSobresLote.Refresh;

end;

procedure TFSobres.cxButton2Click(Sender: TObject);
var
  I: integer;
begin
  for I := 1 to (edCant.Value * 4) do
  begin
    tbSobres.Insert;
    tbSobres.Edit;
    tbSobresFechaPrint.Value := now;
    tbSobres.Refresh;
  end;
end;

procedure TFSobres.cxButton3Click(Sender: TObject);
begin
  tbimg.Post;
end;

end.
