unit uCadFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Menus;

type
  TFrmCadFuncionarios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label10: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    edtConsulta: TEdit;
    Button4: TButton;
    rgOrdenacao: TRadioGroup;
    qrFuncionarios: TFDQuery;
    dsFuncionarios: TDataSource;
    pcPrincipal: TPageControl;
    tsConsulta: TTabSheet;
    tsCadastro: TTabSheet;
    DBGrid1: TDBGrid;
    qrFuncionariosCODIGO: TIntegerField;
    qrFuncionariosNOME: TStringField;
    qrFuncionariosENDERECO: TStringField;
    qrFuncionariosCIDADE: TStringField;
    qrFuncionariosUF: TStringField;
    qrFuncionariosBAIRRO: TStringField;
    qrFuncionariosCPF_CNPJ: TStringField;
    qrFuncionariosDATA_CADASTRO: TDateField;
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
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Label9: TLabel;
    Image1: TImage;
    Panel5: TPanel;
    Label11: TLabel;
    Image2: TImage;
    PopupMenu1: TPopupMenu;
    CANCELAR: TMenuItem;
    GRAVAR1: TMenuItem;
    CADASTRAR1: TMenuItem;
    ALTERAR1: TMenuItem;
    CANCELAR1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure qrFuncionariosAfterInsert(DataSet: TDataSet);
    procedure pcPrincipalChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure ListarFuncionarios;
  end;

var
  FrmCadFuncionarios: TFrmCadFuncionarios;

implementation

{$R *.dfm}

procedure TFrmCadFuncionarios.Button1Click(Sender: TObject);
begin
  qrFuncionarios.Insert;
  pcPrincipal.ActivePage := tsCadastro;
  DBEdit2.SetFocus;
  DBEdit8.Text := DateToStr(Date);
end;

procedure TFrmCadFuncionarios.Button2Click(Sender: TObject);
begin
  qrFuncionarios.Edit;
  pcPrincipal.ActivePage := tsCadastro;
end;

procedure TFrmCadFuncionarios.Button3Click(Sender: TObject);
begin
  Try
    If Application.MessageBox('Deseja realmente excluir o Funcion�rio?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
      qrFuncionarios.delete;
  Except
    ShowMessage('Nenhum funcion�rio para excluir!');
  End;
end;

procedure TFrmCadFuncionarios.Button4Click(Sender: TObject);
begin
  ListarFuncionarios;
end;

procedure TFrmCadFuncionarios.FormActivate(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsConsulta;
  qrFuncionarios.Active := True;
  Button4Click(Nil);
end;

procedure TFrmCadFuncionarios.ListarFuncionarios;
begin
  qrFuncionarios.Close;
  qrFuncionarios.SQL.Clear;
  qrFuncionarios.SQL.Add('SELECT * FROM FUNCIONARIOS');

  if (edtConsulta.Text <> '') then
  Begin
    Try
      StrToInt(edtConsulta.Text);
      qrFuncionarios.SQL.Add('WHERE (CODIGO = ' + edtConsulta.text +')');
    Except
      qrFuncionarios.SQL.Add('WHERE(UPPER(NOME) LIKE' + QuotedStr('%' + AnsiUpperCase(edtConsulta.Text) +'%')+ ')');
    End;
  End;


  if (rgOrdenacao.ItemIndex = 0) then
    qrFuncionarios.SQL.Add('Order By CODIGO')
  Else if (rgOrdenacao.ItemIndex = 1) then
    qrFuncionarios.SQL.Add('Order By NOME');

  qrFuncionarios.Open;
end;

procedure TFrmCadFuncionarios.Panel4Click(Sender: TObject);
begin
  qrFuncionarios.Post;
  pcPrincipal.ActivePage := tsConsulta;
end;

procedure TFrmCadFuncionarios.Panel5Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
  Begin
    qrFuncionarios.Cancel;
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TFrmCadFuncionarios.pcPrincipalChange(Sender: TObject);
begin
  if (qrFuncionarios.State = dsInsert) or (qrFuncionarios.State = dsEdit) then
  Begin
    Application.MessageBox('Grave ou cancele antes de voltar!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsCadastro;
  End
  Else
  Begin
    Application.MessageBox('Voce so pode acessar essa aba inserindo ou editando algum Funcion�rio!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TFrmCadFuncionarios.qrFuncionariosAfterInsert(DataSet: TDataSet);
var query : TFDQuery;
    codigo : Integer;
begin
  query := TFDQuery.Create(Self);
  query.Connection := Dm.Conexao;
  query.Active := false;
  query.SQL.Add('SELECT MAX (CODIGO) AS CODIGO FROM FUNCIONARIOS');
  query.Active := True;

  if (query.FieldByName('CODIGO').IsNull) then
  codigo := 1
  else
  codigo := query.FieldByName('CODIGO').AsInteger + 1;

  query.Free;

  qrFuncionariosCODIGO.AsInteger := codigo;
end;

end.
