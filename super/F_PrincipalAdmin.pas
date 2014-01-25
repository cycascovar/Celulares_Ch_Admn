unit F_PrincipalAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, ZAbstractConnection, ZConnection,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus;

type
  TFPrincipalAdmin = class(TForm)
    ZQGarantias: TZQuery;
    DSGarantias: TDataSource;
    ZConexion: TZConnection;
    Label5: TLabel;
    MainMenu1: TMainMenu;
    Catalogos1: TMenuItem;
    Clientesgarantia1: TMenuItem;
    Clientesreparacion1: TMenuItem;
    Salir1: TMenuItem;
    Usuarios1: TMenuItem;
    Inventario1: TMenuItem;
    N1: TMenuItem;
    Equiposengarantia1: TMenuItem;
    Equiposenreparacin1: TMenuItem;
    Garantias: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    procedure FormShow(Sender: TObject);
    procedure GarantiasChange(Sender: TObject);
    procedure Clientesgarantia1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipalAdmin: TFPrincipalAdmin;

implementation
uses
    F_Usuarios, CClientesGarantia;


{$R *.dfm}

procedure TFPrincipalAdmin.Clientesgarantia1Click(Sender: TObject);
begin
    C_ClientesGarantia.Enabled := false;
    C_ClientesGarantia := TC_ClientesGarantia.Create(self);
    C_ClientesGarantia.ShowModal;
end;

procedure TFPrincipalAdmin.FormShow(Sender: TObject);
begin
//
    ZQGarantias.Close;
    ZQGarantias.SQL.Clear;
    ZQGarantias.SQL.Add('SELECT sucursal, empleado AS "Recibido por", marca_equipo AS Marca, nombre_cliente AS Titular, observaciones');
    ZQGarantias.SQL.Add('FROM sucursal');
    ZQGarantias.SQL.Add('JOIN equipo_garantia ON equipo_garantia.idsucursal = sucursal.idsucursal');
    ZQGarantias.SQL.Add('JOIN cliente_garantia ON cliente_garantia.idequipo_garantia = equipo_garantia.idequipo_garantia');
    ZQGarantias.SQL.Add('JOIN empleado ON empleado.idempleado = equipo_garantia.idempleado');
    ZQGarantias.Open;
    DBGrid1.Update;
end;

procedure TFPrincipalAdmin.GarantiasChange(Sender: TObject);
begin
//
end;

procedure TFPrincipalAdmin.Usuarios1Click(Sender: TObject);
begin
    FUsuarios.Enabled := false;
    FUsuarios := TFUsuarios.Create(self);
    FUsuarios.ShowModal;
end;

end.
