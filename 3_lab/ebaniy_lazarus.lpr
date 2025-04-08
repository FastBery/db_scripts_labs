procedure TForm1.FormCreate(Sender: TObject);
var
  TS: TStringList;
  i: Integer;
  s: Integer;
begin
  TS:=TStringList.Create;
  TS.LoadFromFile('C:\Users\test.txt');
  s:=0;
  for i:=0 to TS.Count-1 do
  begin
    s:=s+StrToInt(trim(TS[i]));
  end;
  Label1.Caption:=('Сумма чисел равна: ' + IntToStr(s));
end;
