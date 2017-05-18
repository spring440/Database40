CREATE PROCEDURE dbo.usp_BackupDatabase 
	@OperationType CHAR(1) = '' --(F)ull, (D)ifferential, Transaction (L)og
	,@SelectedDBName SYSNAME = '' -- Database Name 
	,@BackupFileFolderPath NVARCHAR(MAX) = 'C:\Backup\' -- Backup Folder 
	,@CopyOnlyFullBackup BIT = 0 -- Copy Only Full backup???
	,@CompressBackupFullBackup BIT = 0  -- Compress the backup

AS
DECLARE @sqlCommand NVARCHAR(MAX) = '', @BackupFile NVARCHAR(MAX) = '', @BackupName NVARCHAR(MAX) = '', @SuggestedFileName NVARCHAR(MAX) = ''

SET @SuggestedFileName = REPLACE(CONVERT(VARCHAR, CURRENT_TIMESTAMP, 101),'/','') + '_' +  REPLACE(CONVERT(VARCHAR, CURRENT_TIMESTAMP, 108),':','');  

IF @OperationType = 'F'
    SET @BackupFile = @BackupFileFolderPath + @SelectedDBName + '_FULL_'+ (CASE WHEN @CopyOnlyFullBackup = 1 THEN 'CopyOnly_' ELSE '' End) + @SuggestedFileName + '.BAK';
ELSE IF @OperationType = 'D' 
    SET @BackupFile = @BackupFileFolderPath + @SelectedDBName + '_DIFF_'+ '.BAK';
ELSE IF @OperationType = 'L'
    SET @BackupFile = @BackupFileFolderPath + @SelectedDBName + '_LOG_'+ @SuggestedFileName + '.TRN';

IF @OperationType = 'F'
    SET @BackupName = @SelectedDBName + ' Full Backup at '+ @SuggestedFileName;
IF @OperationType = 'D'
    SET @BackupName = @SelectedDBName + ' Differential Backup at '+ @SuggestedFileName;
IF @OperationType = 'L'
    SET @BackupName = @SelectedDBName + ' Log Backup at '+ @SuggestedFileName;

IF @OperationType = 'F' 
BEGIN
	SET @sqlCommand = 'BACKUP DATABASE [' + @SelectedDBName +  '] TO DISK = '''+ @BackupFile + ''' WITH INIT, NAME= ''' +@BackupName+''', SKIP, NOFORMAT' + (Case When IsNull(@CopyOnlyFullBackup, 0) = 1 Then ', COPY_ONLY' Else '' End) + (Case When IsNull(@CompressBackupFullBackup, 0) = 1 Then ', COMPRESSION' Else '' End) + ', STATS = 5' ;
END
IF @OperationType = 'D'
BEGIN
    SET @sqlCommand = 'BACKUP DATABASE [' + @SelectedDBName +  '] TO DISK = '''+ @BackupFile + ''' WITH DIFFERENTIAL, NOINIT, NAME= ''' +@BackupName+''', NOSKIP, NOFORMAT' + ', STATS = 5' ;
END
IF @OperationType = 'L' 
BEGIN
    SET @sqlCommand = 'BACKUP LOG [' + @SelectedDBName +  '] TO DISK = '''+ @BackupFile + ''' WITH NOINIT, NAME= ''' +@BackupName+''', NOSKIP, NOFORMAT, STATS = 5' ;
END

PRINT(@sqlCommand) 
EXEC sp_EXECUTESQL @sqlCommand

