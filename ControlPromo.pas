unit ControlPromo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxTextEdit, cxTimeEdit, cxContainer, Vcl.Menus, frxExportPDF,
  frxClass, frxExportBaseDialog, frxExportText, frxDBSet, Vcl.ExtCtrls, cxImage,
  cxDBEdit, Vcl.StdCtrls, cxButtons, cxMemo, cxSpinEdit, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCheckBox, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxBarCode, dxDBBarCode, dxSkinOffice2019Colorful,
  dxDateRanges, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations, dxSkinWXI, frCoreClasses;

type
  TControl_Agentes = class(TForm)
    Timer1: TTimer;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1deCuentas: TcxGridDBColumn;
    cxGrid2DBTableView1Fecha: TcxGridDBColumn;
    cxGrid2DBTableView1Hora: TcxGridDBColumn;
    cxGrid2DBTableView1Nombre: TcxGridDBColumn;
    cxGrid2DBTableView1Apellidos: TcxGridDBColumn;
    cxGrid2DBTableView1Direccion: TcxGridDBColumn;
    cxGrid2DBTableView1TelefonoFijo: TcxGridDBColumn;
    cxGrid2DBTableView1TelefonoCelular: TcxGridDBColumn;
    cxGrid2DBTableView1PIN: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    Ocultar: TcxCheckBox;
    edFecha: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    edTime: TcxDBTimeEdit;
    cxLabel5: TcxLabel;
    gnCuenta: TcxDBMaskEdit;
    cxLabel3: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel8: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxLabel7: TcxLabel;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxLabel6: TcxLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxDBImage1: TcxDBImage;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    SaveDialog1: TSaveDialog;
    savetext: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxPDFExport1: TfrxPDFExport;
    cxButton5: TcxButton;
    codePIN: TcxDBMaskEdit;
    cxButton6: TcxButton;
    dxDBBarCode1: TdxDBBarCode;
    procedure cxButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Control_Agentes: TControl_Agentes;

implementation

uses DataPromo, Venta;
{$R *.dfm}

procedure TControl_Agentes.cxButton1Click(Sender: TObject);
begin
  // Dm_promo.tbCuentas.Append;
  // if DM_promo.tbCodigos.Locate('Usado',False,[])  then
  // begin
  // DM_promo.tbCuentasdeCuentas.Value := DM_promo.tbCodigosCodigos.Value ;
  // edFecha.Date:=Date ;
  // edTime.Time:=Time  ;
  // DM_promo.tbCuentas.Post;
  // DM_promo.tbCodigos.Edit;
  // DM_promo.tbCodigosUsado.Value:= true;
  // DM_promo.tbCodigos.Post;
  // end;
end;

procedure TControl_Agentes.Timer1Timer(Sender: TObject);
begin
  if Ocultar.Checked = true then
  begin
    gnCuenta.Properties.EchoMode := eemPassword;
  end
  else
    gnCuenta.Properties.EchoMode := eemNormal;

end;

procedure TControl_Agentes.cxButton2Click(Sender: TObject);
begin
  Dm_promo.tbCuentas.Post;
end;

procedure TControl_Agentes.cxButton3Click(Sender: TObject);
begin
  // DM_promo.tbCodeQR.Post
end;

procedure TControl_Agentes.cxButton4Click(Sender: TObject);
begin
  savetext.ShowReport;
  savetext.Terminated := true;
  savetext.Report.Export(frxSimpleTextExport1)
end;

procedure TControl_Agentes.cxButton5Click(Sender: TObject);
begin
  if Dm_promo.tbPIN.Locate('Usado', False, []) then
  begin
    Dm_promo.tbCuentas.Edit;
    Dm_promo.tbCuentasPIN.Value := Dm_promo.tbPINPIN.Value;
    Dm_promo.tbPIN.Edit;
    Dm_promo.tbPINUsado.Value := true;
    Dm_promo.tbPIN.Post;
  end;
end;

procedure TControl_Agentes.cxButton6Click(Sender: TObject);
begin
  Dm_promo.ImpressCodeQR.ShowReport;
  Dm_promo.Exp_IdentidadPromo.DefaultPath :=
    ExtractFilePath(Application.ExeName) +
    '\Promocion\Agentes\Impresion de Documentos\';
  Dm_promo.Exp_IdentidadPromo.FileName := Dm_promo.tbCuentasdeCuentas.Value +
    '--' + Dm_promo.tbCuentasNombre.Value + '  ' +
    Dm_promo.tbCuentasApellidos.Value;
  Dm_promo.ImpressCodeQR.Export(Dm_promo.Exp_IdentidadPromo);
  Dm_promo.Exp_IdentidadPromo.OpenAfterExport := true;
end;

end.
