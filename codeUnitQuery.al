codeunit 50126 salesQueryCodeunit
{
    trigger OnRun()
    begin
        custQuery.SetFilter(Quantity, '>10');
        custQuery.OPEN;
        while custQuery.READ do begin
            Message(Textbox, custQuery.Name, custQuery.Quantity);
        end;
        custQuery.CLOSE;
    end;

    var
        custQuery: Query "Top 10 Customer Quantity Sales";
        Textbox: TextConst ENU = 'Customer name = %1 , Quantity = %2';
}