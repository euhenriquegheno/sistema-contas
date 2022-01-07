unit uCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Menus;

type
  TFrmEmpresa = class(TForm)
    pcPrincipal: TPageControl;
    tsConsulta: TTabSheet;
    tsCadEmpresa: TTabSheet;
    qrEmpresa: TFDQuery;
    dsEmpresa: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qrEmpresaCODIGO: TIntegerField;
    qrEmpresaNOME: TStringField;
    qrEmpresaENDERECO: TStringField;
    qrEmpresaBAIRRO: TStringField;
    qrEmpresaCIDADE: TStringField;
    qrEmpresaUF: TStringField;
    qrEmpresaCNPJ: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Label8: TLabel;
    Image1: TImage;
    Panel5: TPanel;
    Label9: TLabel;
    Image2: TImage;
    PopupMenu1: TPopupMenu;
    CANCELAR: TMenuItem;
    GRAVAR1: TMenuItem;
    Label10: TLabel;
    edtConsulta: TEdit;
    Button4: TButton;
    rgOrdenacao: TRadioGroup;
    CADASTRAR1: TMenuItem;
    ALTERAR1: TMenuItem;
    CANCELAR1: TMenuItem;
    qrEmpresaDATA_CADASTRO: TDateField;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Image3: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure qrEmpresaAfterInsert(DataSet: TDataSet);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure pcPrincipalChange(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure ListarEmpresa;
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation

{$R *.dfm}

procedure TFrmEmpresa.Button1Click(Sender: TObject);
begin
  qrEmpresa.Insert;
  pcPrincipal.ActivePage := tsCadEmpresa;
  DBEdit2.SetFocus;
  DBEdit8.Text := DateToStr(Date);
end;

procedure TFrmEmpresa.Button2Click(Sender: TObject);
begin
  qrEmpresa.Edit;
  pcPrincipal.ActivePage := tsCadEmpresa;
end;

procedure TFrmEmpresa.Button3Click(Sender: TObject);
begin
  Try
    If Application.MessageBox('Deseja realmente excluir a Empresa?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
    qrEmpresa.delete;
  Except
    ShowMessage('Nenhuma Empresa para excluir!');
  End;
end;

procedure TFrmEmpresa.Button4Click(Sender: TObject);
begin
  ListarEmpresa;
end;

procedure TFrmEmpresa.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) then
  Self.Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmEmpresa.FormActivate(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsConsulta;
  qrEmpresa.Active := True;
end;

procedure TFrmEmpresa.ListarEmpresa;
begin
  qrEmpresa.Close;
  qrEmpresa.SQL.Clear;
  qrEmpresa.SQL.Add('SELECT * FROM EMPRESA');

  if (edtConsulta.Text <> '') then
  Begin
    Try
      StrToInt(edtConsulta.Text);
      qrEmpresa.SQL.Add('WHERE (CODIGO = ' + edtConsulta.Text +')');
    Except
      qrEmpresa.SQL.Add('WHERE(UPPER(NOME) LIKE' + QuotedStr('%' + AnsiUpperCase(edtConsulta.Text) +'%')+ ')');
    End;
  End;

  if (rgOrdenacao.ItemIndex = 0) then
    qrEmpresa.SQL.Add('Order By CODIGO')
  Else if (rgOrdenacao.ItemIndex = 1) then
    qrEmpresa.SQL.Add('Order By NOME');

  qrEmpresa.Open;
end;

procedure TFrmEmpresa.Panel4Click(Sender: TObject);
begin
  qrEmpresa.Post;
  pcPrincipal.ActivePage := tsConsulta;
end;

procedure TFrmEmpresa.Panel5Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
  Begin
    qrEmpresa.Cancel;
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TFrmEmpresa.pcPrincipalChange(Sender: TObject);
begin
  if (qrEmpresa.State = dsInsert) or (qrEmpresa.State = dsEdit) then
  Begin
    Application.MessageBox('Grave ou cancele antes de voltar!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsCadEmpresa;
  End
  Else
  Begin
    Application.MessageBox('Voce so pode acessar essa aba inserindo ou editando alguma Empresa!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TFrmEmpresa.qrEmpresaAfterInsert(DataSet: TDataSet);
var query : TFDQuery;
    codigo : Integer;
begin
  query := TFDQuery.Create(Self);
  query.Connection := Dm.Conexao;
  query.Active := false;
  query.SQL.Add('SELECT MAX (CODIGO) AS CODIGO FROM EMPRESA');
  query.Active := True;

  if (query.FieldByName('CODIGO').IsNull) then
  codigo := 1
  else
  codigo := query.FieldByName('CODIGO').AsInteger + 1;

  query.Free;

  qrEmpresaCODIGO.AsInteger := codigo;
end;

end.
