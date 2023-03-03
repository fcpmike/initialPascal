program initialPascal;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, UniqueInstanceRaw, initialPascal.Controller.Main
  { you can add units after this };

{$R *.res}

begin
  Application.Scaled:=True;
  if not InstanceRunning('initialPascal') then
  begin
    RequireDerivedFormResource:=True;
    TControllerMain.New.Main.&End.ShowView;
  end;
end.

