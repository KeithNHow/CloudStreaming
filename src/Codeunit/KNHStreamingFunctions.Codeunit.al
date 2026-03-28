/// <summary>
/// This codeunit defines streaming functions for importing and exporting pictures in the "KNH_Description" table. The functions utilize the AL language's built-in streaming capabilities to handle file uploads and downloads, allowing users to manage the picture.
/// </summary>
namespace KNHCloudStreaming;
using System.Utilities;

codeunit 50200 KNHStreamingFunctions
{
    var
        KNHDescription: Record KNHDescription;

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
