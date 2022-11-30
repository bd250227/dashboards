SELECT
	DISTINCT(`Type`)
FROM
	`com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
WHERE
    BusinessDate > DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY);