/// <summary>
/// This is a card page that displays a memo from the KNHDescription table. The page includes factboxes for Links, Notes, and a part page for displaying a picture.
/// </summary>
page 50200 KNHDescription
{
    PageType = Card;
    SourceTable = KNHDescription;
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
            part(DescMemo; KNHPictureMemo)
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
