codeunit 50119 MyCodeunit
{
    trigger OnRun()
    begin
        num1 := 12;
        num2 := 20;
        add(num1, num2)
    end;

    procedure add(num1: Integer; num2: Integer)
    var
        total: Integer;
    begin
        total := num1 + num2;
        Message('%1 + %2 = %3', num1, num2, total);
    end;

    var
        num1: Integer;
        num2: Integer;
}