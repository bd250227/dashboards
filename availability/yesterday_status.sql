WITH yesterday_statuses AS (
  SELECT
    TouchPointId,
    TransactionCategory,
    EXTRACT(HOUR FROM Timestamp) AS hour,
    Type,
    ModeState,
    Status,
    Timestamp,
  FROM
    `com-centralreports-cug01-qa`.engineering.SCO_STG_System_Msg_View
  WHERE
    BusinessDate = CURRENT_DATE() -1
)

SELECT    TouchPointId, TransactionCategory, EXTRACT(HOUR FROM Timestamp) AS hour,
          Type, ModeState, Status, Timestamp,
FROM      yesterday_statuses
WHERE     TouchPointId = 'terminal01' AND hour < 21
ORDER BY  TouchPointId, Timestamp