/// <summary>
/// Page KNH Blob (ID 50200).
/// </summary>
page 50200 "KNH Description"
{
    PageType = Card;
    SourceTable = "KNH Description";
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Description';

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Memo; Rec.Memo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Memo';
                    MultiLine = true;
                }
            }
        }
        area(factboxes)
        {
            systempart(Control1900383207; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(Control1905767507; Notes)
            {
                ApplicationArea = Notes;
                Visible = false;
            }
            part(DescMemo; "KNH Picture Memo")
            {
                ApplicationArea = All;
                Caption = 'Picture Memo';
                SubPageLink = "Primary Key" = Field("Primary Key");
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
