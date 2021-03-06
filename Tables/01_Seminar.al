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
            trigger OnValidate();
            begin           
                if "No." <> xRec."No." then begin 
                    SeminarSetup.GET; NoSeriesMgt.TestManual(SeminarSetup."Seminar Nos."); "No. Series" := ''; 
                end;
            end;
        }
        field(20; "Name"; Text[50])
        { }
        field(30; "Seminar Duration"; Decimal)
        {
            Caption = 'Name';
            DecimalPlaces = 0 : 1;
            trigger OnValidate();         
            begin
                "Search Name" := Name;
            end;
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
        field(110; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. prod. posting group';
            TableRelation = "Gen. Product Posting Group";
            trigger OnValidate();
            begin
                if (xRec."Gen. Prod. Posting Group"<> "Gen. Prod. Posting Group") then begin if GenProdPostingGroup.ValidateVatProdPostingGroup (GenProdPostingGroup,"Gen. Prod. Posting Group") then Validate("VAT Prod. Posting Group", GenProdPostingGroup."Def. VAT Prod. Posting Group"); end;
            end;
        }
        field(120; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT prod. posting group';
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
        SeminarSetup : Record "CSD Seminar Setup";
        //CommentLine : record "CSD Seminar Comment Line";
        Seminar : Record "CSD Seminar";
        GenProdPostingGroup : Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert();
    begin
        if "No." = '' then begin
            SeminarSetup.get;
            SeminarSetup.TestField("Seminar Nos.");
            NoSeriesMgt.InitSeries(SeminarSetup."Seminar Nos.",xRec."No. Series",0D,"No.","No. Series");
        end;
    end;

    trigger OnModify();
    begin
        "Last Day Modified" := Today;
    end;

    trigger OnDelete();
    begin
        //CommentLine.Reset; 
        //CommentLine.SetRange("Table Name",CommentLine."Table Name"::Seminar); 
        //CommentLine.SetRange("No.","No."); 
        //CommentLine.DeleteAll;
    end;

    trigger OnRename();
    begin
        "Last Day Modified" := Today;
    end;

}
