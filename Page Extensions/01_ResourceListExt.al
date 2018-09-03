pageextension 123456701 "CSD ResourceListExt" extends "Resource List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Max. Participants"; "CSD Max. Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = format(Type::machine));
        FilterGroup(0); 
    end;
    var
    [InDataSet] 
    ShowType : Boolean; 
    [InDataSet] 
    ShowMaxField : Boolean;
    
}