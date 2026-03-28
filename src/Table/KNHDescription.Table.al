/// <summary>
/// Bespoke table to store description data. This includes a picture and a memo field. The primary key is a code field that can be used to link this description to other tables in the system.
/// </summary>
namespace KNHCloudStreaming;

table 50200 KNHDescription
{
    Caption = 'KNH Description';
    DataClassification = CustomerContent;
    AllowInCustomizations = AsReadWrite;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = CustomerContent;
        }
        field(2; Picture; Media)
        {
            Caption = 'Picture';
            DataClassification = CustomerContent;
        }
        field(3; Memo; Text[100])
        {
            Caption = 'Memo';
            DataClassification = CustomerContent;
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
