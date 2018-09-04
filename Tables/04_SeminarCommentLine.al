table 123456704 "CSD Seminar Comment Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Seminar Comment Line';
    fields
    {
        field(10;"Table name";Option)
        {
            Caption='Table Name'; 
            OptionMembers="Seminar","Seminar Registration Header","Posted Seminar Reg. Header"; 
            OptionCaption='Seminar,Seminar Registration Header,Posted Seminar Reg. Header';
        }
        field(20;"Document Line No.";Integer)
        {
            Caption = 'Document Line No.';           
        }
        field(30;"No.";code[20])
        {
            Caption = 'No.';
            TableRelation=if ("Table Name"=CONST(Seminar)) "CSD Seminar";
        }
        field(40;"line No.";code[20])
        {
            Caption = 'Line No.';
        }
        field(50;"Date";Date)
        {
            caption = 'Date';
        }
        field(60;"Code";Code[10])
        {
            Caption = 'Code';
        }
        field(70;"Comment";Text[80])
        {
            Caption = 'Comment';
        }

    }

    keys
    {
        key(PK;"Table name","Document Line No.","No.","line No.")
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

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