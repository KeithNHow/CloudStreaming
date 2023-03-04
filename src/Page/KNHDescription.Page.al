/// <summary>
/// Page "KNH_Description" (ID 50200).
/// </summary>
page 50200 "KNH_Description"
{
    PageType = Card;
    SourceTable = "KNH_Description";
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
            part(DescMemo; "KNH_PictureMemo")
            {
                ApplicationArea = All;
                Caption = 'Picture Memo';
                SubPageLink = "Primary Key" = field("Primary Key");
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
