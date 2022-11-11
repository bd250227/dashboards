-- Count up all distinct events by terminal on the day of my on-site
SELECT
    State AS state,
    TouchPointId AS touch_point_id,
    COUNT(*) AS total_events,
    MAX(Timestamp) AS most_recent_event,
    
FROM
	`com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
WHERE
    BusinessDate = '2022-10-27'
GROUP BY
    State,
    TouchPointId
ORDER BY
    touch_point_id,
    total_events DESC