-- duration
SELECT 
    [log_id],
    [process_name],
    [start_time],
    [end_time],
    [status],
    [created_at],
    DATEDIFF(MILLISECOND, [start_time], [end_time]) AS [duration_ms]
FROM 
    [ProcessLog]
GO

-- average
SELECT 
    [process_name],
    AVG(DATEDIFF(MILLISECOND, start_time, end_time)) AS average_duration_ms
FROM 
    [ProcessLog]
GROUP BY
    [process_name]
GO

