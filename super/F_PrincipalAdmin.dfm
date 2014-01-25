object FPrincipalAdmin: TFPrincipalAdmin
  Left = 0
  Top = 0
  Caption = 'FPrincipalAdmin'
  ClientHeight = 485
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 176
    Top = 336
    Width = 41
    Height = 13
    Caption = 'Usuarios'
  end
  object Garantias: TPageControl
    Left = 8
    Top = 2
    Width = 645
    Height = 312
    ActivePage = TabSheet1
    TabOrder = 0
    OnChange = GarantiasChange
    object TabSheet1: TTabSheet
      Caption = 'Garantias'
      object DBGrid1: TDBGrid
        Left = 3
        Top = 24
        Width = 631
        Height = 169
        DataSource = DSGarantias
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Sucursal'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recibido por'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Marca'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modelo'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titular'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observaciones'
            Width = 154
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Reparaciones'
      ImageIndex = 1
    end
  end
  object ZQGarantias: TZQuery
    Connection = ZConexion
    Params = <>
    Left = 408
    Top = 176
  end
  object DSGarantias: TDataSource
    DataSet = ZQGarantias
    Left = 480
    Top = 168
  end
  object ZConexion: TZConnection
    Catalog = 'chapulhuacan'
    Protocol = 'mysql-5'
    HostName = 'localhost'
    Database = 'chapulhuacan'
    User = 'root'
    Password = 'toor'
    Left = 576
    Top = 224
  end
  object MainMenu1: TMainMenu
    Left = 544
    Top = 336
    object Catalogos1: TMenuItem
      Caption = 'Catalogos'
      object Clientesgarantia1: TMenuItem
        Caption = 'Clientes garantia'
        OnClick = Clientesgarantia1Click
      end
      object Clientesreparacion1: TMenuItem
        Caption = 'Clientes reparacion'
      end
      object Usuarios1: TMenuItem
        Caption = 'Empleados'
        OnClick = Usuarios1Click
      end
      object Inventario1: TMenuItem
        Caption = 'Celulares en inventario'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Equiposengarantia1: TMenuItem
        Caption = 'Equipos en garantia'
      end
      object Equiposenreparacin1: TMenuItem
        Caption = 'Equipos en reparaci'#243'n'
      end
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
    end
  end
end
