unit ClassGlobal;

interface

uses
  // --------------------------------

    IniFiles, System.NetEncoding,


  // ------------------------------------

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxCurrencyEdit, cxCheckBox, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, cxImageList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, dxSkinsForm,
  cxContainer, dxBarCode, dxDBBarCode, Vcl.StdCtrls, cxDropDownEdit, cxGroupBox,
  cxDBLookupComboBox, cxTextEdit, Vcl.DBCtrls, dxPDFDocument, dxRibbonSkins,
  dxRibbonCustomizationForm, dxPDFViewerActions, dxBar, dxPrinting, dxRibbon,
  System.Actions, Vcl.ActnList, dxActions, dxCustomPreview, dxPDFDocumentViewer,
  dxPDFViewer, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Menus, cxButtons, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinOffice2019Colorful, dxDateRanges,
  dxToggleSwitch, dxColorEdit, dxCore, dxGalleryControl, dxColorGallery,
  dxDBColorGallery, dxColorPicker, cxMaskEdit, dxDBColorEdit, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Vcl.DBActns, dxLayoutContainer, cxRadioGroup, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxSpinEdit, cxCalendar, dxLayoutControl,
  cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView

    , FireDAC.Comp.Client;

const
  // alphaN = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
  // cnumber = '1234567890';
  // alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  // cnumber: array [0 .. 9] of string = ('0', '1', '1', '3', '4', '5', '6', '7',
  // '8', '9');
  // cletras: array [0 .. 25] of string = ('A', 'B', ' C', 'D', ' E', 'F', 'G',
  // 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
  // 'W', 'X', 'Y', 'Z');

    vDias: array [0 .. 6] of string = ('Lunes', 'Martes', 'Miércoles', 'Jueves',
    'Viernes', 'Sábado', 'Domingo');

var LoginOK: Boolean;

type
  TParametroFuncion = function(const vCadena: string): string;
  // notar que solo se declara la "cabecera" de los metodos
function SoloLetras(const vCadena: string): string;
function GetPCName: string;
function generateOperacion(tamaño: Integer): string;
// procedure NombreDelMetodo(const Parametro1: string; const Parametro2: Boolean);
function SoloNumeros(const vCadena: string): string;
function LimpiarCaracteres(vCadena: string;
  vFuncion: TParametroFuncion): string;
function generate(LengthN: Integer; number, letters: Boolean): string;

procedure Alerta_AdvertenciaDelete(msg: string; tb: TFDQuery;
  dialog: TMsgDlgType);
procedure Alerta_AdvertenciaContabilizar(msg: string; tb: TFDQuery;
  field, field2: string; dialog: TMsgDlgType);
procedure Alerta_AdvertenciaContabilizar2(msg: string; tb: TFDQuery;
  field: string; dialog: TMsgDlgType);
procedure resetincrement(param: Integer; tblastnumber, tbreset: TFDQuery;
  field: string);
procedure InsertData(sql: string; query: TFDQuery; idUsable: Boolean;
  refresh: TProcedure);
procedure saveinifiles(section, ident1, ident2: string;
  value1, value2: Integer);
FUNCTION emailValido(CONST Value: String): Boolean;
function generatekey(keyLength: Integer; number, letters: Boolean): string;
{ Public declarations }
function GetAppVersion: string;
function EAN13(i: int64): String;

procedure msgAlert(msg: string; dialog: TMsgDlgType);

function EncryptBase64(const AValue: string): string;

function DecryptBase64(const AValue: string): string;

implementation

function GetAppVersion: string;
var Size, Size2: DWord; Pt, Pt2: Pointer;
begin
  Size := GetFileVersionInfoSize(PChar(ParamStr(0)), Size2);
  if Size > 0 then begin
    GetMem(Pt, Size);
    try
      GetFileVersionInfo(PChar(ParamStr(0)), 0, Size, Pt);
      VerQueryValue(Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo(Pt2^) do begin
        Result := IntToStr(HiWord(dwFileVersionMS)) + '.' +
          IntToStr(LoWord(dwFileVersionMS)) + '.' +
          IntToStr(HiWord(dwFileVersionLS)) + ' Build ' +
          IntToStr(LoWord(dwFileVersionLS));
      end;
    finally FreeMem(Pt);
    end;
  end;
end;

FUNCTION emailValido(CONST Value: String): Boolean;
  FUNCTION CheckAllowed(CONST s: String): Boolean;
  VAR i: Integer;
  BEGIN
    Result := False;
    FOR i := 1 TO Length(s) DO // illegal char in s -> no valid address
      IF NOT(s[i] IN ['a' .. 'z', 'A' .. 'Z', '0' .. '9', '_', '-', '.']) THEN
          Exit;
    Result := true;
  END;

VAR i, len: Integer; namePart, serverPart: String;
BEGIN // of IsValidEmail
  Result := False;
  i := Pos('@', Value);
  IF (i = 0) OR (Pos('..', Value) > 0) THEN Exit;
  namePart := Copy(Value, 1, i - 1);
  serverPart := Copy(Value, i + 1, Length(Value));
  len := Length(serverPart);
  // must have dot and at least 3 places from end, 2 places from begin
  IF (len < 4) OR (Pos('.', serverPart) = 0) OR (serverPart[1] = '.') OR
    (serverPart[len] = '.') OR (serverPart[len - 1] = '.') THEN Exit;
  Result := CheckAllowed(namePart) AND CheckAllowed(serverPart);
END;

procedure InsertData(sql: string; query: TFDQuery; idUsable: Boolean;
  refresh: TProcedure);
var i: Integer;
begin

  //
  // query.sql.Add(sql);
  //
  // for I := 0 to query.ParamCount do
  // begin
  //
  // query.Params[I].DataType := edTipoProducto.Text;
  // q_InsertTypeProducto.Params[1].AsString :=
  // generateMerchantOpID(10, true, true);
  //
  // end;
  // q_InsertTypeProducto.Execute;
  //
  // RefreshTable;
  //
  // edTipoProducto.Clear
end;

function SoloLetras(const vCadena: string): string;
var i: Integer; vAux: string; vCadenaMinusculas: string;
begin
  // Inicializamos la variable Auxiliar, ya que si no hay resultados
  // nos puede devolver basula de memoria
  vAux := '';
  // Convertimos la cadena a minusculas para comparar con el rango de letras
  // de esta manera no tenemos que comparar mayúsculas y minúsculas
  vCadenaMinusculas := LowerCase(vCadena);
  // Recorremos cada uno de los caracteres de la vCadenaMinusculas
  for i := 0 to Length(vCadenaMinusculas) - 1 do begin
    // Si el caracter esta en el rango de letras o es un espacio en blanco,
    // lo guardamos en vAux
    // (utilizamos la vCadenaMinusculas que es igual a vCadena
    if vCadenaMinusculas[i] in ['a' .. 'z', ' '] then vAux := vAux + vCadena[i];
  end;
  // Retornamos la variable auxiliar con solo las letras
  Result := vAux;
end;

function SoloNumeros(const vCadena: string): string;
var i: Integer; vAux: string;
begin
  // Inicializamos la variable Auxiliar, ya que si no hay resultados
  // nos puede devolver basula de memoria
  vAux := '';
  // Recorremos cada uno de los caracteres de la vCadena
  for i := 0 to Length(vCadena) - 1 do begin
    // Si el caracter esta en el rango de los números, lo guardamos en vAux
    if vCadena[i] in ['0' .. '9'] then vAux := vAux + vCadena[i];
  end;
  // Retornamos la variable auxiliar con solo los números
  Result := vAux;
end;

function LimpiarCaracteres(vCadena: string;
  vFuncion: TParametroFuncion): string;
begin
  Result := vFuncion(vCadena);
end;

function generateOperacion(tamaño: Integer): string;
const content = 'ABCD9EF1GHIJ4KLNO7PQRS9TUVWZ23456M780';

var operation: string; i: Integer;
begin

  for i := 1 to tamaño do begin
    Randomize;
    operation := operation + content[1 + Random(Length(content))];
    Randomize;
  end;

  Result := operation;

end;

function generate(LengthN: Integer; number, letters: Boolean): string;
const alphaN = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'; cnumber = '1234567890';
  alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var
  // aChar: Char;
    operation: string; i: Integer;
  // Var
  // number: array[0..9];

begin

  for i := 1 to LengthN do begin

    if (letters = False) and (number = true) then BEGIN

      Randomize;
      operation := operation + cnumber[1 + Random(Length(cnumber))];;

      Result := operation;

    END;

    if (letters = true) and (number = False) then BEGIN

      Randomize;
      operation := operation + alpha[1 + Random(Length(alpha))];

      Result := operation;

    END;

    if (letters) and (number) = true then

    BEGIN

      Randomize;
      operation := operation + alphaN[1 + Random(Length(alphaN))];

      Result := operation;

    END;

  end;
end;

function generatekey(keyLength: Integer; number, letters: Boolean): string;
const alphaN = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'; cnumber = '1234567890';
  alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var
  // aChar: Char;
    operation: string; i: Integer; Length_N: Integer;

  // Var
  // number: array[0..9];

begin

  if keyLength = 128 then

  begin
    Length_N := 16;
  end;

  if keyLength = 192 then

  begin
    Length_N := 24;
  end;

  if keyLength = 256 then

  begin
    Length_N := 32;
  end;

  for i := 1 to Length_N do begin

    if (letters = False) and (number = true) then BEGIN

      Randomize;
      operation := operation + cnumber[1 + Random(Length(cnumber))];;

      Result := operation;

    END else

      if (letters = true) and (number = False) then BEGIN

      Randomize;
      operation := operation + alpha[1 + Random(Length(alpha))];

      Result := operation;

    END;

    if (letters) and (number) = true then

    BEGIN

      Randomize;
      operation := operation + alphaN[1 + Random(Length(alphaN))];

      Result := operation;

    END;

  end;
end;
// Result := operation;
// if onlyNumber  then
//
//
//
//
//
// end
//
// else begin
// chars = array_merge(range('A', 'Z'), range(0, 9),range('a', 'z'));
// // $out = '';
// }
//
// for ($C = 0; $C < $ Length; $C + +) {
// $out .= $chars[mt_rand(0, count($chars) - 1)];
// }
// return $out;
// }


// ------------Alertas

procedure Alerta_AdvertenciaDelete(msg: string; tb: TFDQuery;
  dialog: TMsgDlgType);

begin

  if MessageDlg(msg, dialog, [mbYes, mbNo], 0, mbYes) = mrYes then

      tb.Delete;

end;

procedure msgAlert(msg: string; dialog: TMsgDlgType);

begin

  if MessageDlg(msg, dialog, [mbYes], 0, mbYes) = mrYes then

  begin

  end;
end;

procedure Alerta_AdvertenciaContabilizar(msg: string; tb: TFDQuery;
  field, field2: string; dialog: TMsgDlgType);

begin

  if MessageDlg(msg, dialog, [mbYes, mbNo], 0, mbYes) = mrYes then

  begin
    tb.edit;

    tb.FieldByName(field).Value := 1;

    tb.FieldByName(field2).Value := 0;

    tb.Post;
    tb.refresh;
  end;
end;

procedure Alerta_AdvertenciaContabilizar2(msg: string; tb: TFDQuery;
  field: string; dialog: TMsgDlgType);

begin

  if MessageDlg(msg, dialog, [mbYes, mbNo], 0, mbYes) = mrYes then

  begin
    tb.edit;

    tb.FieldByName(field).Value := 1;

    tb.Post;
    tb.refresh;
  end;
end;

procedure sendcode(msg: string; tb: TFDQuery; field: string;
  dialog: TMsgDlgType; code: string);

begin

  if MessageDlg(msg, dialog, [mbYes, mbNo], 0, mbYes) = mrYes then tb.edit;

  tb.FieldByName(field).Value := 1;
  tb.Post;
  tb.refresh;
end;

procedure saveinifiles(section, ident1, ident2: string;
  value1, value2: Integer);
var ConfigINI: TIniFile;
begin
  ConfigINI := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'Config.ini');
  ConfigINI.WriteString(section, ident1, IntToStr(value1));
  ConfigINI.WriteString(section, ident2, IntToStr(value2));
  ConfigINI.Free;

end;

procedure resetincrement(param: Integer; tblastnumber, tbreset: TFDQuery;
  field: string);

begin
  tblastnumber.close; // si es un SELECT
  tblastnumber.Open;
  tbreset.Params[param].AsInteger :=
    tblastnumber.FieldByName(field).Value;

  tbreset.ExecSQL();

end;

function GetPCName: string;
var Buffer: array [0 .. MAX_COMPUTERNAME_LENGTH] of Char; Size: Cardinal;
begin
  FillChar(Buffer, Sizeof(Buffer), 0);
  Size := Sizeof(Buffer);
  if GetComputerName(Buffer, Size) then Result := String(PChar(@Buffer))
  else Result := '';
end;

function EAN13(i: int64): String;
var j: Integer;
begin
  Result := Format('%12.12d', [i]);
  j := 0;
  while i > 0 do begin
    inc(j, (i mod 10) * 3);
    i := i div 10;
    inc(j, i mod 10);
    i := i div 10;
  end;
  Result := Result + IntToStr((10 - (j mod 10)) mod 10);
end;

function EncryptBase64(const AValue: string): string;
begin
  Result := TNetEncoding.Base64.Encode(AValue);
end;

function DecryptBase64(const AValue: string): string;
begin
  Result := TNetEncoding.Base64.Decode(AValue);
end;

end.
