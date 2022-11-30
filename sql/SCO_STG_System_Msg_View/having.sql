-- select the stores with message activity above arbitrary threshold (1000)
SELECT
	StoreId,
	COUNT(*) AS num_msgs
FROM
	`com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
GROUP BY
	StoreId
HAVING
	num_msgs > 1000
ORDER BY
	num_msgs DESC;