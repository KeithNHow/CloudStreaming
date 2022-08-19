/// <summary>
/// Table KNH Description (ID 50200).
/// </summary>
table 50200 "KNH Description"
{
    Caption = 'KNH Description';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(2; Picture; Media)
        {
            Caption = 'Picture';
            DataClassification = ToBeClassified;
        }
        field(3; Memo; Text[100])
        {
            Caption = 'Memo';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
