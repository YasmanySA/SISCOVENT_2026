unit DesgloseBanco;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  Vcl.StdCtrls, cxButtons, cxCurrencyEdit, cxTextEdit, System.Actions,
  Vcl.ActnList, dxSkiniMaginary, cxImage, frxBarcode, dxBarCode, dxDBBarCode,
  cxLabel, dxActivityIndicator, Vcl.ExtCtrls, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, REST.Authenticator.Basic, Data.Bind.Components,
  Data.Bind.DBScope, dxGDIPlusClasses, enzonapayment, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, System.JSON, System.StrUtils, System.AnsiStrings,  
   DataSet.Serialize, Vcl.Clipbrd, Data.Bind.ObjectScope, REST.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin,
  cxHyperLinkEdit, VirtualTable, Winapi.ShellAPI, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters, dxSkinWXI,
  cxMemo;

type
  TDesgloseCredito = class(TForm)
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ID: TcxDBTextEdit;
    Label1: TLabel;
    edCredito: TcxDBCurrencyEdit;
    btOK: TcxButton;
    edTarjeta: TcxDBComboBox;
    edPlataforma: TcxDBComboBox;
    cxDBComboBox3: TcxDBComboBox;
    ActionList1: TActionList;
    frxBarCodeObject1: TfrxBarCodeObject;
    btGenerarQR: TcxButton;
    imglogo: TcxImage;
    qr: TdxDBBarCode;
    dxActivityIndicator1: TdxActivityIndicator;
    cxLabel1: TcxLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    Button1: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1id1: TcxGridDBColumn;
    cxGrid1DBTableView1merchant_uuid1: TcxGridDBColumn;
    cxGrid1DBTableView1merchant_op_id1: TcxGridDBColumn;
    cxGrid1DBTableView1description1: TcxGridDBColumn;
    cxGrid1DBTableView1return_url1: TcxGridDBColumn;
    cxGrid1DBTableView1currency1: TcxGridDBColumn;
    cxGrid1DBTableView1invoice_number1: TcxGridDBColumn;
    cxGrid1DBTableView1cancel_url1: TcxGridDBColumn;
    cxGrid1DBTableView1buyer_identity_code1: TcxGridDBColumn;
    cxGrid1DBTableView1terminal_id1: TcxGridDBColumn;
    cxGrid1DBTableView1id_Caja1: TcxGridDBColumn;
    Button3: TButton;
    Button4: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxButton4: TcxButton;
    cxGridDBTableView1id_caja: TcxGridDBColumn;
    cxGridDBTableView1shipping: TcxGridDBColumn;
    cxGridDBTableView1discount: TcxGridDBColumn;
    cxGridDBTableView1tip: TcxGridDBColumn;
    cxGridDBTableView1tax: TcxGridDBColumn;
    Button2: TButton;
    BindSourceDB3: TBindSourceDB;
    BindSourceDB4: TBindSourceDB;
    DSLink: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Button5: TButton;
    cxGridDBTableView2rel: TcxGridDBColumn;
    cxGridDBTableView2method: TcxGridDBColumn;
    cxGridDBTableView2href: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxCrearPago: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem16: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    msgconfirm: TcxMemo;
    dxLayoutItem17: TdxLayoutItem;
    btpaste: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem19: TdxLayoutItem;
    cxButton5: TcxButton;
    link: TMemo;
    parameterInput: TMemo;
    procedure btOKClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxDBComboBox2PropertiesChange(Sender: TObject);
    procedure btGenerarQRClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btpasteClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);

    // function tokenEnzona(Consumerkey, ConsumerSecret: string;
    // nameOAuth: THTTPBasicAuthenticator): string;
    // function tokenEnzona(): string;
  private

    procedure CrearParametros;
    procedure PrepareData;
    procedure Remplace;
    procedure CrearOperacion;
    procedure CrearDetails;
    procedure CrearPayment;
    procedure GetLink;
    { Private declarations }
  public
    linkPayment: string;
    transaction_uuid: string;
    status_code: string;

    { Public declarations }
  end;

var DesgloseCredito: TDesgloseCredito;

const Aceptada = 1111; Fallida = 1112; Pendiente = 1113; Reversada = 1114;
  Devuelta = 1115; Confirmada = 1116; Cancelada = 1117; Activada = 1118;
  Desactivada = 1119;

implementation

uses dataEfectivos, Dcaja, Venta, DataEnzonaToken, EnzonaQR, ClassGlobal, email;
{$R *.dfm}
// function TDesgloseCredito.tokenEnzona(Consumerkey, ConsumerSecret: string;
// nameOAuth: THTTPBasicAuthenticator): string;

procedure InsertarMensaje(const Mensaje: string; UniQuery: TFDQuery;
  const IdEnlace: Int64);
var Telefono, Cuenta, MontoStr, Transaccion: string; Monto: Currency;
  p1, p2: Integer;
begin
  try
    // Extraer teléfono
    p1 := Pos('telefono ', Mensaje) + Length('telefono ');
    p2 := Pos(' le ha realizado', Mensaje);
    Telefono := Copy(Mensaje, p1, p2 - p1);

    // Extraer cuenta
    p1 := Pos('cuenta ', Mensaje) + Length('cuenta ');
    p2 := Pos(' de ', Mensaje, p1);
    Cuenta := Copy(Mensaje, p1, p2 - p1);

    // Extraer monto
    p1 := p2 + Length(' de ');
    p2 := Pos(' CUP', Mensaje);
    MontoStr := Copy(Mensaje, p1, p2 - p1);
    Monto := StrToCurr(StringReplace(MontoStr, '.', ',', [rfReplaceAll]));

    // Extraer número de transacción
    p1 := Pos('Transaccion ', Mensaje) + Length('Transaccion ');
    Transaccion := Trim(Copy(Mensaje, p1, Length(Mensaje) - p1 + 1));

    // Insertar en SQL Server usando UniQuery
    with UniQuery do begin
      Close;
      SQL.Clear;
      SQL.Text := 'INSERT INTO DesgloseTarjetaCredito ' +
        '(id_enlace, Fecha, Cliente, [No. Telefono], Plataforma, [Sucursal Bancaria], Moneda, [No.Transaccion], Credito) '
        + 'VALUES (:IdEnlace, :Fecha, :Cliente, :Telefono, :Plataforma, :Sucursal, :Moneda, :Transaccion, :Credito)';

      ParamByName('IdEnlace').AsLargeInt := IdEnlace;
      ParamByName('Fecha').AsDateTime := date;
      ParamByName('Cliente').AsString := 'Cliente Genérico';
      ParamByName('Telefono').AsString := Telefono;
      ParamByName('Plataforma').AsString := 'Transfermóvil';
      ParamByName('Sucursal').AsString := 'BPA';
      ParamByName('Moneda').AsString := 'CUP';
      ParamByName('Transaccion').AsString := Transaccion;
      ParamByName('Credito').AsCurrency := Monto;
      Execute;
    end;

    // ShowMessage('✅ Datos insertados correctamente con id_enlace ' +
    // IntToStr(IdEnlace));
  except
    on E: Exception do
        ShowMessage('❌ Error al procesar el mensaje: ' + E.Message);
  end;
end;

procedure TDesgloseCredito.btGenerarQRClick(Sender: TObject);
var

    autorizacion: string;

begin

  EnzonaToken.tbComerceEnzona.Execute;

  // --------Obtiene el token
  autorizacion := EnzonaToken.tokenEnzona
    (EnzonaToken.tbComerceEnzonaConsumer_Key.Text,
    EnzonaToken.tbComerceEnzonaConsumer_Secret.Text, EnzonaToken.OAuthBasic);



  // EnzonaToken.RESTRequest1.Execute;

  dataEnzonaQR.RESTRequestQR.Params[0].Value := autorizacion;
  dataEnzonaQR.RESTRequestQR.Params[1].Value :=
    DMCaja.tbCajaTotalVentaCUP.Value.ToString;
  dataEnzonaQR.RESTRequestQR.Params[2].Value := 'CUP';
  dataEnzonaQR.RESTRequestQR.Params[3].Value := 'Cobro Operacion ' +
    DMCaja.tbCajaNoOperacion.Text;

  dataEnzonaQR.RESTRequestQR.Execute;

end;

procedure TDesgloseCredito.btOKClick(Sender: TObject);
begin

  if edTarjeta.SelectedItem = 0 then

  begin
    data_efectivo.DesgloseComercioDigital.Refresh;

    DMCaja.tbCaja.Edit;
    DMCaja.tbCajaComercioE_CUP.Value := edCredito.Value;
    data_efectivo.cuentas.ParamByName('Moneda').AsString := edTarjeta.Text;
    data_efectivo.cuentas.Execute;

    DMCaja.tbCajaNoTarjetaCredito.Text :=
      data_efectivo.CuentasCuentaBancaria.Text;
    DMCaja.tbCajanameComercio.Text := edPlataforma.Text;
    DMCaja.tbCaja.Post;
    DMCaja.tbCaja.Refresh;

  end;

  if edTarjeta.SelectedItem = 1 then

  begin
    data_efectivo.DesgloseComercioDigital.Refresh;

    DMCaja.tbCaja.Edit;
    data_efectivo.cuentas.ParamByName('Moneda').AsString := edTarjeta.Text;
    data_efectivo.cuentas.Execute;
    DMCaja.tbCajaNoTarjetaCredito.Text :=
      data_efectivo.CuentasCuentaBancaria.Text;
    DMCaja.tbCajaComercioE_USD.Value := edCredito.Value;
    DMCaja.tbCajanameComercio.Text := edPlataforma.Text;
    DMCaja.tbCaja.Post;
    DMCaja.tbCaja.Refresh;
  end;


  // para agregar la fecha del comprob. hacia la tb de entrad. de Efectivo (monCUC)

  Close;
end;



procedure TDesgloseCredito.Button2Click(Sender: TObject);
begin
  with data_efectivo do
  begin
    if tbLink.Locate('rel', 'confirm', []) then
    begin
      if not tbLinkhref.IsNull then
      begin
        linkPayment := tbLinkhref.Value;
        ShellExecute(0, 'OPEN', PChar(linkPayment), nil, nil, SW_SHOWNORMAL);
      end
      else
        ShowMessage('El enlace de pago (href) está vacío.');
    end
    else
      ShowMessage('No se encontró el registro con rel = "confirm".');
  end;
end;


procedure TDesgloseCredito.Button3Click(Sender: TObject);
begin
  paymentenzona.tbOperacion.Refresh;
  if paymentenzona.tbOperacion.RecordCount = 0 then begin

    paymentenzona.tbOperacion.Append;
    paymentenzona.tbOperacion.Edit;
    // ------merchant_uuid-------------
    paymentenzona.tbOperacionmerchant_uuid.Text :=
      paymentenzona.tbComerceEnzonamerchant_uuid.Text;

    // ----------------------------------------
    paymentenzona.tbOperacionmerchant_op_id.Text := generate(12, True, false);
    paymentenzona.tbOperaciondescription.Text := 'Pago Comprobante ' +
      DMCaja.tbCajaNoOperacion.Text;
    paymentenzona.tbOperacionreturn_url.Text := 'https://espa.cu/payment/';
    paymentenzona.tbOperacioncurrency.Text := 'CUP';
    paymentenzona.tbOperacioninvoice_number.Text := '';
    paymentenzona.tbOperacioncancel_url.Text := 'https://espa.cu/payment/';
    paymentenzona.tbOperacionbuyer_identity_code.Text := '';
    paymentenzona.tbOperacionterminal_id.Text := '';

    paymentenzona.tbOperacion.Post;
    paymentenzona.tbOperacion.Refresh;
  end;
end;

procedure TDesgloseCredito.Button4Click(Sender: TObject);
begin

  // paymentenzona.tbDetails.Delete;
  if paymentenzona.tbDetails.RecordCount = 0 then begin
    paymentenzona.tbDetails.Append;
    paymentenzona.tbDetailsshipping.Text := '0.00';

    paymentenzona.tbDetailsdiscount.Text := '0.00';
    paymentenzona.tbDetailstip.Text := '0.00';
    paymentenzona.tbDetails.Post;
    paymentenzona.tbDetails.Refresh;
    paymentenzona.details.Refresh;

  end
  else paymentenzona.tbDetails.Delete;
end;

procedure TDesgloseCredito.Button5Click(Sender: TObject);
begin
  // getpay
end;

procedure TDesgloseCredito.cxButton1Click(Sender: TObject);
begin

  PrepareData;

end;

procedure TDesgloseCredito.CrearParametros;
var LJSONArray: TJSonObject;

begin
  if not paymentenzona.tbOperacion.IsEmpty then begin
    LJSONArray := paymentenzona.tbOperacion.ToJSONObject;
    try
      parameterInput.Lines.Clear;
      parameterInput.Lines.Text := LJSONArray.Format(4);
      Remplace;
    finally LJSONArray.Free;
    end;
  end;
end;

procedure TDesgloseCredito.CrearPayment;
var autorizacion: string;
begin

  try
    EnzonaToken.tbComerceEnzona.Execute;
    // --------Obtiene el token
    autorizacion := EnzonaToken.tokenEnzona
      (EnzonaToken.tbComerceEnzonaConsumer_Key.Text,
      EnzonaToken.tbComerceEnzonaConsumer_Secret.Text, EnzonaToken.OAuthBasic);
  except
    on E: Exception do
        ShowMessage('La plataforma de enzona no esta disponible');
  end;

  try
    with data_efectivo do begin
      // EnzonaToken.RESTRequest1.Execute;
      PaymentCreate.Params[0].Value := autorizacion;
      PaymentCreate.Params[1].Value := parameterInput.Text;
      PaymentCreate.Execute;
      transaction_uuid := '';

      transaction_uuid := ResponseDatatransaction_uuid.Value;

      status_code := '';
      status_code := ResponseDatastatus_code.Value.ToString;

    end;
  except
    on E: Exception do
        ShowMessage('La plataforma de enzona no esta disponible');
  end;

end;

procedure TDesgloseCredito.GetLink;
begin
with data_efectivo do
begin
  tbLink.Close;
  tbLink.LoadFromJSON(link.Lines.Text);
  tbLink.Active;

end;
end;

procedure TDesgloseCredito.CrearDetails;
begin
  paymentenzona.tbDetails.Append;
  paymentenzona.tbDetailsshipping.Text := '0.00';
  paymentenzona.tbDetailsdiscount.Text := '0.00';
  paymentenzona.tbDetailstip.Text := '0.00';
  paymentenzona.tbDetails.Post;
  paymentenzona.tbDetails.Refresh;
  paymentenzona.details.Refresh;
end;

procedure TDesgloseCredito.CrearOperacion;
begin

  paymentenzona.tbOperacion.Append;
  paymentenzona.tbOperacion.Edit;
  paymentenzona.tbOperacionmerchant_uuid.Text :=
    paymentenzona.tbComerceEnzonamerchant_uuid.Text;
  paymentenzona.tbOperacionmerchant_op_id.Text := generate(12, True, false);
  paymentenzona.tbOperaciondescription.Text := 'Pago de Operacion ' +
    DMCaja.tbCajaNoOperacion.Text;
  paymentenzona.tbOperacioncurrency.Text :=
    paymentenzona.tbComerceEnzonacurrency.Text;
  paymentenzona.tbOperacioninvoice_number.Text := '';
  paymentenzona.tbOperacionterminal_id.Text := '';
  paymentenzona.tbOperacionreturn_url.Text :=
    paymentenzona.tbComerceEnzonareturn_url.Text;
  paymentenzona.tbOperacioncancel_url.Text :=
    paymentenzona.tbComerceEnzonacancel_url.Text;
  paymentenzona.tbOperacionbuyer_identity_code.Text := '';
  paymentenzona.tbOperacion.Post;
  paymentenzona.tbOperacion.Refresh;
end;

procedure TDesgloseCredito.Remplace;
begin
  parameterInput.Text := AnsiReplaceText(parameterInput.Text, '\', '');
  parameterInput.Text := AnsiReplaceText(parameterInput.Text, 'merchantuuid',
    'merchant_uuid');
  parameterInput.Text := AnsiReplaceText(parameterInput.Text, 'merchantopid',
    'merchant_op_id');
  parameterInput.Text := AnsiReplaceText(parameterInput.Text, 'returnurl',
    'return_url');
  parameterInput.Text := AnsiReplaceText(parameterInput.Text, 'invoicenumber',
    'invoice_number');
  parameterInput.Text := AnsiReplaceText(parameterInput.Text, 'cancelurl',
    'cancel_url');
  parameterInput.Text := AnsiReplaceText(parameterInput.Text,
    'buyeridentitycode', 'buyer_identity_code');
  parameterInput.Text := AnsiReplaceText(parameterInput.Text, 'terminalid',
    'terminal_id');
end;

procedure TDesgloseCredito.PrepareData;
begin
  paymentenzona.tbOperacion.Refresh;
  if not paymentenzona.tbOperacion.IsEmpty then begin
    paymentenzona.tbOperacion.Delete;
    CrearOperacion;

  end else begin
    CrearOperacion;
  end;

  paymentenzona.tbDetails.Refresh;
  if not paymentenzona.tbDetails.IsEmpty then begin
    paymentenzona.tbDetails.Delete;
    CrearDetails;
  end else begin
    CrearDetails;
  end;

  paymentenzona.tbOperacion.Refresh;
  paymentenzona.amount.Refresh;
  paymentenzona.tbDetails.Refresh;
  paymentenzona.details.Refresh;
  paymentenzona.items.Refresh;
end;

procedure TDesgloseCredito.cxButton2Click(Sender: TObject);
begin
  FormVenta.edCredito.Value := edCredito.Value;
  DMCaja.tbCaja.Refresh;
end;

procedure TDesgloseCredito.btpasteClick(Sender: TObject);
begin
  // CrearParametros;

  if Clipboard.HasFormat(CF_TEXT) then msgconfirm.Text := Clipboard.AsText
  else ShowMessage('El portapapeles no contiene texto.');

end;

procedure TDesgloseCredito.cxButton4Click(Sender: TObject);
begin
  PrepareData;
  CrearParametros;
  CrearPayment;
  GetLink
end;

procedure TDesgloseCredito.cxButton5Click(Sender: TObject);
begin

  try
    InsertarMensaje(msgconfirm.Text, data_efectivo.QInsert,
      Dcaja.DMCaja.tbCajaNoComp.Value);
    data_efectivo.DesgloseComercioDigital.Refresh;
    msgconfirm.Clear;
  except
    on E: Exception do begin
      ShowMessage(E.Message)
    end;
  end;

end;

procedure TDesgloseCredito.cxDBComboBox2PropertiesChange(Sender: TObject);
begin
  if edPlataforma.SelectedItem = 1 then begin
    DesgloseCredito.Width := 665;
    Timer1.Enabled := True;
    btGenerarQR.Click;

    qr.Visible := True;
    imglogo.Visible := True;

    Timer1.Enabled := True;

  end else begin

    DesgloseCredito.Width := 393;
  end;
end;

procedure TDesgloseCredito.Timer1Timer(Sender: TObject);
begin
  dxActivityIndicator1.Visible := false;
end;

procedure TDesgloseCredito.Timer2Timer(Sender: TObject);
begin
  if ID.Text = '' then begin
    btOK.Enabled := false

  end else begin
    btOK.Enabled := True;
  end;
end;

end.
