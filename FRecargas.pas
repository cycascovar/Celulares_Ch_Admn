unit FRecargas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, StdCtrls, Buttons, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, pBarcode, pCode128, ComCtrls, pEAN128;

type
  TF_Recargas = class(TForm)
    codigo: TEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    codigogenerado: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    celulares: TMemo;
    Button3: TButton;
    ZQRecargas: TZQuery;
    DSRecargas: TDataSource;
    StatusBar1: TStatusBar;
    Barcode_EAN1281: TBarcode_EAN128;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure codigoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Recargas: TF_Recargas;

implementation
uses F_RecargasAlta;
{$R *.dfm}

procedure TF_Recargas.BitBtn1Click(Sender: TObject);
begin
    F_Recargas.Close;
end;

procedure TF_Recargas.BitBtn2Click(Sender: TObject);
begin
    FRecargasAlta.Enabled := false;
    FRecargasAlta := TFRecargasAlta.Create(self);
    FRecargasAlta.ShowModal;
end;

procedure TF_Recargas.Button1Click(Sender: TObject);
begin
    //aqui algoritmo para generar los codigos
end;

procedure TF_Recargas.codigoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    ZQuery1.Filtered := false;
    ZQuery1.Filter := 'Codigo LIKE'+QuotedStr('*'+codigo.Text+'*');
    ZQuery1.Filtered := true;
end;

end.
