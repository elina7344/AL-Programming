page 50104 "Employee Page"
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

                field("emp code"; Rec."emp code")
                {
                    ApplicationArea = All;

                }
                field("emp name"; Rec."emp name")
                {
                    ApplicationArea = All;

                }
                field(salary; Rec.salary)
                {
                    ApplicationArea = All;

                }
                field(DOJ; Rec.DOJ)
                {
                    ApplicationArea = All;

                }
                field(city; Rec.city)
                {
                    ApplicationArea = All;

                }
                field(gender; Rec.gender)
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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}