page 123456701 "CSD Seminar Card"
{
    PageType = Card;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar';

    layout
    {
    area(FactBoxes)
    {
        systempart("Links";Links) { } 
        systempart("Notes";Notes) { }        
    }

        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No.";"No.")
                { 
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit then
                            CurrPage.Update;
                    end;
                }
                field(Name;Name)
                {                }
                field("Search Name";"Search Name")
                {                }
                field("Seminar Duration";"Seminar Duration")
                {                }
                field("Min. Participant";"Min. Participant")
                {}
                field("Max. Participant";"Max. Participant")
                {}
                field(Blocked;Blocked)
                {}
                field("Last Day Modified";"Last Day Modified")
                {}
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Gen. Prod. Posting Group";"Gen. Prod. Posting Group")
                {                }
                field("VAT Prod. Posting Group";"VAT Prod. Posting Group")
                {}
                field("Seminar price";"Seminar price")
                {}
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
            group("&Seminar")
            {
                action("Co&mments") 
                { 
                    //RunObject=page "Seminar Comment Sheet"; //RunPageLink = "Table Name"= const(Seminar), // "No."=field("No."); 
                    Image = Comment; 
                    Promoted = true; 
                    PromotedIsBig = true; 
                    PromotedOnly = true; 
                }
            }
        }
    }
    
    var
        assistedit: Boolean;
}