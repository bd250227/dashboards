SELECT
	*
FROM
	`com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
WHERE
	BusinessDate = CURRENT_DATE()
LIMIT 2;