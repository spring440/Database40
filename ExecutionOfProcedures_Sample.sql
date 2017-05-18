/*
create insert procedure that inserts presentation(s) and its speakers.

I will test with the following:

Execute insertPresentation 'Speaker1', 'Presentation1'
Execute insertPresentation 'Speaker1', 'Presentation2'

I will test selecting presentations and speakers associated with them.


create select procedure that selects presentations per track in the Budapest.
*/
EXECUTE dbo.usp_Insert_PresenterPresentation 'Arin', 'Zargarian', 'A dive into Data Quality Services', 'SQLSaturday #626 - Budapest 2017';
EXECUTE dbo.usp_Insert_PresenterPresentation 'Arin1', 'Zargarian1', 'A dive into Data Quality Services', 'SQLSaturday #626 - Budapest 2017';

EXECUTE dbo.usp_Search_Event_Class_Track 'SQLSaturday #626 - Budapest 2017';