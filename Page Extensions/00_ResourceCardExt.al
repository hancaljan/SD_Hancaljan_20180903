pageextension 123456700 "CSD ResourceCardExt" extends "Resource Card"
// <NAV> #5.1 Create Resource Extension
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }
        addlast("Personal Data")
        {
            group("CSD Room")
            {
                Visible = showMaxfield;
                field("CSD Max. Participants"; "CSD Max. Participants")
                {

                }
                
            }
            
        }
    }
    trigger OnAfterGetRecord();
    begin
        ShowMaxField := (Type = type::Machine);
        CurrPage.Update(false);
    end;
    var
        [InDataSet]
        ShowMaxField: Boolean;
}