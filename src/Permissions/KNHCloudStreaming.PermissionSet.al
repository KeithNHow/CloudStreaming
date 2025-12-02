permissionset 50200 "KNH Cloud Streaming"
{
    Assignable = true;
    Caption = 'KNH Cloud Streaming', MaxLength = 30;
    Permissions = table KNH_Description = X,
        tabledata KNH_Description = RMID,
        page KNH_Description = X,
        page KNH_PictureMemo = X,
        codeunit KNH_StreamingFunctions = X;
}