page 50114 addtwo
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
                ApplicationArea = All;

                trigger OnAction()
                begin
                    MyCode.run()
                end;
            }
        }
    }

    var
        MyCode: Codeunit MyNewCodeunit;
}