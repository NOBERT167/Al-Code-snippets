namespace ALProject.ALProject;

query 50122 "My Employee List"
{
    Caption = 'My Employee List';
    QueryType = Normal;
    QueryCategory = 'My Employee List';

    elements
    {
        dataitem(Employe; Employe)
        {
            column(DOB; DOB)
            {
            }
            column(city; city)
            {
            }
            column(employename; "employe name")
            {
            }
            column(employeCode; employeCode)
            {
            }
            column(gender; gender)
            {
            }
            column(salary; salary)
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
