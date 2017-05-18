INSERT INTO dbo.role (roleD, roleDescription)
SELECT roleID, roleDescription 
	FROM (
		SELECT 1 AS roleID, 'student'AS roleDescription  UNION ALL
		SELECT 2 AS roleID, 'organizer'AS roleDescription  UNION ALL
		SELECT 3 AS roleID, 'presenter'AS roleDescription  UNION ALL
		SELECT 4 AS roleID, 'sponsor'AS roleDescription  UNION ALL
		SELECT 5 AS roleID, 'volunteer'AS roleDescription)
		 AS MainQry
	WHERE NOT EXISTS (SELECT 1 FROM dbo.role r WHERE r.roleD=MainQry.roleID)
		 
SELECT *FROM dbo.role;





