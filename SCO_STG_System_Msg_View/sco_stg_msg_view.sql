SELECT
	-- BusinessDate AS b_date,
	-- State as state,
	*
FROM
	`com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
WHERE
	State = 'readyForTransaction'
ORDER BY
	BusinessDate DESC
LIMIT 10;