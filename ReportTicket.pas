unit ReportTicket;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Ticket,
  frxClass, frxDBSet, frxPreview, Vcl.ExtCtrls, frxExportBaseDialog,
  frxExportPDF,  Data.DB,    frCoreClasses, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFTicket = class(TForm)
    frxPreview1: TfrxPreview;
    tiket: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    Timer1: TTimer;
    frxPDFExport1: TfrxPDFExport;

    Tbdescrip: TFDQuery;
    Tbdescripid_enlace: TIntegerField;
    Tbdescripfrequently_use: TBooleanField;
    Tbdescripusedate: TDateTimeField;
    TbdescripDescripcion: TWideStringField;
    TbdescripHabilitado: TBooleanField;
    TbdescripCod_Descrip: TIntegerField;
    TbdescripCodigoProducto: TWideStringField;
    Tbdescripcolor: TStringField;
    TbdescripServicio: TWideStringField;
    TbdescripProducto: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var FTicket: TFTicket;

implementation

uses Dcaja;
{$R *.dfm}

end.
