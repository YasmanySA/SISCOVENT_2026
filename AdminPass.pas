unit AdminPass;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu, cxContainer, cxEdit,
  Vcl.Menus, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.ExtCtrls, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxTextEdit, dxGDIPlusClasses,
  cxImage, Vcl.StdCtrls, cxButtons, cxGroupBox, cxPC, cxButtonEdit, cxClasses,
  dxSkinsForm, dxSkinOffice2019Colorful, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinWXI;

type
  TPassAdmin = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    edUsuario: TcxLookupComboBox;
    tab_crear: TcxTabSheet;
    eduser: TcxDBTextEdit;
    edpassword: TcxDBTextEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    btCrear: TcxButton;
    Timer1: TTimer;
    Image1: TImage;
    Image2: TImage;
    edClave: TcxTextEdit;
    Image3: TImage;
    Image4: TImage;
    procedure cxButton1Click(Sender: TObject);
    procedure edClaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCrearClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edClavePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    Login: Boolean;
  end;

var PassAdmin: TPassAdmin;

implementation

{$R *.dfm}

uses RegistroUser, ConexionDM, dataAdmin;

procedure TPassAdmin.cxButton1Click(Sender: TObject);
begin
  Login := False;
  // Busca el usuario en la tabla FireDAC
  if dmAdmin.tbAdmin.Locate('Usuario', edUsuario.Text, []) then begin
    if edClave.Text = dmAdmin.tbAdmin.FieldByName('Clave').AsString then begin
      Login := True;
    end
    else ShowMessage('Su clave es incorrecta');
  end
  else ShowMessage('Usuario incorrecto');

  if Login = True then begin
    Close;
    Reg.ShowModal;
  end;
end;

procedure TPassAdmin.edClaveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edClave.Text = 'resetpass' then
    if Key = VK_ADD then begin
      tab_crear.Enabled := True;
      edClave.Text := '';
    end;
end;

procedure TPassAdmin.edClavePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  edClave.Properties.EchoMode := eemNormal;
end;

procedure TPassAdmin.btCrearClick(Sender: TObject);
begin
  Timer1.Enabled := False;
  eduser.Enabled := True;
  edpassword.Enabled := True;
  dmAdmin.tbAdmin.Append;
end;

procedure TPassAdmin.cxButton3Click(Sender: TObject);
begin
  with dmAdmin do begin

    tbAdmin.Post;
    tbAdmin.Refresh;
    eduser.Enabled := False;
    edpassword.Enabled := False;
    tab_crear.Enabled := False;
  end;
end;

procedure TPassAdmin.cxButton4Click(Sender: TObject);
begin
  with dmAdmin do begin
    edpassword.Enabled := True;
    tbAdmin.Edit;
  end;
end;

procedure TPassAdmin.Timer1Timer(Sender: TObject);
begin
  if eduser.Text = '' then begin
    btCrear.Enabled := True;
    eduser.Enabled := False;
    edpassword.Enabled := False;
  end else begin
    btCrear.Enabled := False;
  end;
end;

end.
