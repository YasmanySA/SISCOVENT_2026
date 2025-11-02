unit changuePass;

interface

uses 
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  // DevExpress Controls
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxCustomData, 
  cxStyles, cxTL, cxTLdxBarBuiltInMenu, cxClasses, cxInplaceContainer, 
  cxFilter,
  // DevExpress Skins
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinWXI, dxCoreGraphics,
  // DevExpress Layout & Other
  dxScrollbarAnnotations, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutControl, dxActivityIndicator,
  // Project Units
  Verifycode, frameVeryfyCode, ClassGlobal, dataEncrypt;

type
  TFchanguePass = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    btLogin: TcxButton;
    edClave2: TcxButtonEdit;
    cxTreeList1: TcxTreeList;
    cxTreeList1Column1: TcxTreeListColumn;
    cxTreeList1Column2: TcxTreeListColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    edClave: TcxButtonEdit;
    Lcode: TdxLayoutItem;
    LcodeP: TdxLayoutControl;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    LcodePGroup_Root: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    Lactivity: TdxLayoutItem;
    dxActivityIndicator1: TdxActivityIndicator;
    edActivity: TdxLayoutItem;
    dxActivityIndicator2: TdxActivityIndicator;
    timerVerify: TTimer;
    edCode: TcxMaskEdit;
    dxLayoutItem1: TdxLayoutItem;
    procedure btLoginClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure timerVerifyTimer(Sender: TObject);
    procedure edCodePropertiesChange(Sender: TObject);
  private
    code: string;
    procedure Verify_Code;
    { Private declarations }
  public
    mail: string;
    user, password_changue: string;
    function changuepassword(mail, user, password_changue: string): Boolean;
    { Public declarations }
  end;

var 
  FchanguePass: TFchanguePass;

implementation

{$R *.dfm}

uses 
  email, ClassLogin, Secion, html, dataLogin;

procedure TFchanguePass.btLoginClick(Sender: TObject);
begin
  password_changue := edClave.Text;

  if (edClave.Text <> '') then begin
    if edClave2.Text <> '' then begin
      if edClave2.Text = edClave.Text then begin
        changuepassword(mail, user, password_changue);
      end else begin
        if MessageDLG('Las contraseñas no coinciden', mtError, [mbYes], 0) = mrYes then
          edClave2.SetFocus;
      end;
    end else begin
      edClave.SetFocus;
    end;
  end else begin
    edClave.SetFocus;
  end;
end;

function TFchanguePass.changuepassword(mail, user, password_changue: string): Boolean;
var 
  var_code: string; 
  subject: string;
begin
  with dmLogin do begin
    tbUserConect.Edit;
    tbUserConectcode_activation.Text := generate(6, True, false);
    tbUserConect.Post;
    var_code := tbUserConectcode_activation.Text;
    
    Lactivity.Visible := True;
    subject := 'Codigo Activacion Cambio Contraseña';
    ShowMessage(user + ' Se le ha enviado un correo a su cuenta de correo  ' +
      mail + '  con el codigo de activacion. Revise en su buzon');
    
    name := user;
    dm_mail.send_mail(var_code, 'code', subject, mail, name,
      FchanguePass.Lactivity, Lcode);

    Height := 290;

    update_pass.ParamByName('password_changue').AsString :=
      DMEncrypt.EncryptPassword(password_changue);
    update_pass.ParamByName('username').AsString := user;
  end;
end;

procedure TFchanguePass.Verify_Code;
begin
  with dmLogin do begin
    code := edCode.Text;
    if code = tbUserConectcode_activation.Text then begin
      edActivity.Visible := True;
      tbUserConect.Edit;
      tbUserConectpass_changue.Value := 0;
      tbUserConect.Post;
      timerVerify.Interval := 3000;
      timerVerify.Enabled := True;
    end;
  end;
end;

procedure TFchanguePass.cxButton1Click(Sender: TObject);
var 
  var_code: string; 
  mail: string; 
  subject: string;
begin
  with dmLogin do begin
    subject := 'Codigo Activacion';
    tbUserConect.Edit;
    tbUserConectcode_activation.Text := generate(6, True, false);
    tbUserConect.Post;
    var_code := tbUserConectcode_activation.Text;
    mail := tbUserConectemail.Text;

    dm_mail.send_mail(var_code, 'code', subject, mail, user,
      FchanguePass.Lactivity, Lcode);
  end;
end;

procedure TFchanguePass.edCodePropertiesChange(Sender: TObject);
begin
  Verify_Code;
end;

procedure TFchanguePass.timerVerifyTimer(Sender: TObject);
var 
  var_UID: Integer; 
  var_Alias, Var_Nombre, Var_Cargo: string;
begin
  with dmLogin do begin
    Lcode.Visible := False;
    Height := 205;
    update_pass.Execute;
    edActivity.Visible := True;
    timerVerify.Enabled := False;
    ShowMessage('Su Contraseña ha sido Cambiada');

    var_UID := tbUserConectID.Value;
    var_Alias := tbUserConectusername.Text;
    Var_Nombre := tbUserConectNombre.Text + tbUserConectApellidos.Text;
    Var_Cargo := tbUserConectCargo.Text;
    SetLoginOpen(True, var_UID, var_Alias, Var_Nombre, Var_Cargo);
    Close;
  end;
end;

end.