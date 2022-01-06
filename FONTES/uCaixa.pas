unit uCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UDM, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TfrmCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    btnAbertura: TButton;
    btnExcluir: TButton;
    btnIncluir: TButton;
    Panel4: TPanel;
    btnFechamento: TButton;
    btnReabertura: TButton;
    qrCaixa: TFDQuery;
    qrMovCaixa: TFDQuery;
    dsCaixa: TDataSource;
    dsMovCaixa: TDataSource;
    qrCaixaCODIGO: TIntegerField;
    qrCaixaDATA: TDateField;
    qrCaixaSITUACAO: TStringField;
    qrCaixaSALDO: TFMTBCDField;
    qrMovCaixaCODIGO: TIntegerField;
    qrMovCaixaDESCRICAO: TStringField;
    qrMovCaixaVALOR: TFMTBCDField;
    qrMovCaixaSAIDA: TFMTBCDField;
    qrMovCaixaENTRADA: TFMTBCDField;
    qrMovCaixaTIPO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel5: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    dtpDe: TDateTimePicker;
    dtpAte: TDateTimePicker;
    Label4: TLabel;
    Panel6: TPanel;
    label5: TLabel;
    Button1: TButton;
    pcPrincipal: TPageControl;
    tsConsulta: TTabSheet;
    tsMovManual: TTabSheet;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    rgTipo: TRadioGroup;
    Label8: TLabel;
    Panel7: TPanel;
    Button2: TButton;
    Button3: TButton;
    qrMovCaixaDATA: TDateField;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    procedure btnIncluirClick(Sender: TObject);
    procedure pcPrincipalChange(Sender: TObject);
    procedure qrMovCaixaAfterInsert(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAberturaClick(Sender: TObject);
    procedure btnFechamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixa: TfrmCaixa;

implementation

{$R *.dfm}

uses uAberturaCaixa, uFechamentoCaixa;

procedure TfrmCaixa.btnAberturaClick(Sender: TObject);
begin
  frmAberturaCaixa := tfrmAberturaCaixa.create(self);
  try
    frmAberturaCaixa.qrCaixa.Edit;
    frmAberturaCaixa.showModal;
  finally
    freeandnil(frmAberturaCaixa);
  end;
end;

procedure TfrmCaixa.btnExcluirClick(Sender: TObject);
begin
  Try
    if Application.MessageBox('Deseja realmente excluir a movimenta��o?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
    begin
      qrMovCaixa.delete;
    end;
  Except
    ShowMessage('Nenhuma conta para excluir!');
  End;
end;

procedure TfrmCaixa.btnFechamentoClick(Sender: TObject);
begin
  frmFechamentoCaixa := tfrmFechamentoCaixa.create(self);
  try
    frmFechamentoCaixa.showModal;
  finally
    freeandnil(frmFechamentoCaixa);
  end;
end;

procedure TfrmCaixa.btnIncluirClick(Sender: TObject);
begin
  qrMovCaixa.Insert;
  pcPrincipal.ActivePage := tsMovManual;
  dbedit6.Text := DateToStr(date);
end;

procedure TfrmCaixa.Button2Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
  Begin
    qrMovCaixa.Cancel;
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TfrmCaixa.Button3Click(Sender: TObject);
begin
  Try
    if rgTipo.ItemIndex = 0 then
    begin
      qrMovCaixaENTRADA.AsFloat := qrMovCaixaVALOR.AsFloat;
      qrMovCaixaSAIDA.AsFloat := 0;
    end
    else if rgTipo.ItemIndex = 1 then
    begin
      qrMovCaixaSAIDA.AsFloat := qrMovCaixaVALOR.AsFloat;
      qrMovCaixaENTRADA.AsFloat := 0;
    end;

    qrMovCaixaTIPO.AsString := 'CAIXA';

    qrMovCaixa.Post;
    pcPrincipal.ActivePage := tsConsulta;
  Except
    if DBEdit5.Text = '' then
      ShowMessage('Insira alguma registro antes de gravar!')
    else
      ShowMessage('Insira alguma registro antes de gravar!');
  End;
end;

procedure TfrmCaixa.FormCreate(Sender: TObject);
begin
  qrCaixa.active := true;
  qrMovCaixa.active := true;
end;

procedure TfrmCaixa.pcPrincipalChange(Sender: TObject);
begin
  if (qrMovCaixa.State = dsInsert) or
  (qrMovCaixa.State = dsEdit) then
  Begin
    Application.MessageBox('Grave ou cancele antes de voltar!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsMovManual;
  End
  Else
  Begin
    Application.MessageBox('Voce so pode acessar essa aba inserindo ou editando alguma conta!', 'ATEN��O', MB_ICONEXCLAMATION);
    pcPrincipal.ActivePage := tsConsulta;
  End;
end;

procedure TfrmCaixa.qrMovCaixaAfterInsert(DataSet: TDataSet);
var query : TFDQuery;
    codigo : Integer;
begin
  query := TFDQuery.Create(self);//CRIA COMPONENTE NA MEMORIA
  query.Connection := Dm.Conexao;//VINCULA O COMPONENTE DE CONEXAO COM A QUERY
  query.Active := false;//DESATIVA CONEXAO DO QUERY COM O BANCO DE DADOS
  query.SQL.Add('SELECT MAX (CODIGO) AS CODIGO FROM MOVIMENTACAO_CAIXA');//SQL DE CONSULTA NO BANCO
  query.Active := True;

  if (query.FieldByName('CODIGO').IsNull) then //VALIDA SE A COLUNA CODIGO � NULL
    Codigo := 1
  else
    codigo := query.FieldByName('CODIGO').AsInteger + 1;

  query.Free;//LIMPA A VARIAVEL QUERY DA MEM�RIA

  qrMovCaixaCODIGO.AsInteger := codigo;
end;

end.