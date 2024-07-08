page 50107 PageIntro
{
    PageType = Card;
    SourceTable = "Student";
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Student Table Intro';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Rollno; rec.Rollno)
                {

                }
                field(Name; rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Department; rec.Department)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(PRocessing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    ;
                end;
            }
        }
    }
    var
        myInt: Integer;
}