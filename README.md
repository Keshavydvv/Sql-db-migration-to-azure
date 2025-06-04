On-Premise to Azure SQL Database Migration - StudentDemo Project

This project simulates the process of migrating an on-premise SQL Server database to Microsoft Azure SQL Database using the Data Migration Assistant (DMA). It demonstrates schema and data migration, cloud connectivity configuration, and post-migration validation using SQL Server Management Studio (SSMS).

Tools and Technologies Used

SQL Server (Local)     Simulated on-premise database

SQL Server Management Studio (SSMS)    Querying and management

Azure SQL Database    Target cloud-hosted SQL instance

Data Migration Assistant (DMA)     Schema and data migration to Azure SQL

Project Setup Summary

1. Local Database Setup

A sample database named StudentDemo was created locally using SSMS.

CREATE DATABASE StudentDemo;
GO
USE StudentDemo;
CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Department NVARCHAR(100)
);
INSERT INTO Students VALUES (1, 'Keshav', 'Computer Science');

2. Azure SQL Database Configuration

Created a logical SQL server: keshav-sqlserver

Created an Azure SQL database named StudentDemo

Enabled public network access and added current IP to firewall rules

Set SQL Server admin login as azureuser and configured password

3. Data Migration Assistant (DMA) Process

Launched DMA and created a new project

Source: Localhost SQL Server

Target: Azure SQL Server (keshav-sqlserver.database.windows.net)

Selected the StudentDemo database

Migrated both schema and data

Verified all steps executed successfully with no errors

4. Validation in SSMS (Post Migration)

Connected to Azure SQL Database from SSMS using:

Server: keshav-sqlserver.database.windows.net

Authentication: SQL Server Authentication

Username: azureuser

Verified the data:

USE StudentDemo;
SELECT * FROM Students;

Expected Output:

ID | Name   | Department
---|--------|------------------
1  | Keshav | Computer Science

Outcome

Successfully migrated schema and data from local SQL Server to Azure SQL Database

Validated cloud database access using SSMS

Demonstrated a complete SQL Server migration process suitable for practical and academic documentation

Project Folder Structure

sql-db-migration/
├── README.md
├── sql/
│   └── create_students_table.sql
├── screenshots/
│   ├── dma-success.png
│   ├── ssms-query-output.png
│   └── azure-db-overview.png


References

Data Migration Assistant: https://aka.ms/dma

SSMS Download: https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms

Azure SQL Docs: https://learn.microsoft.com/en-us/azure/azure-sql/

