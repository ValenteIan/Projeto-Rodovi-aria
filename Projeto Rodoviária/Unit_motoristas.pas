unit Unit_motoristas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  Tform_motoristas = class(TForm)
    dbgrid_motoristas: TDBGrid;
    ds_motoristas: TDataSource;
    btn_fechar: TBitBtn;
    adoquery_motoristas: TADOQuery;
    procedure btn_fecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_motoristas: Tform_motoristas;

implementation

uses Unit_menu;

{$R *.dfm}

procedure Tform_motoristas.btn_fecharClick(Sender: TObject);
begin
Close;
end;

procedure Tform_motoristas.FormShow(Sender: TObject);
begin
adoquery_motoristas.Open;
end;

procedure Tform_motoristas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
adoquery_motoristas.Close;
end;

end.
