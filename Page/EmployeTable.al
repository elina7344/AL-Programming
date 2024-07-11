/*
Table Name: Employe
---------------------------------------------------------------
emp code    emp name    salary    DOJ       city         gender

21          Vijay       20000     2/4/16    Mumbai       M
41          Rashi       50000     29/2/20   Chennai      F
59          Vibha       30000     5/3/17    Bangalore    F
---------------------------------------------------------------
*/
table 50104 Employe
{
    Caption = 'Employe Table';
    DataClassification = ToBeClassified;

    fields
    {
        //field(ID;NAME;DATA TYPE)
        field(1; "emp code"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "emp name"; Text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(3; salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; DOJ; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; city; Option)
        {
            OptionMembers = Chennai,Noida,Bangalore,Mumbai;
            DataClassification = ToBeClassified;
        }
        field(6; gender; Option)
        {
            OptionMembers = M,F;
            DataClassification = ToBeClassified;
        }
    }
    /*
    2 types of Keys:
    PK: Primary Key (Unique Key)
    SK: Secondary Key
    */
    keys
    //First key will always be considered 
    //as primary key the key id can be anything
    //All keys after PK are SK
    //keys willincrease indexing and performance
    //too many keys increase complexity

    {
        key(PK; "emp code")
        //Ctrl+Space gives all options
        //Can add 4 keys more keys after "emp code"
        {
            /*This is indexing
            Clustered: 
            ->physical order the records are stored
            ->records will be stored in ascending order
            ->based on the 
            ->Can Speed up the retrival of the record

            NonClustered: 
            ->Have a structure separate from the data row
            */
            Clustered = true;
        }
        key(SK; city)
        {
            //Clustered=true; will show error
            //Clustered is only defined for one index
            //Not mandatory to write anything here
        }

    }

    fieldgroups
    {
        // Add changes to field groups here
    }
    //Self defined variables as of now its not needed
    var
        myInt: Integer;


    trigger OnInsert()
    begin
        //inbuit function
        //used to display when an action is performed
        Message('Data Inserted');
    end;

    trigger OnModify()
    begin
        Message('Data Modified');
    end;

    trigger OnDelete()
    begin
        Message('Data Deleted');
    end;

    trigger OnRename()
    begin
        Message('Data Renamed');
    end;

}