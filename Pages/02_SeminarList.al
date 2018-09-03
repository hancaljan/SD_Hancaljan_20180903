page 123456702 "CSD Seminar list"
{
    PageType = List;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar';
    Editable = false;
    CardPageId = 123456701;
    UsageCategory = Lists;
    layout
    {
        area(FactBoxes)
        {
        systempart("Links";Links) { } 
        systempart("Notes";Notes) { }        
        }

        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                }
                field(Name; Name)
                { }
                field("Seminar Duration"; "Seminar Duration")
                { }
                field("Seminar price"; "Seminar price")
                { }
                field("Min. Participant"; "Min. Participant")
                { }
                field("Max. Participant"; "Max. Participant")
                {

                }
            }
        }

    }
    
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
        area(Navigation)
        {
            // action("Co&mments") { RunObject=page "Seminar Comment Sheet"; RunPageLink = "Table Name"=const(Seminar),"No."=field("No."); Image = Comment; }
        }
    }
}