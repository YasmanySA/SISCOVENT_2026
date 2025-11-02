unit TMSWindowsCrack;

{
  Add TMSWindowsCrack.pas as the first unit in your project's DPR file.
}
interface

implementation

uses Windows;

const ClassName = 'TAppBuilder';

var WndClass: TWndClass; WndHandle: HWND;

function WindowProc(hWin: HWND; uMsg: UINT; wParam: wParam; lParam: lParam)
  : LRESULT; stdcall;
begin
  Result := DefWindowProc(hWin, uMsg, wParam, lParam);
end;

initialization

WndClass.hInstance := hInstance;
WndClass.lpszClassName := ClassName;
WndClass.lpfnWndProc := @WindowProc;
RegisterClass(WndClass);
WndHandle := CreateWindow(ClassName, nil, 0, 0, 0, 0, 0, 0, 0, hInstance, nil);

finalization

DestroyWindow(WndHandle);
UnregisterClass(ClassName, hInstance);

end.
