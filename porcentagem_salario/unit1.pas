unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Calcular: TButton;
    Label4: TLabel;
    Limpar: TButton;
    Fechar: TButton;
    Salario: TEdit;
    Comissao: TEdit;
    Receber: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Soma: TEdit;
    procedure CalcularClick(Sender: TObject);
    procedure FecharClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CalcularClick(Sender: TObject);
Var
  SA,CO,SR, T: REAL;
  F: STRING;
begin
   if (Salario.Text = '') then
      showmessage('O campo salário esta vazio');
    if (Comissao.Text = '') then
      showmessage('O campo porcentagem esta vazio');
   SA:=StrToFloat(Salario.Text);
   CO:=StrToFloat(Comissao.Text);
   SR:=SA * (CO/100);
   Receber.Text:=FormatFloat('R$ #,00', SR);
   T:=SA+SR;
   Soma.Text:=FormatFloat('R$ # ,00', T);

end;

procedure TForm1.FecharClick(Sender: TObject);
begin
  Application.Terminate
end;

procedure TForm1.LimparClick(Sender: TObject);
begin
  Salario.Text:= '';
  Comissao.Text:= '';
  Receber.Text:= '';
  Soma.Text:='';
end;

end.

