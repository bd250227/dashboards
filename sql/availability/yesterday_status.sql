WITH yesterday_statuses AS (
  SELECT  (
            SELECT  MAX(Timestamp),
            FROM    `com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
            WHERE   Status IN ('stopped', 'failure', 'normal')
                    AND EXTRACT(HOUR FROM Timestamp) < 13
                    AND BusinessDate = CURRENT_DATE() -1      
          ) AS last_non_null_tx_timestamp,
          TouchPointId,
          TransactionCategory,
          EXTRACT(HOUR FROM Timestamp) AS hour,
          Type,
          ModeState,
          Status,
          Timestamp,
  FROM    `com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
  WHERE    BusinessDate = CURRENT_DATE() -1
)

SELECT
          TouchPointId, 
          TransactionCategory,
          EXTRACT(HOUR FROM Timestamp) AS hour,
          Type, 
          ModeState, 
          Status, 
          Timestamp,
FROM      yesterday_statuses
WHERE     TouchPointId = 'terminal01'
          AND Timestamp >= last_non_null_tx_timestamp
          -- AND hour < 21
          AND Status IS NOT NULL
ORDER BY  TouchPointId, Timestamp