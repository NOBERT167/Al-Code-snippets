table 50111 Employe
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; employeCode; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(10; "employe name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(20; salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(30; city; Option)
        {
            OptionMembers = Nairobi,Mombasa,Nakuru,Kisumu,Eldoret;
            DataClassification = ToBeClassified;
        }
        field(40; DOB; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50; gender; Option)
        {
            OptionMembers = Male,Female,"Prefer not to say";
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; employeCode)
        {
            Clustered = true;
        }
        key(key2; city)
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }
    var
        name: Text;
        code: Integer;

    trigger OnInsert()
    begin
        Message('Data inserted');
    end;

    trigger OnModify()
    begin
        Message('Data modified');
    end;

    trigger OnDelete()
    begin
        Message('Data deleted');
    end;

    trigger OnRename()
    begin
        Message('Data renamed');
    end;
}
