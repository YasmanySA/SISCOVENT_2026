unit Splash;

interface

uses uMain,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxImage, dxGDIPlusClasses, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxClasses, dxLayoutLookAndFeels, dxLayoutControl, cxLabel,
  Vcl.WinXPanels, cxProgressBar, dxTaskbarProgress, Vcl.AppEvnts,System.Win.ComObj,
  dxSkinWXI, dxActivityIndicator;

type
  TFSplash = class(TForm)
    TmrSplash: TTimer;
    cxImage1: TcxImage;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    nv: TcxLabel;
    Timer1: TTimer;
    dxTaskbarProgress1: TdxTaskbarProgress;
    ApplicationEvents1: TApplicationEvents;
    dxActivityIndicator1: TdxActivityIndicator;
    procedure FormShow(Sender: TObject);
    procedure TmrSplashTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
  public
    vCompletado: Boolean;
    { Public declarations }
  end;

var
  FSplash: TFSplash;

implementation

{$R *.dfm}

uses ClassGlobal;

procedure TFSplash.ApplicationEvents1Exception(Sender: TObject; E: Exception);
var

  EO: EOLEException;
begin
  if E is EOLEException then
  begin
    EO := EOLEException(E);
    ShowMessage(EO.ToString);
    if (EO.ErrorCode = -2147467259) then
    // error de conexion (disconnected)
    begin
      try
        try

        except

        end;


        ShowMessage
          ('FALLA EN LA CONEXION A LA BASE DE DATOS - Reestableciendo, vuelva a intentar!');
      except
        on E: Exception do
          ShowMessageFmt('FALLA EN LA CONEXION A LA BASE DE DATOS!. ' +
            'Por favor, intente luego!.'#13'Error message: %s', [E.Message]);
      end;
    end
    else
//      ShowMessage('Restableciendo Conexion');
     ShowMessage(E.Message + ' ' + IntToStr(EO.ErrorCode));
  end
//  else if E.Message.Contains('Dataset not in edit or insert mode') then
//  begin
//    ShowMessage('Ya los datos estan guardados');
//    // ShowMessage(E.Message);
//
//  end;
  //
//  if E.Message.Contains('TCP Provider') then
//
//    // E_Message := E.Message;
//    // E_ClassName := E.ClassName;
//    // Memo1.Lines.Add(E.Message);
//    if MessageDlg
//      ('La Conexion ha cambiado. En breve se reconectara el sistema de nuevo. Por favor espere un momento',
//      TMsgDlgType.mtInformation, [mbYes, mbNo], 0, mbYes) = mrYes then
//
//      ResetConnection;
//  Sleep(2000);
//  OpenTable;


end;

procedure TFSplash.FormCreate(Sender: TObject);
begin
  nv.Caption := 'Version ' + GetAppVersion;
end;

procedure TFSplash.FormShow(Sender: TObject);
begin
  vCompletado := False;

end;

procedure TFSplash.TmrSplashTimer(Sender: TObject);
begin
  vCompletado := True;
end;

end.
