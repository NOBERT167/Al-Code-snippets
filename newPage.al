page 50120 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(Addition)
            {

                trigger OnAction()
                begin
                    myCode.Run()
                end;
            }
        }
    }

    var
        myCode: Codeunit MyCodeunit;
}