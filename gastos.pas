unit gastos;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
     cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, dxLayoutContainer, cxCalc, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxTimeEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxClasses, dxLayoutControl,
  cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList, Vcl.DBActns,
  dxLayoutControlAdapters, dxLayoutLookAndFeels, cxCheckBox, dxToggleSwitch,
  Vcl.WinXCtrls, cxProgressBar, Vcl.ExtCtrls, cxGroupBox, cxRadioGroup, cxMemo,
  cxImage, dxSkinWXI;

type
  TF_Gasto = class(TForm)
    DS_Gastos: TDataSource;
    dxLayoutControl2: TdxLayoutControl;
    cxDBTextEdit11: TcxDBTextEdit;
    edFecha: TcxDBDateEdit;
    cxDBSpinEdit9: TcxDBSpinEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    edCosto: TcxDBCurrencyEdit;
    edMP: TcxDBLookupComboBox;
    edFormat: TcxDBLookupComboBox;
    edTotal: TcxDBCurrencyEdit;
    btAdd: TcxButton;
    btSave: TcxButton;
    ActionList1: TActionList;
    btGuardar: TDataSetPost;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    btContabilizar: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxEditStyleController1: TcxEditStyleController;
    DS_typeMP: TDataSource;
    DSFormat: TDataSource;
    cxButton1: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    ListGastos: TcxDBRadioGroup;
    UniDataSource1: TDataSource;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem6: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cxDBImage1: TcxDBImage;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    cxButton4: TcxButton;
    UniDataSource2: TDataSource;
    DStbtip: TDataSource;
    codebar: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;

    procedure btAddClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure cxDBSpinEdit9PropertiesChange(Sender: TObject);
    procedure edCostoPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btContabilizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    procedure LoadGastos;
    { Private declarations }
  public
    { Public declarations }
  end;

var F_Gasto: TF_Gasto;

implementation

uses ConexionDM, classglobal, dataCost;
{$R *.dfm}

procedure TF_Gasto.btAddClick(Sender: TObject);
begin

  with dmCost do

  begin
    q_Gastos.Append;
    q_Gastos.Edit;

    q_Gastosdate_ID.AsDateTime := Date;

    q_GastosID_Operación.Text := generate(q_GastosID_Operación.Size,
      true, true);
    // q_Gastostime.Value := now;
    q_Gastoshistory_check.Value := false;
    // mdataVentas.tbCajaUsuario.Value :=
    // (DataAdmin.tbUsuariosidUsuario.vText + '-' +
    // DataAdmin.tbUsuariosUsuario.Value);
    q_Gastos.Post;

    q_Gastos.Refresh;
  end;

end;

procedure TF_Gasto.btSaveClick(Sender: TObject);
begin
  with dmCost.q_Gastos do begin
    Post
  end;
end;

procedure TF_Gasto.LoadGastos;
var I1: Integer;
begin
  with dmCost do

  begin

    ListGastos.Properties.Items.Clear;
    tbtype_gasto.Refresh;
    for I1 := 0 to tbtype_gasto.RecordCount - 1 do begin
      tbtype_gasto.RecNo := I1 + 1;
      ListGastos.Properties.Items.Add;
      ListGastos.Properties.Items[I1].Caption := tbtype_gastolang.Text;
      ListGastos.Properties.Items[I1].Value := tbtype_gastoID.Value;
    end;

  end;
end;

procedure TF_Gasto.btContabilizarClick(Sender: TObject);
begin
  with dmCost do

  begin
    Alerta_AdvertenciaContabilizar2
      ('Usted esta seguro que quiere contabilizar esta operacion... Desea continuar',
      q_Gastos, 'history_check', TMsgDlgType.mtConfirmation)
  end;
end;

procedure TF_Gasto.cxButton1Click(Sender: TObject);
begin
  with dmCost do

  begin
    Alerta_AdvertenciaDelete
      ('Usted va a eliminar un comprobante de gasto ,Estas seguro?', q_Gastos,
      TMsgDlgType.mtWarning)

  end;
end;

procedure TF_Gasto.cxButton2Click(Sender: TObject);
begin
  with dmCost do

  begin
    q_Gastos.Prior;
  end;
end;

procedure TF_Gasto.cxButton3Click(Sender: TObject);
begin
  with dmCost do

  begin
    q_Gastos.Next;
  end;

end;

procedure TF_Gasto.cxButton4Click(Sender: TObject);
begin
  with dmCost do

  begin
    if q_Gastostype_gasto.Value = 5 then begin
      q_Gastos.Edit;

      q_GastosCosto.Value := tbPrecioPrecio.Value + tbtipTip.Value;
    end else

    begin
      q_Gastos.Edit;
      q_GastosCosto.Value := tbPrecioPrecio.Value;
    end;

  end;
end;

procedure TF_Gasto.cxDBSpinEdit9PropertiesChange(Sender: TObject);
begin
  with dmCost do
  begin
    if not q_GastosCosto.IsNull then
      if not q_GastosCantidad.IsNull then
      begin
        q_Gastos.Refresh;
      end;
  end;
end;


procedure TF_Gasto.edCostoPropertiesChange(Sender: TObject);
begin
  with dmCost do
  begin
    if not q_GastosCosto.IsNull then
      if not q_GastosCantidad.IsNull then
      begin
        q_Gastos.Refresh;
      end;
  end;
end;


procedure TF_Gasto.FormShow(Sender: TObject);
var I2: Integer;

begin
  LoadGastos;

end;

end.
