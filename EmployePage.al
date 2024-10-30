page 50111 "Employe Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employe;


    layout
    {
        area(Content)
        {
            group(General)
            {
                field(employeCode; Rec.employeCode)
                {
                    ApplicationArea = All;
                }
                field("employe name"; Rec."employe name")
                {
                    ApplicationArea = All;
                }
                field(salary; Rec.salary)
                {
                    ApplicationArea = All;
                }

                field(gender; Rec.gender)
                {
                    ApplicationArea = All;
                }
            }
            group("Other Information")
            {
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;
                }
                field(city; Rec.city)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Test)
            {

                trigger OnAction()
                begin
                    Message('Success!');
                end;
            }
        }
    }

    var
        myInt: Integer;
}