object FVerifyCode: TFVerifyCode
  Left = 0
  Top = 0
  Caption = 'FVerifyCode'
  ClientHeight = 121
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 257
    Height = 121
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 251
    ExplicitHeight = 115
    object cxButton1: TcxButton
      Left = 12
      Top = 64
      Width = 98
      Height = 45
      Caption = 'Enviar Codigo'
      TabOrder = 1
    end
    object cxTextEdit1: TcxTextEdit
      Left = 12
      Top = 12
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Text = 'Ingrese el codigo '
      Width = 233
    end
    object cxButton2: TcxButton
      Left = 147
      Top = 64
      Width = 98
      Height = 45
      Caption = 'Verfificar'
      TabOrder = 2
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      Control = cxTextEdit1
      ControlOptions.OriginalHeight = 45
      ControlOptions.OriginalWidth = 233
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 45
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl2Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
    end
  end
end
