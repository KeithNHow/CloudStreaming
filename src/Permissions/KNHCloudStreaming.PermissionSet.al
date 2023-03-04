/// <summary>
/// PermSet "KNH_CloudStreaming" (ID 50200).
/// </summary>
permissionset 50200 "KNH_CloudStreaming"
{
    Assignable = true;
    Caption = 'Cloud Streaming', MaxLength = 30;
    Permissions =
        table "KNH_Description" = X,
        tabledata "KNH_Description" = RMID,
        page "KNH_Description" = X,
        page "KNH_PictureMemo" = X,
        codeunit "KNH_StreamingFunctions" = X;
}
