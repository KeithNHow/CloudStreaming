/// <summary>
/// Page "KNH Description Memo" (ID 50201).
/// </summary>
page 50201 "KNH Picture Memo"
{
    PageType = CardPart;
    SourceTable = "KNH Description";
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
                    ImportPicture();
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
                    ExportPicture();
                end;
            }
        }
    }

    /// <summary>
    /// ImportPicture.
    /// </summary>
    procedure ImportPicture()
    var
        DialogTitleTxt: Label 'Please select a File...';
        PicInStream: InStream;
        TempFileName: Text;
    begin
        UploadIntoStream(DialogTitleTxt, '', '(*.*)|*.*', TempFileName, PicInStream);
        Clear(Rec.Picture);
        Rec.Picture.ImportStream(PicInStream, 'Picture');
        Rec.Modify();
    end;

    /// <summary>
    /// ExportPicture.
    /// </summary>
    procedure ExportPicture()
    var
        TempBLOB: codeunit "Temp Blob";
        Data: BigText;
        PicInStream: InStream;
        PicOutStream: OutStream;
        TempFileName: Text;
    begin
        TempBLOB.CreateOutStream(PicOutStream);
        Data.Write(PicOutStream);
        TempBLOB.CreateInStream(PicInStream);
        TempFileName := 'ExportPic.jpg';
        DownloadFromStream(PicInStream, '', '', '', TempFileName);
        Clear(Rec.Picture);
        Rec.Modify();
    end;
}
