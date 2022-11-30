SELECT
    `State` AS state,
    COUNT(*) AS oos_event_count
FROM
	`com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
WHERE
    -- yesterday
	BusinessDate = DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY)
GROUP BY
    `State`
ORDER BY
    state
LIMIT 100;