table 123456701 "CSD Seminar"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar';
    fields
    {
        field(10; "No."; code[10])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(20; "Name"; Text[50])
        { }
        field(30; "Seminar Duration"; Decimal)
        {
            Caption = 'Name';
            DecimalPlaces = 0 : 1;
        }
        field(40; "Min. Participant"; Integer)
        {
            Caption = 'Min. Participant';
        }
        field(50; "Max. Participant"; Integer)
        {
            Caption = 'Max. Participant';
        }
        field(60; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(70; "Blocked"; Boolean)
        {
            Caption = 'Blocked';
        }
        field(80; "Last Day Modified"; Date)
        {
            Caption = 'Last Day Modified';
            Editable = False;
        }
        field(90; "Comment"; Boolean)
        {
            Caption = 'Comment';
            Editable = false;
            //FieldClass=FlowField; 
            //CalcFormula=exist("Seminar Comment Line" 
            //where("Table Name"= const("Seminar"), 
            // "No."=Field("No.")));
        }
        field(100; "Seminar price"; Decimal)
        {
            AutoFormatType = 1;
        }
        field(110; "Gen. Prd. Posting Group"; Code[10])
        {
            Caption = 'Gen. prd. posting group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(120; "VAT Prd. Posting Group"; Code[10])
        {
            Caption = 'VAT prd. posting group';
            TableRelation = "VAT Product Posting Group";
        }
        field(130;"No. series";Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK; "no.")
        {
            Clustered = true;
        }
        key(Key1;"Search Name")
        {}
    }

    var
        myInt: Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}