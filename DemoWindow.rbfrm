#tag Window
Begin Window DemoWindow
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   ""
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   640
   Placement       =   1
   Resizeable      =   True
   Title           =   "cURLClient Demo"
   Visible         =   True
   Width           =   600
   Begin TabPanel TabPanel2
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   282
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   4
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "Information\rOutput\rFeatures\rCommand Line\rCookies"
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   119
      Underline       =   ""
      Value           =   2
      Visible         =   True
      Width           =   596
      Begin Listbox Protocols
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   ""
         Border          =   True
         ColumnCount     =   1
         ColumnsResizable=   ""
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   80
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         InitialValue    =   "Supported Protocols"
         Italic          =   ""
         Left            =   11
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   ""
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   149
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   200
         _ScrollWidth    =   -1
      End
      Begin Listbox Features
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   ""
         Border          =   True
         ColumnCount     =   1
         ColumnsResizable=   ""
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   80
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         InitialValue    =   "Available Features"
         Italic          =   ""
         Left            =   11
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   ""
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   237
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   200
         _ScrollWidth    =   -1
      End
      Begin Listbox Headers
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   ""
         Border          =   True
         ColumnCount     =   2
         ColumnsResizable=   True
         ColumnWidths    =   ""
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   130
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         InitialValue    =   "Header name	Header value"
         Italic          =   ""
         Left            =   13
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   ""
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   150
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   578
         _ScrollWidth    =   -1
      End
      Begin Listbox CurlInfo
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   ""
         Border          =   True
         ColumnCount     =   2
         ColumnsResizable=   True
         ColumnWidths    =   "40%"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   155
         HelpTag         =   ""
         Hierarchical    =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         InitialValue    =   "Info Name	Last request Value"
         Italic          =   ""
         Left            =   13
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   ""
         Scope           =   0
         ScrollbarHorizontal=   True
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   148
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   578
         _ScrollWidth    =   -1
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   11
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   3
         Text            =   "CA List:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   351
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   94
      End
      Begin Label Label2
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   11
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   3
         Text            =   "Client certificate:"
         TextAlign       =   2
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   373
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   94
      End
      Begin Label CAListFile
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   110
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   ""
         Scope           =   0
         Selectable      =   True
         TabIndex        =   4
         TabPanelIndex   =   3
         Text            =   "Not specified"
         TextAlign       =   0
         TextColor       =   &h00464646
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   352
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   411
      End
      Begin PushButton CASet
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Set"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   525
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   351
         Underline       =   ""
         Visible         =   True
         Width           =   34
      End
      Begin PushButton CAUnset
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Unset"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   558
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   351
         Underline       =   ""
         Visible         =   True
         Width           =   34
      End
      Begin Label ClientCert
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   110
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   ""
         Scope           =   0
         Selectable      =   True
         TabIndex        =   7
         TabPanelIndex   =   3
         Text            =   "Not specified"
         TextAlign       =   0
         TextColor       =   &h00464646
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   374
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   411
      End
      Begin PushButton ClientCertSet
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Set"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   525
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   373
         Underline       =   ""
         Visible         =   True
         Width           =   34
      End
      Begin PushButton ClientCertUnset
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Unset"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   558
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   9
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   373
         Underline       =   ""
         Visible         =   True
         Width           =   34
      End
      Begin Label Label6
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   224
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   22
         TabPanelIndex   =   3
         Text            =   "Interface:"
         TextAlign       =   0
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   242
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   73
      End
      Begin ComboBox nic
         AutoComplete    =   False
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         InitialValue    =   ""
         Italic          =   False
         Left            =   302
         ListIndex       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   242
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   174
      End
      Begin CheckBox Verbose
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Verbose"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   356
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   21
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   210
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   120
      End
      Begin CheckBox Secure
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Validate SSL"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   356
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   20
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   190
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   120
      End
      Begin CheckBox HTTPPreserveMethod
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Preserve method"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   356
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   19
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   170
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   120
      End
      Begin CheckBox HTTPCompress
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "gzip,deflate"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   356
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   18
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   150
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   120
      End
      Begin CheckBox FollowRedirects
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Follow redirects"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   224
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   17
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   210
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   120
      End
      Begin CheckBox Autoreferer
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "AutoReferrer"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   224
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   16
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   190
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   120
      End
      Begin CheckBox AutoDisconnect
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Autodisconnect"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   224
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   15
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   170
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   120
      End
      Begin CheckBox FailOnError
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Fail on error"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   224
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   14
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   150
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   120
      End
      Begin Label Label7
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   224
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   23
         TabPanelIndex   =   3
         Text            =   "Proxy server:"
         TextAlign       =   0
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   267
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   73
      End
      Begin TextField ProxyServer
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   302
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Mask            =   ""
         Password        =   ""
         ReadOnly        =   ""
         Scope           =   0
         TabIndex        =   24
         TabPanelIndex   =   3
         TabStop         =   True
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   267
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   174
      End
      Begin Label Label8
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   224
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   25
         TabPanelIndex   =   3
         Text            =   "Proxy type:"
         TextAlign       =   0
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   290
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   73
      End
      Begin ComboBox nic1
         AutoComplete    =   False
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         InitialValue    =   "Socks 4\r\nSocks 4A\r\nSocks 5\r\nSocks 5A\r\nHTTP\r\nHTTP 1.0"
         Italic          =   False
         Left            =   302
         ListIndex       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   26
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   290
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   174
      End
      Begin Label Label9
         AutoDeactivate  =   True
         Bold            =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   20
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Multiline       =   ""
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   4
         Text            =   "Enter a curl command line:"
         TextAlign       =   0
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   148
         Transparent     =   True
         Underline       =   ""
         Visible         =   True
         Width           =   560
      End
      Begin PushButton PushButton10
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Parse"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   268
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   371
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
      Begin TextArea CmdLine
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   195
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   20
         LimitText       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   ""
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         Text            =   "-H ""X-Header: TestValue1"" --url ""http://192.168.1.10:8080"""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   172
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   560
      End
      Begin CheckBox NoProgress
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Progress Event"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   480
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   27
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   149
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   111
      End
      Begin Canvas Canvas1
         AcceptFocus     =   ""
         AcceptTabs      =   ""
         AutoDeactivate  =   True
         Backdrop        =   ""
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   5
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Left            =   137
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Top             =   281
         UseFocusRing    =   True
         Visible         =   True
         Width           =   330
      End
      Begin TextArea DownloadOutput
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   105
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   13
         LimitText       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   ""
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   288
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   578
      End
      Begin Listbox Debug
         AutoDeactivate  =   True
         AutoHideScrollbars=   True
         Bold            =   ""
         Border          =   True
         ColumnCount     =   2
         ColumnsResizable=   True
         ColumnWidths    =   "20%"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         Enabled         =   True
         EnableDrag      =   ""
         EnableDragReorder=   ""
         GridLinesHorizontal=   0
         GridLinesVertical=   0
         HasHeading      =   True
         HeadingIndex    =   -1
         Height          =   83
         HelpTag         =   ""
         Hierarchical    =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         InitialValue    =   "Type	Message"
         Italic          =   ""
         Left            =   13
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   ""
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollBarVertical=   True
         SelectionType   =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   310
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   578
         _ScrollWidth    =   -1
      End
      Begin Canvas Canvas2
         AcceptFocus     =   ""
         AcceptTabs      =   ""
         AutoDeactivate  =   True
         Backdrop        =   ""
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   5
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Left            =   137
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   304
         UseFocusRing    =   True
         Visible         =   True
         Width           =   330
      End
      Begin GroupBox CookieControl
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Cookielist"
         Enabled         =   False
         Height          =   228
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   8
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   5
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   168
         Underline       =   ""
         Visible         =   True
         Width           =   585
         Begin Listbox CookieList
            AutoDeactivate  =   True
            AutoHideScrollbars=   True
            Bold            =   ""
            Border          =   True
            ColumnCount     =   6
            ColumnsResizable=   True
            ColumnWidths    =   "25%,25%,20%,10%,10%,10%"
            DataField       =   ""
            DataSource      =   ""
            DefaultRowHeight=   -1
            Enabled         =   True
            EnableDrag      =   ""
            EnableDragReorder=   ""
            GridLinesHorizontal=   0
            GridLinesVertical=   0
            HasHeading      =   True
            HeadingIndex    =   -1
            Height          =   128
            HelpTag         =   ""
            Hierarchical    =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            InitialValue    =   "Name	Value	Domain	Expires	Path	HTTPOnly"
            Italic          =   ""
            Left            =   20
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   ""
            Scope           =   0
            ScrollbarHorizontal=   ""
            ScrollBarVertical=   True
            SelectionType   =   0
            TabIndex        =   0
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   189
            Underline       =   ""
            UseFocusRing    =   True
            Visible         =   True
            Width           =   564
            _ScrollWidth    =   -1
         End
         Begin TextField CookieSearchName
            AcceptTabs      =   ""
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &hFFFFFF
            Bold            =   ""
            Border          =   True
            CueText         =   "Cookie Name"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   25
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Mask            =   ""
            Password        =   ""
            ReadOnly        =   ""
            Scope           =   0
            TabIndex        =   1
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   323
            Underline       =   ""
            UseFocusRing    =   True
            Visible         =   True
            Width           =   143
         End
         Begin PushButton CookieLookupButton
            AutoDeactivate  =   True
            Bold            =   ""
            ButtonStyle     =   0
            Cancel          =   ""
            Caption         =   "Lookup"
            Default         =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   311
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   3
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   323
            Underline       =   ""
            Visible         =   True
            Width           =   70
         End
         Begin TextField CookieSearchDomain
            AcceptTabs      =   ""
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &hFFFFFF
            Bold            =   ""
            Border          =   True
            CueText         =   "Cookie Domain"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   171
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Password        =   ""
            ReadOnly        =   ""
            Scope           =   0
            TabIndex        =   2
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   323
            Underline       =   ""
            UseFocusRing    =   True
            Visible         =   True
            Width           =   136
         End
         Begin CheckBox StrictLookup
            AutoDeactivate  =   True
            Bold            =   ""
            Caption         =   "Strict"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   385
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            State           =   1
            TabIndex        =   4
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   323
            Underline       =   ""
            Value           =   True
            Visible         =   True
            Width           =   68
         End
         Begin PushButton CookieJarUnset
            AutoDeactivate  =   True
            Bold            =   ""
            ButtonStyle     =   0
            Cancel          =   ""
            Caption         =   "Unset"
            Default         =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   393
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   8
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   348
            Underline       =   ""
            Visible         =   True
            Width           =   34
         End
         Begin TextField CookieJar
            AcceptTabs      =   ""
            Alignment       =   0
            AutoDeactivate  =   True
            AutomaticallyCheckSpelling=   False
            BackColor       =   &hFFFFFF
            Bold            =   ""
            Border          =   True
            CueText         =   "Not specified"
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Format          =   ""
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   99
            LimitText       =   0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            Mask            =   ""
            Password        =   ""
            ReadOnly        =   True
            Scope           =   0
            TabIndex        =   6
            TabPanelIndex   =   5
            TabStop         =   True
            Text            =   ""
            TextColor       =   &h00464646
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   349
            Underline       =   ""
            UseFocusRing    =   True
            Visible         =   True
            Width           =   259
         End
         Begin PushButton CookieJarSet
            AutoDeactivate  =   True
            Bold            =   ""
            ButtonStyle     =   0
            Cancel          =   ""
            Caption         =   "Set"
            Default         =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   360
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   7
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   348
            Underline       =   ""
            Visible         =   True
            Width           =   34
         End
         Begin Label Label5
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   25
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Multiline       =   ""
            Scope           =   0
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   5
            Text            =   "Cookiejar:"
            TextAlign       =   2
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   348
            Transparent     =   True
            Underline       =   ""
            Visible         =   True
            Width           =   69
         End
         Begin PushButton NewCookieSessionButton
            AutoDeactivate  =   True
            Bold            =   ""
            ButtonStyle     =   0
            Cancel          =   ""
            Caption         =   "New Session"
            Default         =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   465
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   13
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   369
            Underline       =   ""
            Visible         =   True
            Width           =   115
         End
         Begin PushButton DeleteCookiesButton
            AutoDeactivate  =   True
            Bold            =   ""
            ButtonStyle     =   0
            Cancel          =   ""
            Caption         =   "Delete Session"
            Default         =   ""
            Enabled         =   True
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   465
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   12
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   347
            Underline       =   ""
            Visible         =   True
            Width           =   115
         End
         Begin PushButton FlushCookiesButton
            AutoDeactivate  =   True
            Bold            =   ""
            ButtonStyle     =   0
            Cancel          =   ""
            Caption         =   "Flush Changes"
            Default         =   ""
            Enabled         =   False
            Height          =   22
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   465
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            Scope           =   0
            TabIndex        =   11
            TabPanelIndex   =   5
            TabStop         =   True
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   323
            Underline       =   ""
            Visible         =   True
            Width           =   115
         End
         Begin Label CookiesTotal
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   13
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Multiline       =   ""
            Scope           =   0
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   5
            Text            =   "Cookies known: 0"
            TextAlign       =   0
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   378
            Transparent     =   True
            Underline       =   ""
            Visible         =   True
            Width           =   143
         End
         Begin Label CookiesShown
            AutoDeactivate  =   True
            Bold            =   ""
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            Height          =   20
            HelpTag         =   ""
            Index           =   -2147483648
            InitialParent   =   "CookieControl"
            Italic          =   ""
            Left            =   171
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   False
            Multiline       =   ""
            Scope           =   0
            Selectable      =   False
            TabIndex        =   10
            TabPanelIndex   =   5
            Text            =   "Cookies shown: 0"
            TextAlign       =   0
            TextColor       =   &h000000
            TextFont        =   "System"
            TextSize        =   0
            TextUnit        =   0
            Top             =   378
            Transparent     =   True
            Underline       =   ""
            Visible         =   True
            Width           =   143
         End
      End
      Begin CheckBox UseCookies
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "Enable cookies"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         Italic          =   ""
         Left            =   14
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   0
         TabPanelIndex   =   5
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   146
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   135
      End
      Begin ComboBox SSLVer
         AutoComplete    =   False
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         InitialValue    =   "Default SSL/TLS\r\nTLSv1\r\nSSLv2\r\nSSLv3\r\nTLSv1.0\r\nTLSv1.1\r\nTLSv1.2"
         Italic          =   False
         Left            =   480
         ListIndex       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   15
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   200
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   100
      End
      Begin ComboBox HTTPVer
         AutoComplete    =   False
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel2"
         InitialValue    =   "HTTP/1.1\r\nHTTP/1.0\r\nHTTP/2"
         Italic          =   False
         Left            =   480
         ListIndex       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   28
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   169
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   100
      End
   End
   Begin cURLClient Client
      Height          =   32
      Index           =   -2147483648
      IsSSLCertOK     =   ""
      Left            =   7
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   437
      Width           =   32
   End
   Begin TextField TextField1
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &hFFFFFF
      Bold            =   ""
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   ""
      Left            =   258
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "https://www.google.com/"
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   12
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   313
   End
   Begin Thread GetThread
      Height          =   32
      Index           =   -2147483648
      Left            =   43
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
      Top             =   437
      Width           =   32
   End
   Begin Thread PutThread
      Height          =   32
      Index           =   -2147483648
      Left            =   80
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
      Top             =   437
      Width           =   32
   End
   Begin Thread PostThread
      Height          =   32
      Index           =   -2147483648
      Left            =   117
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
      Top             =   437
      Width           =   32
   End
   Begin ProgressBar ProgressUpload
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   7
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   258
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   35
      Value           =   0
      Visible         =   True
      Width           =   335
   End
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   85
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   4
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "GET\rHEAD\rPUT\rPOST"
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      Value           =   0
      Visible         =   True
      Width           =   246
      Begin PushButton PushButton1
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Get"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   9
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   33
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
      Begin PushButton PushButton2
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Get Threaded"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   101
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   33
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
      Begin CheckBox CheckBox1
         AutoDeactivate  =   True
         Bold            =   ""
         Caption         =   "GET uses stream"
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   11
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         State           =   0
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   58
         Underline       =   ""
         Value           =   False
         Visible         =   True
         Width           =   172
      End
      Begin PushButton PushButton3
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Put"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   11
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   31
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
      Begin PushButton PushButton4
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Put Threaded"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   103
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   3
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   31
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
      Begin PushButton PushButton5
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Post"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   11
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   31
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
      Begin PushButton PushButton6
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Post Threaded"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   103
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   31
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
      Begin PushButton PushButton7
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Set Form Data"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   11
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   4
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   58
         Underline       =   ""
         Visible         =   True
         Width           =   91
      End
      Begin PushButton PushButton8
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Head Threaded"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   103
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   31
         Underline       =   ""
         Visible         =   True
         Width           =   104
      End
      Begin PushButton PushButton9
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Head"
         Default         =   ""
         Enabled         =   True
         Height          =   22
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   11
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0
         TextUnit        =   0
         Top             =   31
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
   End
   Begin ProgressBar ProgressDownload
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   7
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   258
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   47
      Value           =   0
      Visible         =   True
      Width           =   335
   End
   Begin TextArea ErrorBuffer
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &hFFFFFF
      Bold            =   ""
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   38
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   ""
      Left            =   259
      LimitText       =   0
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &h000000
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   59
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   False
      Width           =   332
   End
   Begin Timer GUITimer
      Height          =   32
      Index           =   -2147483648
      Left            =   190
      LockedInPosition=   False
      Mode            =   0
      Period          =   1
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   437
      Width           =   32
   End
   Begin Timer ProgressTimer
      Height          =   32
      Index           =   -2147483648
      Left            =   224
      LockedInPosition=   False
      Mode            =   1
      Period          =   10
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   437
      Width           =   32
   End
   Begin Thread HeadThread
      Height          =   32
      Index           =   -2147483648
      Left            =   155
      LockedInPosition=   False
      Priority        =   5
      Scope           =   0
      StackSize       =   0
      TabPanelIndex   =   0
      Top             =   437
      Width           =   32
   End
   Begin PushButton PauseButton
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "Pause"
      Default         =   ""
      Enabled         =   False
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   9
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   85
      Underline       =   ""
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox ShowDataMsgs
      AutoDeactivate  =   True
      Bold            =   ""
      Caption         =   "Show data messages"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   101
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      State           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   85
      Underline       =   ""
      Value           =   False
      Visible         =   True
      Width           =   145
   End
   Begin PushButton AbortButton
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   0
      Cancel          =   ""
      Caption         =   "X"
      Default         =   ""
      Enabled         =   False
      Height          =   22
      HelpTag         =   "Abort"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   571
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      TextUnit        =   0
      Top             =   12
      Underline       =   ""
      Visible         =   True
      Width           =   24
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Me.Title = Me.Title + " - " + libcURL.Version.Name
		  Client.EasyItem.UseErrorBuffer = True
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub DoProgress()
		  ProgressDownload.Value = mdlnow * 100 / mdlTotal
		  ProgressUpload.Value = mulnow * 100 / mulTotal
		  
		  Do Until UBound(dbgmsgs) = -1
		    Dim p As Pair = dbgmsgs.Pop
		    Dim MessageType As libcURL.curl_infotype = p.Left
		    Dim data As String = p.Right
		    Select Case MessageType
		    Case libcURL.curl_infotype.data_in, libcURL.curl_infotype.data_out, libcURL.curl_infotype.ssl_in, libcURL.curl_infotype.ssl_out
		      If ShowDataMsgs.Value Then
		        data = Format(data.LenB, "###,###,###,###,###0") + " bytes"
		      Else
		        Continue
		      End If
		    End Select
		    
		    
		    Debug.AddRow(libcURL.curl_infoname(MessageType), data.Trim)
		    Debug.ScrollPosition = Debug.ListCount
		  Loop
		  ShowErrorBuffer()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FormatBytes(bytes As UInt64, precision As Integer = 2) As String
		  'Converts raw byte counts into SI formatted strings. 1KB = 1024 bytes.
		  'Optionally pass an integer representing the number of decimal places to return. The default is two decimal places. You may specify
		  'between 0 and 16 decimal places. Specifying more than 16 will append extra zeros to make up the length. Passing 0
		  'shows no decimal places and no decimal point.
		  
		  Const kilo = 1024
		  Static mega As UInt64 = kilo * kilo
		  Static giga As UInt64 = kilo * mega
		  Static tera As UInt64 = kilo * giga
		  Static peta As UInt64 = kilo * tera
		  Static exab As UInt64 = kilo * peta
		  
		  Dim suffix, precisionZeros As String
		  Dim strBytes As Double
		  
		  
		  If bytes < kilo Then
		    strbytes = bytes
		    If bytes = 1 Then suffix = " byte" Else suffix = " bytes"
		    precision = 0
		  ElseIf bytes >= kilo And bytes < mega Then
		    strbytes = bytes / kilo
		    suffix = "KB"
		  ElseIf bytes >= mega And bytes < giga Then
		    strbytes = bytes / mega
		    suffix = "MB"
		  ElseIf bytes >= giga And bytes < tera Then
		    strbytes = bytes / giga
		    suffix = "GB"
		  ElseIf bytes >= tera And bytes < peta Then
		    strbytes = bytes / tera
		    suffix = "TB"
		  ElseIf bytes >= tera And bytes < exab Then
		    strbytes = bytes / peta
		    suffix = "PB"
		  ElseIf bytes >= exab Then
		    strbytes = bytes / exab
		    suffix = "EB"
		  End If
		  
		  
		  While precisionZeros.Len < precision
		    precisionZeros = precisionZeros + "0"
		  Wend
		  If precisionZeros.Trim <> "" Then precisionZeros = "." + precisionZeros
		  
		  Return Format(strBytes, "#,###0" + precisionZeros) + suffix
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Populate()
		  mLockUI = True
		  PauseButton.Enabled = False
		  PauseButton.Caption = "Pause"
		  AbortButton.Enabled = False
		  Dim cURLCode As Integer = Client.LastError
		  If Not CheckBox1.Value Then
		    DownloadOutput.Text = Client.GetDownloadedData()
		  Else
		    DownloadOutput.Text = ""
		  End If
		  Dim BytesRead As Integer = Client.GetInfo(libcURL.Info.SIZE_DOWNLOAD).Int32Value
		  Dim BytesWritten As Integer = Client.GetInfo(libcURL.Info.SIZE_UPLOAD).Int32Value
		  CurlInfo.DeleteAllRows
		  Headers.DeleteAllRows
		  ShowErrorBuffer()
		  If cURLCode <> 0 Then
		    Dim err As String = libcURL.Errors.Name(cURLCode) + "(" + Str(cURLCode) + "): " + libcURL.FormatError(cURLCode)
		    Call MsgBox(err, 16, "libcURL error")
		  Else
		    MsgBox("Transfer completed (" + Str(BytesWritten) + " bytes written, " + Str(BytesRead) +" bytes read) with status: " + Str(Client.GetStatusCode))
		  End If
		  CurlInfo.AddRow("EFFECTIVE_URL", Client.GetInfo(libcURL.Info.EFFECTIVE_URL))
		  If Client.GetInfo(libcURL.Info.REDIRECT_COUNT).Int32Value > 0 Then
		    CurlInfo.AddRow("REDIRECT_COUNT", Str(Client.GetInfo(libcURL.Info.REDIRECT_COUNT).Int32Value))
		  End If
		  If Client.GetInfo(libcURL.Info.REDIRECT_URL) <> "" Then
		    CurlInfo.AddRow("REDIRECT_URL", Client.GetInfo(libcURL.Info.REDIRECT_URL))
		  End If
		  If Client.GetInfo(libcURL.Info.FTP_ENTRY_PATH).StringValue.Trim <> "" Then
		    CurlInfo.AddRow("FTP_ENTRY_PATH", Client.GetInfo(libcURL.Info.FTP_ENTRY_PATH))
		  End If
		  CurlInfo.AddRow("RESPONSE_CODE", Str(Client.GetInfo(libcURL.Info.RESPONSE_CODE).Int32Value))
		  CurlInfo.AddRow("NUM_CONNECTS", Str(Client.GetInfo(libcURL.Info.NUM_CONNECTS).Int32Value))
		  CurlInfo.AddRow("OS_ERRNO", Str(Client.GetInfo(libcURL.Info.OS_ERRNO).Int32Value))
		  CurlInfo.AddRow("SPEED_DOWNLOAD", FormatBytes(Client.GetInfo(libcURL.Info.SPEED_DOWNLOAD).DoubleValue) + "/sec")
		  CurlInfo.AddRow("SPEED_UPLOAD", FormatBytes(Client.GetInfo(libcURL.Info.SPEED_UPLOAD).DoubleValue) + "/sec")
		  CurlInfo.AddFolder("Time")
		  CurlInfo.AddFolder("Content")
		  CurlInfo.AddFolder("Sizes")
		  
		  If Client.GetInfo(libcURL.Info.FILETIME).Int32Value <> -1 Then
		    Dim d As New Date(1970, 1, 1, 0, 0, 0, 0.0) 'UNIX epoch
		    d.TotalSeconds = d.TotalSeconds + Client.GetInfo(libcURL.Info.FILETIME).Int32Value
		    CurlInfo.AddRow("FILETIME", libcURL.ParseDate(d))
		  End If
		  Dim h As InternetHeaders = Client.GetResponseHeaders
		  If h <> Nil Then
		    For i As Integer = 0 To h.Count - 1
		      Headers.AddRow(h.Name(i), h.Value(i))
		    Next
		  End If
		  UpdateCookieList()
		  Select Case Client.EasyItem.HTTPVersion
		  Case Client.EasyItem.HTTP_VERSION_1_1
		    HTTPVer.ListIndex = 0
		  Case Client.EasyItem.HTTP_VERSION_1_0
		    HTTPVer.ListIndex = 1
		  Case Client.EasyItem.HTTP_VERSION_2_0
		    HTTPVer.ListIndex = 2
		  End Select
		  
		  Select Case Client.EasyItem.SSLVersion
		  Case libcURL.SSLVersion.Default
		    SSLVer.ListIndex = 0
		  Case libcURL.SSLVersion.TLSv1
		    SSLVer.ListIndex = 1
		  Case libcURL.SSLVersion.SSLv2
		    SSLVer.ListIndex = 2
		  Case libcURL.SSLVersion.SSLv3
		    SSLVer.ListIndex = 3
		  Case libcURL.SSLVersion.TLSv1_0
		    SSLVer.ListIndex = 4
		  Case libcURL.SSLVersion.TLSv1_1
		    SSLVer.ListIndex = 5
		  Case libcURL.SSLVersion.TLSv1_2
		    SSLVer.ListIndex = 6
		  End Select
		  
		Finally
		  mLockUI = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ShowErrorBuffer()
		  If Client.EasyItem.ErrorBuffer <> "" Then
		    ErrorBuffer.Text = Client.EasyItem.ErrorBuffer
		    ErrorBuffer.Visible = True
		  Else
		    ErrorBuffer.Visible = False
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateCookieList()
		  If Client.Cookies.Enabled Then
		    CookieList.DeleteAllRows
		    Dim i As Integer = Client.Cookies.Lookup(CookieSearchName.Text, CookieSearchDomain.Text, 0, StrictLookup.Value)
		    Do Until i <= -1
		      Dim expire As String
		      If Client.Cookies.Expiry(i) <> Nil Then expire = libcURL.ParseDate(Client.Cookies.Expiry(i))
		      CookieList.AddRow(Client.Cookies.Name(i), Client.Cookies.Value(i), Client.Cookies.Domain(i), expire, Client.Cookies.Path(i))
		      CookieList.CellType(CookieList.LastIndex, 5) = Listbox.TypeCheckbox
		      If Client.Cookies.HTTPOnly(i) Then
		        CookieList.CellState(CookieList.LastIndex, 5) = CheckBox.CheckedStates.Checked
		      Else
		        CookieList.CellState(CookieList.LastIndex, 5) = CheckBox.CheckedStates.Unchecked
		      End If
		      CookieList.RowTag(CookieList.LastIndex) = i
		      i = Client.Cookies.Lookup(CookieSearchName.Text, CookieSearchDomain.Text, i + 1, StrictLookup.Value)
		    Loop
		    CookiesTotal.Text = "Cookies known: " + Format(Client.Cookies.Count, "###,###,##0")
		    CookiesShown.Text = "Cookies shown: " + Format(CookieList.ListCount, "###,###,##0")
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private ClientCertItem As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private dbgmsgs() As Pair
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FormValue As Pair
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCookiesDirty As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mdlnow As Int64
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mdltotal As Int64
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLockUI As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPutTarget As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mulnow As Int64
	#tag EndProperty

	#tag Property, Flags = &h21
		Private multotal As Int64
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mURL As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ThreadStream As BinaryStream
	#tag EndProperty


#tag EndWindowCode

#tag Events Protocols
	#tag Event
		Sub Open()
		  Dim l() As String = libcURL.Version.Protocols
		  l.Sort
		  For i As Integer = 0 To UBound(l)
		    Me.AddRow(l(i))
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Features
	#tag Event
		Sub Open()
		  If libcURL.Version.SSL Then Me.AddRow("SSL/TLS security")
		  If libcURL.Version.HTTP2 Then Me.AddRow("HTTP 2.0")
		  If libcURL.Version.ASYNCHDNS Then Me.AddRow("Asynchronous DNS")
		  If libcURL.Version.IDN Then Me.AddRow("International Domain Names")
		  If libcURL.Version.IPV6 Then Me.AddRow("IPv6")
		  If libcURL.Version.LARGEFILE Then Me.AddRow("Files >2GB")
		  If libcURL.Version.LibZ.IsAvailable Then Me.AddRow("HTTP decompression")
		  If libcURL.Version.CONV Then Me.AddRow("Encoding conversion")
		  If libcURL.Version.DEBUG Then Me.AddRow("Debug capabilities")
		  If libcURL.Version.DEBUG Then Me.AddRow("Memory debug capabilities")
		  If libcURL.Version.GSSNEGOTIATE Then Me.AddRow("Negotiate auth")
		  If libcURL.Version.KERBEROS4 Then Me.AddRow("Kerberos 4")
		  If libcURL.Version.KERBEROS5 Then Me.AddRow("Kerberos 5")
		  If libcURL.Version.NTLM Then Me.AddRow("NTLM auth")
		  If libcURL.Version.SPNEGO Then Me.AddRow("SPNEGO auth")
		  If libcURL.Version.SSPI Then Me.AddRow("Microsoft SSPI")
		  If libcURL.Version.SSPI Then Me.AddRow("TLS-SRP")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CurlInfo
	#tag Event
		Sub ExpandRow(row As Integer)
		  Select Case Me.Cell(row, 0)
		  Case "Time"
		    CurlInfo.InsertRow(row + 1, "APPCONNECT_TIME", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = Format(Client.GetInfo(libcURL.Info.APPCONNECT_TIME).DoubleValue, "###,###,##0.0##")
		    
		    CurlInfo.InsertRow(row + 1, "CONNECT_TIME", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = Format(Client.GetInfo(libcURL.Info.CONNECT_TIME).DoubleValue, "###,###,##0.0##")
		    
		    CurlInfo.InsertRow(row + 1, "STARTTRANSFER_TIME", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = Format(Client.GetInfo(libcURL.Info.STARTTRANSFER_TIME).DoubleValue, "###,###,##0.0##")
		    
		    CurlInfo.InsertRow(row + 1, "TOTAL_TIME", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = Format(Client.GetInfo(libcURL.Info.TOTAL_TIME).DoubleValue, "###,###,##0.0##")
		    
		    CurlInfo.InsertRow(row + 1, "NAMELOOKUP_TIME", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = Format(Client.GetInfo(libcURL.Info.NAMELOOKUP_TIME).DoubleValue, "###,###,##0.0##")
		    
		    CurlInfo.InsertRow(row + 1, "PRETRANSFER_TIME", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = Format(Client.GetInfo(libcURL.Info.PRETRANSFER_TIME).DoubleValue, "###,###,##0.0##")
		    
		    CurlInfo.InsertRow(row + 1, "REDIRECT_TIME", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = Format(Client.GetInfo(libcURL.Info.REDIRECT_TIME).DoubleValue, "###,###,##0.0##")
		    
		  Case "Content"
		    CurlInfo.InsertRow(row + 1, "CONTENT_LENGTH_DOWNLOAD", 1)
		    If Client.GetInfo(libcURL.Info.CONTENT_LENGTH_DOWNLOAD).DoubleValue > 0 Then
		      CurlInfo.Cell(CurlInfo.LastIndex, 1) = FormatBytes(Client.GetInfo(libcURL.Info.CONTENT_LENGTH_DOWNLOAD).DoubleValue)
		    Else
		      CurlInfo.Cell(CurlInfo.LastIndex, 1) = ""
		    End If
		    
		    CurlInfo.InsertRow(row + 1, "CONTENT_LENGTH_UPLOAD", 1)
		    If Client.GetInfo(libcURL.Info.CONTENT_LENGTH_UPLOAD).DoubleValue > 0 Then
		      CurlInfo.Cell(CurlInfo.LastIndex, 1) = FormatBytes(Client.GetInfo(libcURL.Info.CONTENT_LENGTH_UPLOAD).DoubleValue)
		    Else
		      CurlInfo.Cell(CurlInfo.LastIndex, 1) = ""
		    End If
		    
		    CurlInfo.InsertRow(row + 1, "CONTENT_TYPE", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = Client.GetInfo(libcURL.Info.CONTENT_TYPE).StringValue
		    
		  Case "Sizes"
		    CurlInfo.InsertRow(row + 1, "HEADER_SIZE", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = FormatBytes(Client.GetInfo(libcURL.Info.HEADER_SIZE).Int32Value)
		    
		    CurlInfo.InsertRow(row + 1, "REQUEST_SIZE", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = FormatBytes(Client.GetInfo(libcURL.Info.REQUEST_SIZE).Int32Value)
		    
		    CurlInfo.InsertRow(row + 1, "SIZE_DOWNLOAD", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = FormatBytes(Client.GetInfo(libcURL.Info.SIZE_DOWNLOAD).DoubleValue)
		    
		    CurlInfo.InsertRow(row + 1, "SIZE_UPLOAD", 1)
		    CurlInfo.Cell(CurlInfo.LastIndex, 1) = FormatBytes(Client.GetInfo(libcURL.Info.SIZE_UPLOAD).DoubleValue)
		    
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CAListFile
	#tag Event
		Sub Open()
		  If Client.EasyItem.CA_ListFile <> Nil Then Me.Text = Client.EasyItem.CA_ListFile.AbsolutePath
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  If Client.EasyItem.CA_ListFile <> Nil Then
		    Client.EasyItem.CA_ListFile.Parent.Launch
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma Unused X
		  #pragma Unused Y
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CASet
	#tag Event
		Sub Action()
		  Dim f As FolderItem = GetOpenFolderItem(cURLTypes.SecurityCertificate)
		  If f <> Nil Then
		    Client.EasyItem.CA_ListFile = f
		    Client.EasyItem.Secure = False
		    CAListFile.Text = Client.EasyItem.CA_ListFile.AbsolutePath
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CAUnset
	#tag Event
		Sub Action()
		  Client.EasyItem.CA_ListFile = Nil
		  Client.EasyItem.Secure = False
		  CAListFile.Text = "Not specified"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClientCert
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  If ClientCertItem <> Nil Then
		    ClientCertItem.Parent.Launch
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma Unused X
		  #pragma Unused Y
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ClientCertSet
	#tag Event
		Sub Action()
		  Dim f As FolderItem = GetOpenFolderItem(cURLTypes.SecurityCertificate)
		  If f <> Nil Then
		    If Client.EasyItem.SetOption(libcURL.Opts.SSLCERT, f) Then
		      ClientCert.Text = f.AbsolutePath
		      ClientCertItem = f
		    Else
		      MsgBox("Unable to set client certificate!")
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClientCertUnset
	#tag Event
		Sub Action()
		  Call Client.EasyItem.SetOption(libcURL.Opts.SSLCERT, Nil)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events nic
	#tag Event
		Sub Open()
		  Dim i As Integer
		  For i = 0 To System.NetworkInterfaceCount - 1
		    Me.AddRow(System.GetNetworkInterface(i).IPAddress)
		    If System.GetNetworkInterface(i).IPAddress <> "0.0.0.0" Then
		      Me.RowTag(i) = System.GetNetworkInterface(i)
		    End If
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  If Me.ListIndex > -1 Then Client.EasyItem.NetworkInterface = Me.RowTag(Me.ListIndex)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Verbose
	#tag Event
		Sub Open()
		  If Client.EasyItem.Verbose Then
		    Me.State = CheckBox.CheckedStates.Checked
		  Else
		    Me.State = CheckBox.CheckedStates.Unchecked
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If mLockUI Then Return
		  Client.EasyItem.Verbose = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Secure
	#tag Event
		Sub Open()
		  If Client.EasyItem.Secure Then
		    Me.State = CheckBox.CheckedStates.Checked
		  Else
		    Me.State = CheckBox.CheckedStates.Unchecked
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If mLockUI Then Return
		  Client.EasyItem.Secure = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HTTPPreserveMethod
	#tag Event
		Sub Open()
		  If Client.EasyItem.HTTPPreserveMethod Then
		    Me.State = CheckBox.CheckedStates.Checked
		  Else
		    Me.State = CheckBox.CheckedStates.Unchecked
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If mLockUI Then Return
		  Client.EasyItem.HTTPPreserveMethod = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HTTPCompress
	#tag Event
		Sub Open()
		  If Client.EasyItem.HTTPCompression Then
		    Me.State = CheckBox.CheckedStates.Checked
		  Else
		    Me.State = CheckBox.CheckedStates.Unchecked
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If mLockUI Then Return
		  Client.EasyItem.HTTPCompression = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FollowRedirects
	#tag Event
		Sub Open()
		  If Client.EasyItem.FollowRedirects Then
		    Me.State = CheckBox.CheckedStates.Checked
		  Else
		    Me.State = CheckBox.CheckedStates.Unchecked
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If mLockUI Then Return
		  Client.EasyItem.FollowRedirects = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Autoreferer
	#tag Event
		Sub Open()
		  If Client.EasyItem.AutoReferer Then
		    Me.State = CheckBox.CheckedStates.Checked
		  Else
		    Me.State = CheckBox.CheckedStates.Unchecked
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If mLockUI Then Return
		  Client.EasyItem.AutoReferer = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AutoDisconnect
	#tag Event
		Sub Open()
		  If Client.EasyItem.AutoDisconnect Then
		    Me.State = CheckBox.CheckedStates.Checked
		  Else
		    Me.State = CheckBox.CheckedStates.Unchecked
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If mLockUI Then Return
		  Client.EasyItem.AutoDisconnect = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FailOnError
	#tag Event
		Sub Open()
		  If Client.EasyItem.FailOnServerError Then
		    Me.State = CheckBox.CheckedStates.Checked
		  Else
		    Me.State = CheckBox.CheckedStates.Unchecked
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If mLockUI Then Return
		  Client.EasyItem.FailOnServerError = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProxyServer
	#tag Event
		Sub TextChange()
		  Client.Proxy.Address = Me.Text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events nic1
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Socks 4"
		    Client.Proxy.Type = libcURL.ProxyType.SOCKS4
		  Case "Socks 4A"
		    Client.Proxy.Type = libcURL.ProxyType.SOCKS4A
		  Case "Socks 5"
		    Client.Proxy.Type = libcURL.ProxyType.SOCKS5
		  Case "Socks 5A"
		    Client.Proxy.Type = libcURL.ProxyType.SOCKS5_HOSTNAME
		  Case "HTTP"
		    Client.Proxy.Type = libcURL.ProxyType.HTTP
		  Case "HTTP 1.0"
		    Client.Proxy.Type = libcURL.ProxyType.HTTP1_0
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton10
	#tag Event
		Sub Action()
		  If Not libcURL.ParseCommandLine(CmdLine.Text, Self.Client) Then
		    MsgBox("Unable to parse!")
		  Else
		    MsgBox("All options parsed successfully.")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NoProgress
	#tag Event
		Sub Open()
		  If Client.EasyItem.UseProgressEvent Then
		    Me.State = CheckBox.CheckedStates.Checked
		  Else
		    Me.State = CheckBox.CheckedStates.Unchecked
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  If mLockUI Then Return
		  Client.EasyItem.UseProgressEvent = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas1
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.SplitterNorthSouth
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma Unused X
		  #pragma Unused Y
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  If Me.Width > Me.Height Then 'horizontal
		    Me.Top = Me.Window.MouseY
		  Else
		    Me.Left = Me.Window.MouseX
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  
		  Headers.Height = Me.Top - Headers.Top - 1
		  DownloadOutput.Top = Me.Top + Me.Height + 1
		  DownloadOutput.Height = Me.Window.Height - DownloadOutput.Top - 5
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics)
		  g.ForeColor = &cC0C0C000
		  g.DrawRect(0, 0, g.Width, g.Height)
		  
		  g.ForeColor = &c80808000
		  g.DrawLine(0.25 * g.Width, 0.25 * g.Height, 0.75 * g.Width, 0.25 * g.Height)
		  g.DrawLine(0.25 * g.Width, 0.75 * g.Height, 0.75 * g.Width, 0.75 * g.Height)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Debug
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  #pragma Unused X
		  #pragma Unused Y
		  base.Append(New MenuItem("Clear log"))
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select Case hitItem.Text
		  Case "Clear log"
		    Me.DeleteAllRows
		    Return True
		  End Select
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Canvas2
	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.SplitterNorthSouth
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma Unused X
		  #pragma Unused Y
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  If Me.Width > Me.Height Then 'horizontal
		    Me.Top = Me.Window.MouseY
		  Else
		    Me.Left = Me.Window.MouseX
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  
		  CurlInfo.Height = Me.Top - CurlInfo.Top - 1
		  Debug.Top = Me.Top + Me.Height + 1
		  Debug.Height = Me.Window.Height - Debug.Top - 5
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics)
		  g.ForeColor = &cC0C0C000
		  g.DrawRect(0, 0, g.Width, g.Height)
		  
		  g.ForeColor = &c80808000
		  g.DrawLine(0.25 * g.Width, 0.25 * g.Height, 0.75 * g.Width, 0.25 * g.Height)
		  g.DrawLine(0.25 * g.Width, 0.75 * g.Height, 0.75 * g.Width, 0.75 * g.Height)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CookieList
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  #pragma Unused column
		  
		  If column <> 3 And Me.Cell(row, 0) = Me.CellTag(row, 0) And Me.Cell(row, 1) = Me.CellTag(row, 1) And Me.Cell(row, 2) = Me.CellTag(row, 2) And _
		    Me.Cell(row, 4) = Me.CellTag(row, 4) Then Return ' no changes
		    
		    Dim n, v, d, p As String
		    Dim h As Boolean
		    Dim e As Date
		    n = Me.Cell(row, 0)
		    v = Me.Cell(row, 1)
		    d = Me.Cell(row, 2)
		    If Me.Cell(row, 3) <> "" Then Call libcURL.ParseDate(Me.Cell(row, 3), e)
		    p = Me.Cell(row, 4)
		    h = Me.CellCheck(row, 4)
		    
		    If Not Client.Cookies.SetCookie(n, v, d, e, p, h) Then
		      Dim err As New libcURL.cURLException(Client.EasyItem)
		      MsgBox(err.Message)
		      Me.Cell(row, 0) = Me.CellTag(row, 0)
		      Me.Cell(row, 1) = Me.CellTag(row, 1)
		      Me.Cell(row, 2) = Me.CellTag(row, 2)
		      Me.Cell(row, 3) = Me.CellTag(row, 3)
		      Me.Cell(row, 4) = Me.CellTag(row, 4)
		      Me.CellState(row, 5) = Not Me.CellState(row, 5)
		    ElseIf Client.Cookies.CookieJar <> Nil Then
		      mCookiesDirty = mCookiesDirty + 1
		    End If
		    If mCookiesDirty > 0 Then
		      FlushCookiesButton.Enabled = True
		      FlushCookiesButton.Caption = "Flush Changes (" + Format(mCookiesDirty, "###,###,##0") + ")"
		    Else
		      FlushCookiesButton.Enabled = False
		      FlushCookiesButton.Caption = "Flush Changes"
		    End If
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  Dim r, c As Integer
		  r = Me.RowFromXY(x, y)
		  c = Me.ColumnFromXY(x, y)
		  If r = -1 Then Return False
		  If Me.RowTag(r) < 0 Then Return False
		  Dim m As New MenuItem("Expire")
		  m.Tag = r
		  base.Append(m)
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select Case hitItem.Text
		  Case "Expire"
		    Dim i As Integer = hitItem.Tag
		    If i > -1 Then
		      Dim index As Integer = Me.RowTag(i)
		      If MsgBox("Delete this cookie?", 48 + 4, "Confirm deletion") = 6 Then
		        Client.Cookies.Expiry(index) = New Date(1970, 2, 1, 0, 0, 0, 0.0)
		        Me.RemoveRow(i)
		        mCookiesDirty = mCookiesDirty + 1
		      End If
		      If mCookiesDirty > 0 Then
		        FlushCookiesButton.Enabled = True
		        FlushCookiesButton.Caption = "Flush Changes (" + Format(mCookiesDirty, "###,###,##0") + ")"
		      Else
		        FlushCookiesButton.Enabled = False
		        FlushCookiesButton.Caption = "Flush Changes"
		      End If
		      Return True
		    End If
		  End Select
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  #pragma Unused x
		  #pragma Unused y
		  If (column = 1 Or column = 3 Or column = 4) And Not IsContextualClick And Me.Selected(row) Then
		    Me.CellTag(row, column) = Me.Cell(row, column)
		    Me.EditCell(row, column)
		    Return True
		  End If
		  Return (column = 5)
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  If column = 5 Then
		    Dim a, b As Boolean
		    a = (Me.CellState(row1, column) = CheckBox.CheckedStates.Checked)
		    b = (Me.CellState(row2, column) = CheckBox.CheckedStates.Checked)
		    
		    If a Xor b Then
		      If a And Not b Then
		        result = 1
		      Else
		        result = -1
		      End If
		    End If
		    Return True
		  End If
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CookieLookupButton
	#tag Event
		Sub Action()
		  UpdateCookieList()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CookieJarUnset
	#tag Event
		Sub Action()
		  Client.Cookies.CookieJar = Nil
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CookieJar
	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #pragma Unused X
		  #pragma Unused Y
		  If Client.EasyItem.CookieEngine.CookieJar <> Nil Then
		    Client.EasyItem.CookieEngine.CookieJar.Parent.Launch
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #pragma Unused X
		  #pragma Unused Y
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CookieJarSet
	#tag Event
		Sub Action()
		  Dim f As FolderItem
		  If MsgBox("Would you like to open an existing cookie file?", 4 + 32, "Open existing?") = 6 Then
		    f = GetOpenFolderItem(cURLTypes.NetscapeCookieJar)
		  Else
		    f = GetSaveFolderItem(cURLTypes.NetscapeCookieJar, "cookie.jar")
		  End If
		  If f <> Nil Then
		    Client.EasyItem.CookieEngine.CookieJar = f
		    CookieJar.Text = Client.EasyItem.CookieEngine.CookieJar.AbsolutePath
		    UseCookies.Value = True
		    If MsgBox("Cookie file set. Cookies will be loaded on the next connection attempt. Would you like to perform a dummy connection to load them now?", 4 + 32, "Cookies file ready") = 6 Then
		      If Not Client.Head("http://www.example.net/") Then Return
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NewCookieSessionButton
	#tag Event
		Sub Action()
		  If Not Client.Cookies.NewSession Then Raise New libcURL.cURLException(Client.EasyItem)
		  UpdateCookieList()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteCookiesButton
	#tag Event
		Sub Action()
		  If Not Client.Cookies.DeleteSession Then Raise New libcURL.cURLException(Client.EasyItem)
		  UpdateCookieList()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events FlushCookiesButton
	#tag Event
		Sub Action()
		  If Client.Cookies.CookieJar <> Nil Then
		    Call Client.Cookies.Flush()
		  Else
		    Call MsgBox("No cookie jar file specified!", 48, "No file")
		  End If
		  mCookiesDirty = 0
		  Me.Enabled = False
		  Me.Caption = "Flush Changes"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UseCookies
	#tag Event
		Sub Action()
		  Client.Cookies.Enabled = Me.Value
		  CookieControl.Enabled = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SSLVer
	#tag Event
		Sub Change()
		  If mLockUI Then Return
		  Select Case Me.Text
		  Case "TLSv1"
		    Client.EasyItem.SSLVersion = libcURL.SSLVersion.TLSv1
		  Case "SSLv2"
		    Client.EasyItem.SSLVersion = libcURL.SSLVersion.SSLv2
		  Case "SSLv3"
		    Client.EasyItem.SSLVersion = libcURL.SSLVersion.SSLv3
		  Case "TLSv1.0"
		    Client.EasyItem.SSLVersion = libcURL.SSLVersion.TLSv1_0
		  Case "TLSv1.1"
		    Client.EasyItem.SSLVersion = libcURL.SSLVersion.TLSv1_1
		  Case "TLSv1.2"
		    Client.EasyItem.SSLVersion = libcURL.SSLVersion.TLSv1_2
		  Else
		    Client.EasyItem.SSLVersion = libcURL.SSLVersion.Default
		  End Select
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HTTPVer
	#tag Event
		Sub Change()
		  If mLockUI Then Return
		  Select Case Me.Text
		  Case "HTTP/1.1"
		    Client.EasyItem.HTTPVersion = Client.EasyItem.HTTP_VERSION_1_1
		  Case "HTTP/1.0"
		    Client.EasyItem.HTTPVersion = Client.EasyItem.HTTP_VERSION_1_0
		  Case "HTTP/2"
		    Try
		      Client.EasyItem.HTTPVersion = Client.EasyItem.HTTP_VERSION_2_0
		    Catch Err As libcURL.cURLException
		      If Err.ErrorNumber = libcURL.Errors.UNSUPPORTED_PROTOCOL Then
		        Call MsgBox("HTTP/2 support was not built into the installed version of libcurl.", 16, libcURL.Errors.Name(Err.ErrorNumber))
		        Me.ListIndex = 0
		      Else
		        Raise Err
		      End If
		    End Try
		  End Select
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Client
	#tag Event
		Function Progress(dlTotal As Int64, dlNow As Int64, ulTotal As Int64, ulNow As Int64) As Boolean
		  mdlnow = dlnow
		  mdltotal = dlTotal
		  mulnow = ulnow
		  multotal = ultotal
		  If App.CurrentThread = Nil Then ' main thread
		    DoProgress()
		  ElseIf ProgressTimer <> Nil Then
		    ProgressTimer.Mode = Timer.ModeSingle
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Sub Error(cURLCode As Integer)
		  #pragma Unused cURLCode
		  GUITimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndEvent
	#tag Event
		Sub TransferComplete(BytesRead As Integer, BytesWritten As Integer)
		  #pragma Unused BytesRead
		  #pragma Unused BytesWritten
		  GUITimer.Mode = Timer.ModeSingle
		  If ThreadStream <> Nil Then ThreadStream.Close
		  ThreadStream = Nil
		End Sub
	#tag EndEvent
	#tag Event
		Sub DebugMessage(MessageType As libcURL.curl_infotype, data As String)
		  If MessageType = libcURL.curl_infotype.header_out Then
		    Dim msgs() As String = SplitB(data.Trim, EndOfLine.Windows)
		    For i As Integer = 0 To UBound(msgs)
		      dbgmsgs.Insert(0, MessageType:msgs(i))
		    Next
		  Else
		    dbgmsgs.Insert(0, MessageType:data)
		  End If
		  ProgressTimer.Mode = Timer.ModeSingle
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GetThread
	#tag Event
		Sub Run()
		  If Not Client.Get(mURL, ThreadStream) Then
		    Break
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PutThread
	#tag Event
		Sub Run()
		  If mPutTarget <> Nil Then
		    Dim bs As BinaryStream = BinaryStream.Open(mPutTarget)
		    If Not Client.Put(mURL, bs) Then
		      Break
		    End If
		    bs.Close
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PostThread
	#tag Event
		Sub Run()
		  If FormValue <> Nil Then
		    If FormValue.Right = 0 Then ' URLEncoded
		      Dim frm() As String = FormValue.Left
		      If Not Client.Post(mURL, frm) Then Break
		    ElseIf FormValue.Right = 1 Then ' Multipart
		      Dim frm As Dictionary = FormValue.Left
		      If Not Client.Post(mURL, frm) Then Break
		    Else
		      Break
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  Dim bs As BinaryStream
		  If CheckBox1.Value Then
		    Dim f As FolderItem = GetSaveFolderItem("", "")
		    bs = BinaryStream.Create(f, True)
		  End If
		  PauseButton.Enabled = True
		  AbortButton.Enabled = True
		  Client.Get(TextField1.Text, bs)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  mURL = TextField1.Text
		  If CheckBox1.Value Then
		    Dim f As FolderItem = GetSaveFolderItem("", "")
		    ThreadStream = BinaryStream.Create(f, True)
		  End If
		  PauseButton.Enabled = True
		  AbortButton.Enabled = True
		  GetThread.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton3
	#tag Event
		Sub Action()
		  PauseButton.Enabled = True
		  AbortButton.Enabled = True
		  Dim f As FolderItem = GetOpenFolderItem("")
		  Dim bs As BinaryStream = BinaryStream.Open(f)
		  Client.Put(TextField1.Text, bs)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton4
	#tag Event
		Sub Action()
		  PauseButton.Enabled = True
		  AbortButton.Enabled = True
		  mPutTarget = GetOpenFolderItem("")
		  mURL = TextField1.Text
		  PutThread.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton5
	#tag Event
		Sub Action()
		  If FormValue <> Nil Then
		    PauseButton.Enabled = True
		    AbortButton.Enabled = True
		    If FormValue.Right = 0 Then ' URLEncoded
		      Dim frm() As String = FormValue.Left
		      Client.Post(TextField1.Text, frm)
		    ElseIf FormValue.Right = 1 Then ' Multipart
		      Dim frm As Dictionary = FormValue.Left
		      Client.Post(TextField1.Text, frm)
		    Else
		      Break
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton6
	#tag Event
		Sub Action()
		  PauseButton.Enabled = True
		  AbortButton.Enabled = True
		  mURL = TextField1.Text
		  PostThread.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton7
	#tag Event
		Sub Action()
		  Dim f As Pair = FormGenerator.CreateForm
		  If f <> Nil Then
		    FormValue = f
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton8
	#tag Event
		Sub Action()
		  PauseButton.Enabled = True
		  AbortButton.Enabled = True
		  mURL = TextField1.Text
		  HeadThread.Run
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton9
	#tag Event
		Sub Action()
		  PauseButton.Enabled = True
		  AbortButton.Enabled = True
		  Client.Head(TextField1.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GUITimer
	#tag Event
		Sub Action()
		  Populate()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ProgressTimer
	#tag Event
		Sub Action()
		  DoProgress()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HeadThread
	#tag Event
		Sub Run()
		  If Not Client.Head(mURL) Then
		    Break
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PauseButton
	#tag Event
		Sub Action()
		  If Me.Caption = "Pause" Then
		    If Client.EasyItem.Pause Then Me.Caption = "Resume"
		    
		  Else
		    If Client.EasyItem.Resume Then Me.Caption = "Pause"
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AbortButton
	#tag Event
		Sub Action()
		  Client.Abort()
		End Sub
	#tag EndEvent
#tag EndEvents
