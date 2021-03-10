library custcol;

uses
  Windows,
  CommDlg,
  SysUtils;

const
  CustomColorsSection = 'Custom Colors';
  CustomColorsEntry   = 'RGB_Color_';

var
  CC : TChooseColor;
  acrCustClr : array[0..15] of COLORREF;

procedure LoadCustomColors(lpIniFileName : LPCSTR); stdcall;
var
  I : Integer;
begin
  for I := 0 to 15 do
    acrCustClr[I] := GetPrivateProfileInt(CustomColorsSection,
    PChar(CustomColorsEntry + IntToStr(I)), 0, lpIniFileName);
end;

procedure SaveCustomColors(lpIniFileName : LPCSTR); stdcall;
var
  I : Integer;
begin
  for I := 0 to 15 do
    WritePrivateProfileString(CustomColorsSection,
    PChar(CustomColorsEntry + IntToStr(I)), PChar(IntToStr(acrCustClr[I])),
    lpIniFileName);
end;

function ShowColorDialog(rgbResult : Integer; Owner : HWND): Integer; stdcall;
begin
  cc.lStructSize  := sizeof(TChooseColor);
  cc.hwndOwner    := Owner;
  cc.lpCustColors := @acrCustClr;
  cc.Flags        := CC_FULLOPEN or CC_RGBINIT;
  cc.rgbResult    := rgbResult;
  if ChooseColor(cc) then Result := cc.rgbResult
                     else Result := rgbResult;
end;

exports
  LoadCustomColors name 'LoadCustomColors',
  SaveCustomColors name 'SaveCustomColors',
  ShowColorDialog  name 'ShowColorDialog';

begin
end.
