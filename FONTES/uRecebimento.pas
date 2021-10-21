unit uRecebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPagamento, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, CONTAS_RECEBER;

type
  TFrmRecebimento = class(TFrmPagamento)
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecebimento: TFrmRecebimento;

implementation

{$R *.dfm}

procedure TFrmRecebimento.Button1Click(Sender: TObject);
begin
  FrmContasReceber.qrContasReceber.Edit;
  if Application.MessageBox('Deseja realmente receber essa conta?', 'ATEN��O', mb_iconquestion + mb_yesno) = idYes then
    if FrmContasReceber.qrContasReceber.FieldByName('SITUACAO').AsString = 'ABERTO' then
    Begin
      FrmContasReceber.qrContasReceber.FieldByName('SITUACAO').AsString := 'RECEBIDA';
      FrmContasReceber.qrContasReceber.FieldByName('BANCO_PAGAMENTO').AsString := cbPagamento.Text;
      FrmContasReceber.qrContasReceber.FieldByName('FORMA_PAGAMENTO').AsString := edtFormapgto.Text;
      FrmContasReceber.qrContasReceber.Post;
      FrmRecebimento.Close;
    End
    Else
    Application.MessageBox('Essa conta ja esta RECEBIDA!', 'ATEN��O', MB_ICONEXCLAMATION);

  FrmRecebimento.Close;
end;

end.