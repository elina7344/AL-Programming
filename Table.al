table 50103 Student
{
    DataClassification = ToBeClassified;
    //---------Basic Table Properties---------
    //CaptionML=Multi Language Caption
    //Description is optional for documentation purpose
    //DataPerCompany= Weather or not the table is segregated by company or is it common in all companies database
    //Permissions=different levels of access
    //LookupPageId=Allows default for looking up the data in this table
    //DrillDownPageId= default for the drilling down into the data that is summarized in the table
    //DataCaptionFields= define specific fields whoes contents will be dispalyed as the part of the caption
    //PasteIsValid=shows whether the user is allowed to paste data in the table.
    Caption = 'Student Table';


    fields
    {
        field(1; Rollno; Code[20])
        {
            NotBlank = True;
        }
        field(2; Name; Text[50])
        {

        }
        field(3; Department; Text[50])
        {

        }
    }

    //Keys are used to identify record and speed of filtering and sorting
    //First: Primary Key (unique key and upto 16 fields and 900 bytes)
    //All others are secondary keys
    //Primary Key Referred by: Foreign Key
    keys
    {
        key(PK; Rollno)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;


    //Default Triggers
    //Maintains the referential integrity
    trigger OnInsert()
    //OnInsert() will execute when a new record is to be interses in the table through the UI
    //For this we have to create a page
    begin

    end;

    trigger OnModify()
    //Will execute when a record is rewritten after the content of any field other that a primary key feld has been changed
    begin

    end;

    trigger OnDelete()
    //executed before a record is to be deleted from a table
    begin

    end;

    trigger OnRename()
    //changing any part of the primary key is a rename action
    begin

    end;

}