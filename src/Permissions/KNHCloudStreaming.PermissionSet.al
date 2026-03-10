permissionset 50200 KNHCloudStreaming
{
    Assignable = true;
    Caption = 'KNH Cloud Streaming', MaxLength = 30;
    Permissions = table KNHDescription = X,
        tabledata KNHDescription = RMID,
        page KNHDescription = X,
        page KNHPictureMemo = X,
        codeunit KNHStreamingFunctions = X;
}