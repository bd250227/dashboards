SELECT
    Id,
    ModeName,
    ModeState,
    `State`,
	`Timestamp`
FROM
	`com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
WHERE
	`Timestamp` > TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 2 HOUR) 
ORDER BY
    `Timestamp` DESC
LIMIT 10;