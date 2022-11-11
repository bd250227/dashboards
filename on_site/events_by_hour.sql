-- Agg itemize events by hour and terminal on the day of my on-site
SELECT
    TouchPointId AS touch_point_id,
    DATETIME_TRUNC(Timestamp, HOUR) AS hour,
    COUNT(*) AS total_events,
FROM
	`com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
WHERE
    BusinessDate = '2022-10-27'
    AND State = 'itemize'
GROUP BY
    TouchPointId,
    hour
ORDER BY
    touch_point_id,
    hour