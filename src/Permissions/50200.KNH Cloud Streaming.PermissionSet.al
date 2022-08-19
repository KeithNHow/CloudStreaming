/// <summary>
/// Unknown "CloudStreaming" (ID 50200).
/// </summary>
permissionset 50200 "KNH Cloud Streaming"
{
    Assignable = true;
    Caption = 'Cloud Streaming', MaxLength = 30;
    Permissions =
        table "KNH Description" = X,
        tabledata "KNH Description" = RMID,
        page "KNH Description" = X,
        page "KNH Picture Memo" = X;
}
