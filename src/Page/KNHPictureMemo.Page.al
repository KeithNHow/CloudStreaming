/// <summary>
/// Page "KNH Picture Memo" (ID 50201).
/// </summary>
page 50201 "KNH_PictureMemo"
{
    PageType = CardPart;
    SourceTable = "KNH_Description";
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;

    layout
    {
        area(content)
        {
            field(Picture2; Rec.Picture)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of Picture field.';
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(ImportText)
            {
                ApplicationArea = All;
                Caption = 'Import';
                Image = Import;
                ToolTip = 'Import a Picture.';

                trigger OnAction()
                begin
                    KNHStreamingFunctions.ImportPicture();
                end;
            }
            action(ExportText)
            {
                ApplicationArea = All;
                Caption = 'Export';
                Image = Export;
                ToolTip = 'Export a Picture.';

                trigger OnAction()
                begin
                    KNHStreamingFunctions.ExportPicture();
                end;
            }
        }
    }
    var
        KNHStreamingFunctions: Codeunit KNH_StreamingFunctions;
}
