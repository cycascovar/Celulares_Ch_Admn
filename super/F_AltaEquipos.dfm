object FAltaEquipo: TFAltaEquipo
  Left = 0
  Top = 0
  Caption = 'FAltaEquipo'
  ClientHeight = 360
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 450
    Height = 13
    Caption = 
      'Este formulario deberia de contener textedits y botones para dar' +
      ' de alta equipos por sucursal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object Label3: TLabel
    Left = 16
    Top = 272
    Width = 155
    Height = 13
    Caption = 'Los equipos van para la sucursal'
  end
  object Label4: TLabel
    Left = 16
    Top = 96
    Width = 38
    Height = 13
    Caption = 'Modelo:'
  end
  object Label5: TLabel
    Left = 16
    Top = 136
    Width = 24
    Height = 13
    Caption = 'Imei:'
  end
  object Label6: TLabel
    Left = 16
    Top = 168
    Width = 33
    Height = 13
    Caption = 'ICCID:'
  end
  object Label7: TLabel
    Left = 16
    Top = 208
    Width = 75
    Height = 13
    Caption = 'N'#250'mero celular:'
  end
  object Label8: TLabel
    Left = 16
    Top = 238
    Width = 29
    Height = 13
    Caption = 'Precio'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 177
    Top = 269
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 64
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 64
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 64
    Top = 133
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 64
    Top = 165
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 120
    Top = 205
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 16
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Dar de alta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Button2: TButton
    Left = 247
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Limpiar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 53
    Top = 235
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 344
    Top = 61
    Width = 497
    Height = 284
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Marca'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Modelo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMEI'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICCID'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Visible = True
      end>
  end
end
