
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/06/2023 11:09:53
-- Generated from EDMX file: C:\Users\yountai\source\repos\WebApplication4\WebApplication4\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_memberqqq]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[qqqs] DROP CONSTRAINT [FK_memberqqq];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[members]', 'U') IS NOT NULL
    DROP TABLE [dbo].[members];
GO
IF OBJECT_ID(N'[dbo].[qqqs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[qqqs];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'members'
CREATE TABLE [dbo].[members] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] varchar(50)  NULL,
    [phone] varchar(10)  NULL
);
GO

-- Creating table 'qqqs'
CREATE TABLE [dbo].[qqqs] (
    [ud] int IDENTITY(1,1) NOT NULL,
    [hi] varchar(50)  NOT NULL,
    [member_id] int  NOT NULL
);
GO

-- Creating table 'a'
CREATE TABLE [dbo].[a] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [b_Id] int  NOT NULL
);
GO

-- Creating table 'b'
CREATE TABLE [dbo].[b] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'members'
ALTER TABLE [dbo].[members]
ADD CONSTRAINT [PK_members]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [ud] in table 'qqqs'
ALTER TABLE [dbo].[qqqs]
ADD CONSTRAINT [PK_qqqs]
    PRIMARY KEY CLUSTERED ([ud] ASC);
GO

-- Creating primary key on [Id] in table 'a'
ALTER TABLE [dbo].[a]
ADD CONSTRAINT [PK_a]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'b'
ALTER TABLE [dbo].[b]
ADD CONSTRAINT [PK_b]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [member_id] in table 'qqqs'
ALTER TABLE [dbo].[qqqs]
ADD CONSTRAINT [FK_memberqqq]
    FOREIGN KEY ([member_id])
    REFERENCES [dbo].[members]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_memberqqq'
CREATE INDEX [IX_FK_memberqqq]
ON [dbo].[qqqs]
    ([member_id]);
GO

-- Creating foreign key on [b_Id] in table 'a'
ALTER TABLE [dbo].[a]
ADD CONSTRAINT [FK_ab]
    FOREIGN KEY ([b_Id])
    REFERENCES [dbo].[b]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ab'
CREATE INDEX [IX_FK_ab]
ON [dbo].[a]
    ([b_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------