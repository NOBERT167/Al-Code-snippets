pageextension 50127 salesCust extends "Sales Order"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(AssemblyOrders)
        {

            action(customerSalesQuantity)
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = New;

                trigger OnAction()
                var
                    salesQueryCodeunit: Codeunit 50126;
                begin
                    Clear(salesQueryCodeunit);
                    salesQueryCodeunit.Run();
                end;
            }
        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}