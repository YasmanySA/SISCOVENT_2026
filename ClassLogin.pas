unit ClassLogin;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  cxImage, cxDBEdit, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, Vcl.Buttons,
  cxGroupBox, dxSkinOffice2019Colorful;

type
  TParametroFuncion = function(const vCadena: string): string;
  // TClassLogin = class ;
function SetLoginOpen(SetLogin: boolean; SetUID: Integer;
  SetUAlias, SetUNombre, SetCargo: string): boolean;
function Setchanguepass(changue: string): string;
// function Login(User, password: string; nameFieldUser: string): Boolean;

// private
//
// { Private declarations }
// public
//
// { Public declarations }

var
  UID: Integer;
  UAlias: String;
  UNombre: String;
  UCargo: String;
  // UClave: String;
  // UState: Integer;
  UPermisos: TStrings;
  // var_user, var_pass: string;
  // subject: WideString;

  LoginOpen: boolean;
  changuePass: string;

implementation

uses secion, dataLogin;

function SetLoginOpen(SetLogin: boolean; SetUID: Integer;
  SetUAlias, SetUNombre, SetCargo: string): boolean;
begin

  LoginOpen := SetLogin;

  UID := SetUID;
  UAlias := SetUAlias;
  UNombre := SetUNombre;
  UCargo := SetCargo;
  // UClave: String;
  // UState: Integer;
  // UPermisos: TStrings;
  Result:= true;
end;

function Setchanguepass(changue: string): string;
begin

  changuePass := changue;

end;

end.
