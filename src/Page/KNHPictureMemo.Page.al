/// <summary>
/// This is a card part page that displays a media picture from the KNHDescription table. It includes actions to import and export the picture, which utilize streaming functions defined in the KNHStreamingFunctions codeunit.
/// </summary>
namespace KNHCloudStreaming;

page 50201 KNHPictureMemo
{
    PageType = CardPart;
    SourceTable = KNHDescription;
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
                    this.KNHStreamingFunctions.ImportPicture();
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
                    this.KNHStreamingFunctions.ExportPicture();
                end;
            }
        }
    }

    var
        KNHStreamingFunctions: Codeunit KNHStreamingFunctions;
}
