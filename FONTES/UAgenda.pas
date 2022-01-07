unit UAgenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UDM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, Vcl.Mask, FireDAC.Comp.DataSet, FireDAC.Comp.Client, EFuncoes,
  Vcl.Menus, Vcl.Imaging.pngimage;

type
  TFrmAgenda = class(TForm)
    Panel1: TPanel;
    pcAgenda: TPageControl;
    tsAgenda: TTabSheet;
    tsCadastro: TTabSheet;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    qrAgenda: TFDQuery;
    dsConsulta: TDataSource;
    qrAgendaCODIGO: TIntegerField;
    qrAgendaDATA: TDateField;
    qrAgendaHORA: TTimeField;
    qrAgendaDESCRICAO: TStringField;
    qrAgendaNIVEL: TStringField;
    qrAgendaLUGAR: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    AGENDAMENTO: TLabel;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label8: TLabel;
    cbNivel: TComboBox;
    Button3: TButton;
    PopupMenu1: TPopupMenu;
    INCLUIR1: TMenuItem;
    EXCLUIR1: TMenuItem;
    CANCELAR1: TMenuItem;
    GRABAR1: TMenuItem;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qrAgendaAfterInsert(DataSet: TDataSet);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbNivelChange(Sender: TObject);
    procedure pcAgendaChange(Sender: TObject);
  private

  public
    Procedure ListarAgendamentos;
  end;

var
  FrmAgenda: TFrmAgenda;

implementation

{$R *.dfm}

procedure TFrmAgenda.Button1Click(Sender: TObject);
begin
  qrAgenda.Insert;
  pcAgenda.ActivePage := tsCadastro;
  DBEdit2.SetFocus;
end;

procedure TFrmAgenda.Button2Click(Sender: TObject);
begin
  Try
    if Application.MessageBox('Deseja realmente excluir esse agendamento?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
      qrAgenda.delete;
  Except
    ShowMessage('Nenhuma conta para excluir!');
  End;
end;

procedure TFrmAgenda.Button3Click(Sender: TObject);
begin
  ListarAgendamentos;
end;

procedure TFrmAgenda.cbNivelChange(Sender: TObject);
begin
  ListarAgendamentos;
end;

procedure TFrmAgenda.DBEdit2Change(Sender: TObject);
begin
  if Length(DBEdit2.Text) = 2 then
  begin
    DBEdit2.Text := DBEdit2.Text + '/';
    DBEdit2.SelStart := Length( DBEdit2.Text );
  end;
  if Length(DBEdit2.Text ) = 5 then begin
    DBEdit2.Text := DBEdit2.Text + '/';
    DBEdit2.SelStart := Length( DBEdit2.Text );
  end;
end;

procedure TFrmAgenda.DBEdit3Change(Sender: TObject);
begin
  if Length(DBEdit3.Text) = 2 then
  begin
    DBEdit3.Text := DBEdit3.Text + ':';
    DBEdit3.SelStart := Length( DBEdit3.Text );
  end;
end;

procedure TFrmAgenda.DBGrid1DblClick(Sender: TObject);
begin
  qrAgenda.Edit;
  pcAgenda.ActivePage := tsCadastro;
end;

procedure TFrmAgenda.FormActivate(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  qrAgenda.Active := True;
end;

procedure TFrmAgenda.FormCreate(Sender: TObject);
begin
  pcAgenda.ActivePage := tsAgenda;
end;

procedure TFrmAgenda.ListarAgendamentos;
begin
  qrAgenda.Close;
  qrAgenda.SQL.Clear;
  qrAgenda.SQL.Add('SELECT * FROM AGENDAMENTOS');

  qrAgenda.SQL.Add('WHERE (DATA = '''+ formataDataSQL(DateTimePicker1.Date)+''')');

  if cbNivel.ItemIndex = 1 then
    qrAgenda.SQL.Add('And NIVEL = ''ALTO''')
  else if cbNivel.ItemIndex = 2 then
    qrAgenda.SQL.Add('And NIVEL = ''MEDIO''')
  else if cbNivel.ItemIndex = 3 then
    qrAgenda.SQL.Add('and NIVEL = ''BAIXO''');

    qrAgenda.open;
end;

procedure TFrmAgenda.Panel4Click(Sender: TObject);
begin
  qrAgenda.Post;
  pcAgenda.ActivePage := tsAgenda;
end;

procedure TFrmAgenda.Panel5Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
  Begin
    qrAgenda.Cancel;
    pcAgenda.ActivePage := tsAgenda;
  End;
end;

procedure TFrmAgenda.pcAgendaChange(Sender: TObject);
begin
  if (qrAgenda.State = dsInsert) or
        (qrAgenda.State = dsEdit) then
  Begin
    Application.MessageBox('Grave ou cancele antes de voltar!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcAgenda.ActivePage := tsCadastro;
  End
  Else
  Begin
    Application.MessageBox('Voce so pode acessar essa aba inserindo ou editando algum Agendamento!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcAgenda.ActivePage := tsAgenda;
  End;
end;

procedure TFrmAgenda.qrAgendaAfterInsert(DataSet: TDataSet);
  var query : TFDQuery;
    codigo : Integer;
begin
  query := TFDQuery.Create(self);//CRIA COMPONENTE NA MEMORIA
  query.Connection := Dm.Conexao;//VINCULA O COMPONENTE DE CONEXAO COM A QUERY
  query.Active := false;//DESATIVA CONEXAO DO QUERY COM O BANCO DE DADOS
  query.SQL.Add('SELECT MAX (CODIGO) AS CODIGO FROM AGENDAMENTOS');//SQL DE CONSULTA NO BANCO
  query.Active := True;

  if (query.FieldByName('CODIGO').IsNull) then //VALIDA SE A COLUNA CODIGO � NULL
    Codigo := 1
  else
    codigo := query.FieldByName('CODIGO').AsInteger + 1;

  query.Free;//LIMPA A VARIAVEL QUERY DA MEM�RIA

  qrAgendaCODIGO.AsInteger := codigo;
end;

end.
