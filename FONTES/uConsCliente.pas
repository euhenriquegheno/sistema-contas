unit uConsCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmConsCliente = class(TForm)
    Panel1: TPanel;
    qrConsCliente: TFDQuery;
    dsConsulta: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edtConsulta: TEdit;
    BUSCAR: TButton;
    rgOrdenacao: TRadioGroup;
    qrConsClienteCODIGO: TIntegerField;
    qrConsClienteNOME: TStringField;
    qrConsClienteENDERECO: TStringField;
    qrConsClienteCIDADE: TStringField;
    qrConsClienteBAIRRO: TStringField;
    qrConsClienteUF: TStringField;
    qrConsClienteCPFCNPJ: TStringField;
    procedure BUSCARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    Cod_Cliente : Integer;
   nome_cliente : String;

    Procedure ListarClientes;
  end;

var
  FrmConsCliente: TFrmConsCliente;

implementation

{$R *.dfm}

procedure TFrmConsCliente.BUSCARClick(Sender: TObject);
begin
  ListarClientes;
end;

procedure TFrmConsCliente.DBGrid1DblClick(Sender: TObject);
begin
  Cod_Cliente := qrConsClienteCODIGO.AsInteger;
  nome_cliente := qrConsClienteNOME.AsString;

  FrmConsCliente.Close;
end;

procedure TFrmConsCliente.FormActivate(Sender: TObject);
begin
  ListarClientes;
end;

procedure TFrmConsCliente.ListarClientes;
begin
  qrConsCliente.Close;
  qrConsCliente.SQL.Clear;
  qrConsCliente.SQL.Add('SELECT * FROM CLIENTE');

  if (edtConsulta.Text <> '') then
  Begin
    Try
      StrToInt(edtConsulta.Text);
      qrConsCliente.SQL.Add('WHERE (CODIGO = ' + edtConsulta.Text +')');
    Except
      qrConsCliente.SQL.Add('WHERE(UPPER(NOME) LIKE' + QuotedStr('%' + AnsiUpperCase(edtConsulta.Text) +'%')+ ')');
    End;
  End;

  if (rgOrdenacao.ItemIndex = 0) then
    qrConsCliente.SQL.Add('Order By CODIGO')
  Else if (rgOrdenacao.ItemIndex = 1) then
    qrConsCliente.SQL.Add('Order By NOME');

  qrConsCliente.Open;
end;

end.
