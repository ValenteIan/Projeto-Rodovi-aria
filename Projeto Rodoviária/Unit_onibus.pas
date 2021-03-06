unit Unit_onibus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  Tform_onibus = class(TForm)
    btn_fechar: TBitBtn;
    ds_onibus: TDataSource;
    dbgrid_onibus: TDBGrid;
    adoquery_onibus: TADOQuery;
    procedure btn_fecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_onibus: Tform_onibus;

implementation

uses Unit_menu;

{$R *.dfm}

procedure Tform_onibus.btn_fecharClick(Sender: TObject);
begin
Close;
end;

procedure Tform_onibus.FormShow(Sender: TObject);
begin
adoquery_onibus.Open;
end;

procedure Tform_onibus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
adoquery_onibus.Close;
end;

end.
