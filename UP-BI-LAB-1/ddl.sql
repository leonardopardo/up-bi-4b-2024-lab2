CREATE DATABASE TICKETUP
GO

-- ////////////////////////////////////////////////////

USE TICKETUP
GO

-- ////////////////////////////////////////////////////

DROP TABLE IF EXISTS ScannedTickets
GO

CREATE TABLE [ScannedTickets] (
    [ticket_id] VARCHAR(50) PRIMARY KEY,
    [purchase_reference] VARCHAR(50),
    [type] VARCHAR(50),
    [grandstand] VARCHAR(50),
    [sector] VARCHAR(50),
    [event_code] VARCHAR(50),
    [event_type] VARCHAR(50),
    [mean_price] DECIMAL(10, 2),
    [country_name] VARCHAR(50),
    [country_code] VARCHAR(50),
    [sport_organization_code] VARCHAR(50),
    [dim_user] INT,
    [updated_at] DATETIME
)
GO

-- ////////////////////////////////////////////////////

DROP TABLE IF EXISTS ScannedTicketsClone
GO

CREATE TABLE [ScannedTicketsClone] (
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [ticket_id] VARCHAR(50),
    [purchase_reference] VARCHAR(50),
    [type] VARCHAR(50),
    [grandstand] VARCHAR(50),
    [sector] VARCHAR(50),
    [event_code] VARCHAR(50),
    [event_type] VARCHAR(50),
    [mean_price] DECIMAL(10, 2),
    [country_name] VARCHAR(50),
    [country_code] VARCHAR(50),
    [sport_organization_code] VARCHAR(50),
    [dim_user] INT,
    [updated_at] DATETIME
)
GO

-- ////////////////////////////////////////////////////

DROP TABLE IF EXISTS ScannedTicketsCloneBig
GO

CREATE TABLE [ScannedTicketsCloneBig] (
    [id] INT IDENTITY(1,1) PRIMARY KEY,
    [ticket_id] VARCHAR(50),
    [purchase_reference] VARCHAR(50),
    [type] VARCHAR(50),
    [grandstand] VARCHAR(50),
    [sector] VARCHAR(50),
    [event_code] VARCHAR(50),
    [event_type] VARCHAR(50),
    [mean_price] DECIMAL(10, 2),
    [country_name] VARCHAR(50),
    [country_code] VARCHAR(50),
    [sport_organization_code] VARCHAR(50),
    [dim_user] INT,
    [updated_at] DATETIME
)
GO

-- ////////////////////////////////////////////////////

DROP TABLE IF EXISTS [ProcessLog]
GO

CREATE TABLE [ProcessLog] (
    [log_id] INT IDENTITY(1,1) PRIMARY KEY,
    [process_name] NVARCHAR(100) NOT NULL,
    [start_time] DATETIME NOT NULL,
    [end_time] DATETIME,
    [status] NVARCHAR(50) NOT NULL,
    [created_at] DATETIME DEFAULT GETDATE()
)
GO
