unit dataEncrypt;

interface

uses
  System.SysUtils, System.Classes, System.Hash;

type
  TDMEncrypt = class(TDataModule)
  private
    { Private declarations }
  public
  function EncryptPassword(const Password: string): string;
  function IsPasswordCorrect(const EnteredPassword, StoredHash: string): Boolean;
    { Public declarations }
  end;

var
  DMEncrypt: TDMEncrypt;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



function TDMEncrypt.EncryptPassword(const Password: string): string;
begin
  Result := THashSHA2.GetHashString(Password, THashSHA2.TSHA2Version.SHA256);
end;

function TDMEncrypt.IsPasswordCorrect(const EnteredPassword, StoredHash: string): Boolean;
begin
  Result := THashSHA2.GetHashString(EnteredPassword, THashSHA2.TSHA2Version.SHA256) = StoredHash;
end;





end.
