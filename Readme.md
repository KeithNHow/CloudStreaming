# Summary
Extension contains 1 Codeunit, 2 pages and 1 table.

# Description table
The table is a bespoke table to store description data. This includes a picture and a memo field. The primary key is a code field that can be used to link this description to other tables in the system.

# Description page
This is a card page that displays a memo from the KNHDescription table. The page includes factboxes for Links, Notes, and a part page for displaying a picture.

# Picture Memo page
This is a card part page that displays a media picture from the KNHDescription table. It includes actions to import and export the picture, which utilize streaming functions defined in the KNHStreamingFunctions codeunit.

# Streaming Functions
This codeunit defines streaming functions for importing and exporting pictures in the KNHDescription table. The functions utilize the AL language's built-in streaming capabilities to handle file uploads and downloads, allowing users to manage the picture.