unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB,
  cxDBData, cxTextEdit, Vcl.Menus,   Datasnap.DBClient, cxImage,
  cxDBEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMaskEdit, cxLabel, dxSkinOffice2019Colorful,
  dxDateRanges, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutControl, dxSkinWXI;

type
  TCliente = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1IDCLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1name_cliente: TcxGridDBColumn;
    cxGrid1DBTableView1number_contrato: TcxGridDBColumn;
    cxGrid1DBTableView1direccion: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1date_contrato: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cliente: TCliente;

implementation

uses DataClientes, DataPromo, ClientesDetalles, Venta, Servicios, Interfaz;
{$R *.dfm}

procedure TCliente.cxButton1Click(Sender: TObject);
begin
  // DM_Clientes.tbClientes.Append;
  // if DM_Clientes.tbCodigos.Locate('Usado',False,[]) then
  // begin
  // DM_Clientes.tbClientes.Edit ;
  // DM_Clientes.tbClientesNoCliente.Value := DM_Clientes.tbCodigosCodigos.Value ; DM_Clientes.tbCodigos.Edit; DM_Clientes.tbCodigosUsado.Value:= True ;DM_Clientes.tbCodigos.Post;
  // edFecha.Date:=Date ; DM_Clientes.tbClientes.Post
  // end;
end;

procedure TCliente.cxButton2Click(Sender: TObject);
begin
  DM_Clientes.tbClientes.Post
end;

procedure TCliente.cxButton3Click(Sender: TObject);
begin
  DetallesClient.ShowModal;
  DM_Clientes.tbClientes.Refresh;
end;

procedure TCliente.cxButton4Click(Sender: TObject);
begin
  DM_Clientes.tbLogos.Post;
end;

end.
