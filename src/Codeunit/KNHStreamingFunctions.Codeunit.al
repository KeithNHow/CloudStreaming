/// <summary>
/// Codeunit Streaming Functions (ID 50200).
/// </summary>
codeunit 50200 "KNH_StreamingFunctions"
{
    var
        KNHDescription: Record KNH_Description;

    /// <summary>
    /// ImportPicture.
    /// </summary>
    procedure ImportPicture()
    var
        PicInStream: InStream;
        TempFileName: Text;
        DialogTitleTxt: Label 'Please select a File...';
    begin
        UploadIntoStream(DialogTitleTxt, '', '(*.*)|*.*', TempFileName, PicInStream);
        Clear(this.KNHDescription.Picture);
        this.KNHDescription.Picture.ImportStream(PicInStream, 'Picture');
        this.KNHDescription.Modify();
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
        Clear(this.KNHDescription.Picture);
        this.KNHDescription.Modify();
    end;
}
