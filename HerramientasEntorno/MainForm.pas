unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Rtti, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Layouts, FMX.Grid, FMX.StdCtrls, FMX.DateTimeCtrls;

type
  TMyForm = class(TForm)
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    procedure CheckBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyForm: TMyForm;

implementation

{$R *.fmx}

uses DataModule;

procedure TMyForm.CheckBox1Change(Sender: TObject);
begin
  with MyDataModule.CustomerTable do
  begin
    ParamByName('RefDate').AsDate := DateEdit1.Date;
    Active := CheckBox1.IsChecked;
  end;
end;

end.
