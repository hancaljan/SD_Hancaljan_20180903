tableextension 123456700 "CSD ResourceExt" extends Resource
// <NAV> #5.1 Create Resource Extension
{
    fields
    {
        // Add changes to table fields here
        field(123456701;"CSD Resource Type";Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
        }
        field(123456702;"CSD Max. Participants";Integer)
        {
            Caption = 'Max. Participants';
        }
        field(123456703;"CSD Quantity Per Day";integer)
        {
            Caption = 'Qty. Per Day';
        }
    }
    var
        myInt : Integer;
}