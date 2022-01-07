unit uCadCategorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.Menus;

type
  TFrmCategorias = class(TForm)
    pcPrincipal: TPageControl;
    tsConsulta: TTabSheet;
    tsCadastro: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    edtConsulta: TEdit;
    Button4: TButton;
    rgOrdenacao: TRadioGroup;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    DBGrid1: TDBGrid;
    qrCategorias: TFDQuery;
    dsCategorias: TDataSource;
    qrCategoriasCODIGO: TIntegerField;
    qrCategoriasCATEGORIA: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label9: TLabel;
    Image1: TImage;
    Panel5: TPanel;
    Label10: TLabel;
    Image2: TImage;
    PopupMenu1: TPopupMenu;
    GRAVAR1: TMenuItem;
    CANCELAR1: TMenuItem;
    CADASTRAR1: TMenuItem;
    ALTERAR1: TMenuItem;
    CANCELAR2: TMenuItem;
    Image3: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure pcPrincipalChange(Sender: TObject);
    procedure qrCategoriasAfterInsert(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure ListarCategorias;
  end;

var
  FrmCategorias: TFrmCategorias;

implementation

{$R *.dfm}

procedure TFrmCategorias.Button1Click(Sender: TObject);
begin
  qrCategorias.Insert;
  pcPrincipal.ActivePage := tsCadastro;
  DBEdit2.SetFocus;
end;

procedure TFrmCategorias.Button2Click(Sender: TObject);
begin
  qrCategorias.Edit;
  pcPrincipal.ActivePage := tsCadastro;
  DBEdit2.SetFocus;
end;

procedure TFrmCategorias.Button3Click(Sender: TObject);
begin
  Try
    If Application.MessageBox('Deseja realmente excluir a Catetgoria?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
      qrCategorias.delete;
  Except
    ShowMessage('Nenhuma categoria para excluir!');
  End;
end;

procedure TFrmCategorias.Button4Click(Sender: TObject);
begin
  listarCategorias;
end;

procedure TFrmCategorias.FormActivate(Sender: TObject);
begin
  qrCategorias.Active := True;
  pcPrincipal.ActivePage := tsConsulta;
end;

procedure TFrmCategorias.ListarCategorias;
begin
  qrCategorias.Close;
  qrCategorias.SQL.Clear;
  qrCategorias.SQL.Add('SELECT * FROM CATEGORIAS');

  if (edtConsulta.Text <> '') then
    qrCategorias.SQL.Add('WHERE (UPPER(CATEGORIA) LIKE ''%' + (AnsiUpperCase(edtConsulta.Text)) + '%'')');

  if (rgOrdenacao.ItemIndex = 0) then
  qrCategorias.SQL.Add('ORDER BY CODIGO')
  else if (rgOrdenacao.ItemIndex = 1) then
  qrCategorias.SQL.Add('ORDER BY CATEGORIA');

  qrCategorias.Open;
end;

procedure TFrmCategorias.Panel4Click(Sender: TObject);
begin
  Try
    qrCategorias.Post;
    pcPrincipal.ActivePage := tsConsulta;
  Except
    showMessage('Nenhum dado informado!')
  End;
end;

procedure TFrmCategorias.Panel5Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
  Begin
    qrCategorias.Cancel;
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TFrmCategorias.pcPrincipalChange(Sender: TObject);
begin
  if (qrCategorias.State = dsInsert) or (qrCategorias.State = dsEdit) then
  Begin
    Application.MessageBox('Grave ou cancele antes de voltar!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsCadastro;
  End
  Else
  Begin
    Application.MessageBox('Voce so pode acessar essa aba inserindo ou editando alguma categoria!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TFrmCategorias.qrCategoriasAfterInsert(DataSet: TDataSet);
  var query : TFDQuery;
    codigo : Integer;
begin
  query := TFDQuery.Create(Self);
  query.Connection := Dm.Conexao;
  query.Active := false;
  query.SQL.Clear;
  query.SQL.Add('SELECT MAX (CODIGO) AS CODIGO FROM CATEGORIAS');
  query.Active := True;

  if (query.FieldByName('CODIGO').IsNull) then
  codigo := 1
  else
  codigo := query.FieldByName('CODIGO').AsInteger + 1;

  query.Free;

  qrCategoriasCODIGO.AsInteger := codigo;
end;

end.
