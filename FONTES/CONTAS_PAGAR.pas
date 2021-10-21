unit CONTAS_PAGAR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Data.FMTBcd, EFuncoes,
  Data.SqlExpr, Vcl.Imaging.pngimage, Vcl.Menus, frxClass, frxDBSet;

type
  TFrmContasPagar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnExcluir: TButton;
    btnSair: TButton;
    qrContasPagar: TFDQuery;
    dsContasPagar: TDataSource;
    DBGrid1: TDBGrid;
    pcPrincipal: TPageControl;
    tsConsulta: TTabSheet;
    tsCadastro: TTabSheet;
    btnIncluir: TButton;
    StaticText1: TStaticText;
    Panel3: TPanel;
    btnAlterar: TButton;
    Panel4: TPanel;
    edtConsulta: TEdit;
    Label6: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    DateTimePicker1: TDateTimePicker;
    btnBuscar: TButton;
    ComboBox1: TComboBox;
    Label8: TLabel;
    pnCancelar: TPanel;
    Label9: TLabel;
    Image1: TImage;
    pnGravar: TPanel;
    Label10: TLabel;
    Image2: TImage;
    Label11: TLabel;
    PopupMenu1: TPopupMenu;
    EXCLUIR1: TMenuItem;
    INCLUIR1: TMenuItem;
    ALTERAR1: TMenuItem;
    CANCELAR1: TMenuItem;
    PAGAR1: TMenuItem;
    GRAVAR1: TMenuItem;
    Image3: TImage;
    pnEstornar: TPanel;
    Label12: TLabel;
    pnPagar: TPanel;
    Label13: TLabel;
    Image5: TImage;
    ESTORNAR1: TMenuItem;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    Image6: TImage;
    Label3: TLabel;
    btnCalcular: TButton;
    Panel10: TPanel;
    edtValorTotal: TMaskEdit;
    Label16: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    Label20: TLabel;
    DBEdit8: TDBEdit;
    Image8: TImage;
    qrContasPagarCODIGO: TIntegerField;
    qrContasPagarVALOR: TFMTBCDField;
    qrContasPagarDATA_VENCIMENTO: TDateField;
    qrContasPagarSITUACAO: TStringField;
    qrContasPagarCOD_EMPRESA: TIntegerField;
    qrContasPagarEMPRESA_NOME: TStringField;
    qrContasPagarBANCO_PAGAMENTO: TStringField;
    qrContasPagarFORMA_PAGAMENTO: TStringField;
    qrContasPagarCOD_FUNCIONARIO: TIntegerField;
    qrContasPagarFUNCIONARIO_NOME: TStringField;
    qrContasPagarCAMINHO_ARQUIVOS: TStringField;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    edtConsultaFuncionario: TEdit;
    Label22: TLabel;
    qrContasPagarCOD_CATEGORIA: TIntegerField;
    qrContasPagarCATEGORIA_NOME: TStringField;
    Label23: TLabel;
    DBEdit10: TDBEdit;
    Label24: TLabel;
    DBEdit11: TDBEdit;
    Image7: TImage;
    edtConsultaCategoria: TEdit;
    Label25: TLabel;
    edtConsultaBanco: TEdit;
    Label26: TLabel;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    qrContasPagarNUMERO_BOLETO: TStringField;
    Label27: TLabel;
    DBEdit12: TDBEdit;
    Panel11: TPanel;
    edtNumeroBoleto: TEdit;
    Label2: TLabel;
    Label28: TLabel;
    lbRegistros: TLabel;
    frxContasPagar: TfrxDBDataset;
    fxContasPagar: TfrxReport;
    btnGerarRel: TButton;
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure edtConsultaKeyPress(Sender: TObject; var Key: Char);
    procedure btnBuscarClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qrContasPagarAfterInsert(DataSet: TDataSet);
    procedure pcPrincipalChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnEstornarClick(Sender: TObject);
    procedure pnCancelarClick(Sender: TObject);
    procedure pnPagarClick(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure Image8Click(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure Image7Click(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure pnEstornarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnEstornarMouseLeave(Sender: TObject);
    procedure pnPagarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnPagarMouseLeave(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure btnGerarRelClick(Sender: TObject);
  private

  public
    Procedure ListarContas;
    Procedure CalcularTotal;
  end;

var
  FrmContasPagar: TFrmContasPagar;

implementation

{$R *.dfm}

uses uConsEmpresa, uPagamento, uConsFuncionarios, uConsCategorias,
  uCadCategorias, UPrincipal, uRelContasPagar;

procedure TFrmContasPagar.Button10Click(Sender: TObject);
begin
  DBEdit3.Clear;
  DBEdit8.Clear;
end;

procedure TFrmContasPagar.Button11Click(Sender: TObject);
begin
  DBEdit10.Clear;
  DBEdit11.Clear;
end;

procedure TFrmContasPagar.btnExcluirClick(Sender: TObject);
begin
  Try
    if Application.MessageBox('Deseja realmente excluir a conta?', 'ATEN플O', mb_iconquestion + mb_yesno) = idYes then
    begin
      qrContasPagar.delete;
      ListarContas;
      CalcularTotal;
    end;
  Except
    ShowMessage('Nenhuma conta para excluir!');
  End;
End;

procedure TFrmContasPagar.btnGerarRelClick(Sender: TObject);
begin
  frmRelContasPagar := TFrmRelContasPagar.Create(self);
  try
    frmRelContasPagar.ShowModal;
  finally
    freeandnil(frmRelContasPagar);
  end;
end;

procedure TFrmContasPagar.btnSairClick(Sender: TObject);
begin
 if Application.MessageBox('Deseja realmente sair?', 'ATEN플O', mb_iconquestion + mb_yesno) = idYes then
  Close;
end;

procedure TFrmContasPagar.btnBuscarClick(Sender: TObject);
begin
  ListarContas;
  CalcularTotal;
end;

procedure TFrmContasPagar.btnCalcularClick(Sender: TObject);
begin
  CalcularTotal;
end;

procedure TFrmContasPagar.btnIncluirClick(Sender: TObject);
begin
  qrContasPagar.Insert;
  pcPrincipal.ActivePage := tsCadastro;
  DBEdit12.SetFocus;
end;

procedure TFrmContasPagar.Button6Click(Sender: TObject);
var Arq : String;
begin
  if OpenDialog1.Execute = True then
    Arq := OpenDialog1.FileName;
    qrContasPagar.FieldByName('CAMINHO_ARQUIVOS').asString := Arq;
end;

procedure TFrmContasPagar.btnAlterarClick(Sender: TObject);
begin
  qrContasPagar.Edit;
  pcPrincipal.ActivePage := tsCadastro;
end;

procedure TFrmContasPagar.Button9Click(Sender: TObject);
begin
  DBEdit6.Clear;
  DBEdit7.Clear;
end;

procedure TFrmContasPagar.CalcularTotal;
 VAR V_SOMA : CURRENCY;
begin
  v_soma := 0;
  qrContasPagar.First;
  while not qrContasPagar.EOF do
  begin
    if not (qrContasPagar.FieldByName('VALOR').IsNull) then
      v_soma := v_soma + qrContasPagar.FieldByName('VALOR').Value;
      qrContasPagar.Next;
  end;
  edtValorTotal.Text  := FormatFloat('R$#,##0.00', v_soma);
end;

procedure TFrmContasPagar.ComboBox1Change(Sender: TObject);
begin
  ListarContas;
  CalcularTotal;
end;

procedure TFrmContasPagar.DateTimePicker1Change(Sender: TObject);
begin
  ListarContas;
  CalcularTotal;
end;

procedure TFrmContasPagar.DateTimePicker2Change(Sender: TObject);
begin
  ListarContas;
  CalcularTotal;
end;

procedure TFrmContasPagar.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  Begin
    FrmConsCategorias := TFrmConsCategorias.Create(Self);
    FrmConsCategorias.edtConsulta.Text := dbedit11.Text;
    FrmConsCategorias.ListarCategorias;
    if FrmConsCategorias.qrConsCategorias.RecordCount > 1 then
    Begin
      FrmConsCategorias.ShowModal;
      qrContasPagarCOD_CATEGORIA.AsInteger := FrmConsCategorias.cod_categoria;
      qrContasPagarCATEGORIA_NOME.AsString    := FrmConsCategorias.categoria_nome;
    End
    Else
    Begin
      qrContasPagarCOD_CATEGORIA.AsInteger := FrmConsCategorias.qrConsCategoriasCODIGO.AsInteger;
      qrContasPagarCATEGORIA_NOME.AsString    := FrmConsCategorias.qrConsCategoriasCATEGORIA.AsString;
    End;

    FrmConsCategorias.Free;
  End;
end;

procedure TFrmContasPagar.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    Self.Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmContasPagar.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    Self.Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmContasPagar.DBEdit5Change(Sender: TObject);
begin
  if Length(DBEdit5.Text) = 2 then begin
    DBEdit5.Text := DBEdit5.Text + '/';
    DBEdit5.SelStart := Length( DBEdit5.Text );
  end;
  if Length(DBEdit5.Text ) = 5 then begin
    DBEdit5.Text := DBEdit5.Text + '/';
    DBEdit5.SelStart := Length( DBEdit5.Text );
  end;
end;

procedure TFrmContasPagar.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  Begin
    FrmConsEmpresa := TFrmConsEmpresa.Create(Self);
    FrmConsEmpresa.edtConsulta.Text := dbedit7.Text;
    FrmConsEmpresa.ListarEmpresas;
      if FrmConsEmpresa.qrConsEmpresa.RecordCount > 1 then
      Begin
        FrmConsEmpresa.ShowModal;
        qrContasPagarCOD_EMPRESA.AsInteger := FrmConsEmpresa.COD_EMPRESA;
        qrContasPagarEMPRESA_NOME.AsString    := FrmConsEmpresa.NOME_EMPRESA;
      End
      Else
      Begin
       qrContasPagarCOD_EMPRESA.AsInteger := FrmConsEmpresa.qrConsEmpresaCODIGO.AsInteger;
       qrContasPagarEMPRESA_NOME.AsString    := FrmConsEmpresa.qrConsEmpresaNOME.AsString;
      End;

    freeandnil(FrmConsEmpresa);
  End;

  if (Key = #13) then
    Self.Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmContasPagar.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  Begin
    FrmConsFuncionarios := TFrmConsFuncionarios.Create(Self);
    FrmConsFuncionarios.edtConsulta.Text := dbedit8.Text;
    FrmConsFuncionarios.ListarFuncionarios;
      if FrmConsFuncionarios.qrConsFuncionarios.RecordCount > 1 then
      Begin
        FrmConsFuncionarios.ShowModal;
        qrContasPagarCOD_FUNCIONARIO.AsInteger := FrmConsFuncionarios.COD_FUNCIONARIO;
        qrContasPagarFUNCIONARIO_NOME.AsString    := FrmConsFuncionarios.NOME_FUNCIONARIO;
      End
      Else
      Begin
       qrContasPagarCOD_FUNCIONARIO.AsInteger := FrmConsFuncionarios.qrConsFuncionariosCODIGO.AsInteger;
       qrContasPagarFUNCIONARIO_NOME.AsString    := FrmConsFuncionarios.qrConsFuncionariosNOME.AsString;
      End;

    freeandnil(FrmConsFuncionarios);
  End;

  if (Key = #13) then
    Self.Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmContasPagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdRowSelected in State) or (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Brush.Style := bsSolid;
    (Sender as TDBGrid).Canvas.Brush.Color := clskyblue;
    (Sender as TDBGrid).Canvas.Font.Style := [fsbold];
    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.Font.Color := clHotLight;
    (Sender as TDBGrid).DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end
  else
  begin
    (Sender as TDBGrid).Canvas.Brush.Style := bsSolid;
    (Sender as TDBGrid).Canvas.Brush.Color := clwhite;
    (Sender as TDBGrid).Canvas.Font.Style := [fsbold];
    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.Font.Color := clHotLight;
    (Sender as TDBGrid).DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('SITUACAO').Value = 'ABERTO'   then
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clGreen;
    (Sender as TDBGrid).Canvas.Font.Style:= [fsbold];
  end
  else
  begin
    (Sender as TDBGrid).Canvas.Font.Color := clHotLight;
    (Sender as TDBGrid).Canvas.Font.Style:= [fsbold];
  end;

  (Sender as TDBGrid).Canvas.FillRect(Rect);
  (Sender as TDBGrid).DefaultDrawDataCell(Rect, (Sender as   TDBGrid).columns[datacol].field, State);
end;

procedure TFrmContasPagar.edtConsultaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  Button9Click(Nil);
end;

procedure TFrmContasPagar.FormActivate(Sender: TObject);
begin
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  qrContasPagar.Active := True;
  ListarContas;
  CalcularTotal;
end;

procedure TFrmContasPagar.FormCreate(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsConsulta;
end;

procedure TFrmContasPagar.FormShow(Sender: TObject);
begin
   ListarContas;
   CalcularTotal;
end;

procedure TFrmContasPagar.Image6Click(Sender: TObject);
begin
  FrmConsEmpresa := TFrmConsEmpresa.Create(self);
  try
    FrmConsEmpresa.ShowModal;
    qrContasPagarCOD_EMPRESA.AsInteger := FrmConsEmpresa.Cod_Empresa;
    qrContasPagarEMPRESA_NOME.AsString := FrmConsEmpresa.nome_empresa;

    DBEdit4.SetFocus;
  finally
    freeandnil(frmConsEmpresa);
  end;
end;

procedure TFrmContasPagar.Image7Click(Sender: TObject);
begin
  FrmConsCategorias := TFrmConsCategorias.Create(self);
  try
    FrmConsCategorias.ShowModal;
    qrContasPagarCOD_CATEGORIA.AsInteger := FrmConsCategorias.cod_categoria;
    qrContasPagarCATEGORIA_NOME.AsString := FrmConsCategorias.categoria_nome;
  finally
    freeandnil(frmConsCategorias);
  end;
end;

procedure TFrmContasPagar.Image8Click(Sender: TObject);
begin
  FrmConsFuncionarios := TFrmConsFuncionarios.Create(self);
  try
    FrmConsFuncionarios.ShowModal;
    qrContasPagarCOD_FUNCIONARIO.AsInteger := FrmConsFuncionarios.cod_funcionario;
    qrContasPagarFUNCIONARIO_NOME.AsString := FrmConsFuncionarios.nome_funcionario;

    DBEdit4.SetFocus;
  finally
    freeandnil(frmConsFuncionarios);
  end;
end;

procedure TFrmContasPagar.ListarContas;
begin
  qrContasPagar.Close;
  qrContasPagar.SQL.Clear;
  qrContasPagar.SQL.Add('SELECT * FROM CONTAS_PAGAR');

  qrContasPagar.SQL.Add ('WHERE (DATA_VENCIMENTO >= ''' +
  formataDataSql(DateTimePicker1.Date) + ''' AND DATA_VENCIMENTO <= ''' + formatadataSql(DateTimePicker2.Date) + ''')');

  if (edtConsulta.Text <> '') then
    qrContasPagar.SQL.Add('AND (Upper(EMPRESA_NOME) like ''%' + AnsiUpperCase(edtConsulta.Text) + '%'')');

  if (edtConsultaFuncionario.Text <> '') then
    qrContasPagar.SQL.Add('AND (UPPER(FUNCIONARIO_NOME) LIKE ''%' + AnsiUpperCase(edtConsultaFuncionario.Text) + '%'')');

  if (edtConsultaCategoria.Text <> '') then
    qrContasPagar.SQL.Add('AND (UPPER(CATEGORIA_NOME) LIKE ''%' + AnsiUpperCase(edtConsultaCategoria.Text) + '%'')');

  if (edtConsultaBanco.Text <> '') then
    qrContasPagar.SQL.Add('AND (UPPER(BANCO_PAGAMENTO) LIKE ''%' + AnsiUpperCase(edtConsultaBanco.Text) + '%'')');

  if (edtNumeroBoleto.Text <> '') then
    qrContasPagar.SQL.Add('AND (UPPER(NUMERO_BOLETO) LIKE ''%' + AnsiUpperCase(edtNumeroBoleto.Text) + '%'')');

  if ComboBox1.ItemIndex = 1 then
    qrContasPagar.SQL.Add('And Situacao = ''ABERTO''')
  Else if ComboBox1.ItemIndex = 2 then
    qrContasPagar.SQL.Add('And Situacao = ''QUITADO''');

  qrContasPagar.SQL.Add('ORDER BY DATA_VENCIMENTO');
  qrContasPagar.open;

  lbRegistros.Caption := qrContasPagar.RecordCount.ToString + ' Registros...';
end;

procedure TFrmContasPagar.pcPrincipalChange(Sender: TObject);
begin
  if (qrContasPagar.State = dsInsert) or
  (qrContasPagar.State = dsEdit) then
  Begin
    Application.MessageBox('Grave ou cancele antes de voltar!', 'ATEN플O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsCadastro;
  End
  Else
  Begin
    Application.MessageBox('Voce so pode acessar essa aba inserindo ou editando alguma conta!', 'ATEN플O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TFrmContasPagar.pnCancelarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar?', 'ATEN플O', mb_iconquestion + mb_yesno) = idYes then
  Begin
    qrContasPagar.Cancel;
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TFrmContasPagar.pnGravarClick(Sender: TObject);
begin
  Try
    qrContasPagar.Post;
    pcPrincipal.ActivePage := tsConsulta;
    ListarContas;
  Except
    if DBEdit5.Text = '' then
      ShowMessage('Insira alguma registro antes de gravar!')
    else
      ShowMessage('Insira alguma registro antes de gravar!');
  End;
end;

procedure TFrmContasPagar.pnEstornarClick(Sender: TObject);
begin
  qrContasPagar.Edit;
  if application.MessageBox('Deseja realmente ESTORNAR essa conta?', 'ATEN플O', mb_iconquestion + mb_yesno) = idYes then
    if qrContasPagar.FieldByName('SITUACAO').AsString = 'QUITADO' then
    begin
      qrContasPagar.FieldByName('SITUACAO').AsString := 'ABERTO';
      frmContasPagar.qrContasPagar.FieldByName('BANCO_PAGAMENTO').AsString := '';
      frmContasPagar.qrContasPagar.FieldByName('FORMA_PAGAMENTO').AsString := '';
      qrContasPagar.Post
    end
    else
      application.MessageBox('Essa conta ja esta ABERTA!', 'ATEN플O', MB_ICONEXCLAMATION);
end;
procedure TFrmContasPagar.pnEstornarMouseLeave(Sender: TObject);
begin
  pnEstornar.Color := cl3DLight;
end;

procedure TFrmContasPagar.pnEstornarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnEstornar.Color := clSkyBlue;
end;

procedure TFrmContasPagar.pnPagarClick(Sender: TObject);
begin
  frmPagamento := TFrmPagamento.Create(Self);
  try
    frmPagamento.ShowModal;
  finally
    freeandnil(frmPagamento);
  end;
end;

procedure TFrmContasPagar.pnPagarMouseLeave(Sender: TObject);
begin
  pnPagar.Color := cl3DLight;
end;

procedure TFrmContasPagar.pnPagarMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnPagar.Color := clskyblue;
end;

procedure TFrmContasPagar.qrContasPagarAfterInsert(DataSet: TDataSet);
var query : TFDQuery;
    codigo : Integer;
begin
  query := TFDQuery.Create(self);//CRIA COMPONENTE NA MEMORIA
  query.Connection := Dm.Conexao;//VINCULA O COMPONENTE DE CONEXAO COM A QUERY
  query.Active := false;//DESATIVA CONEXAO DO QUERY COM O BANCO DE DADOS
  query.SQL.Add('SELECT MAX (CODIGO) AS CODIGO FROM CONTAS_PAGAR');//SQL DE CONSULTA NO BANCO
  query.Active := True;

  if (query.FieldByName('CODIGO').IsNull) then //VALIDA SE A COLUNA CODIGO � NULL
    Codigo := 1
  else
    codigo := query.FieldByName('CODIGO').AsInteger + 1;

  query.Free;//LIMPA A VARIAVEL QUERY DA MEM�RIA

  qrContasPagarCODIGO.AsInteger := codigo;
end;

end.
