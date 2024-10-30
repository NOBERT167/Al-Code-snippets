query 50125 "Top 10 Customer Quantity Sales"
{
    QueryType = Normal;
    Caption = 'Top 10 Customers Quantity Sales';
    OrderBy = descending(Quantity);
    TopNumberOfRows = 10;

    elements
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.")
            {

            }
            column(Name; Name)
            {

            }
            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "Sell-to Customer No." = Customer."No.";
                SqlJoinType = InnerJoin;
                column(Quantity; Quantity)
                {
                    Method = Sum;
                }
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}