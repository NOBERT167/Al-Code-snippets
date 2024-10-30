namespace ALProject.ALProject;

using Microsoft.Sales.Customer;

tableextension 50117 "Social Media" extends "Customer"
{
    fields
    {
        field(50100; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = ToBeClassified;
        }
        field(50101; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = ToBeClassified;
        }
        field(50102; Linkedin; Text[50])
        {
            Caption = 'Linkedin';
            DataClassification = ToBeClassified;
        }
        field(50103; Twitter; Text[50])
        {
            Caption = 'Twitter';
            DataClassification = ToBeClassified;
        }
    }
}
