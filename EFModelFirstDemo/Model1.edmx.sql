
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/31/2019 11:25:19
-- Generated from EDMX file: E:\repos\EntityFramework\EFModelFirstDemo\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EntityTestDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'StudentSet'
CREATE TABLE [dbo].[StudentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Age] nvarchar(max)  NOT NULL,
    [TeacherId] int  NOT NULL
);
GO

-- Creating table 'Teachers'
CREATE TABLE [dbo].[Teachers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'StudentSet'
ALTER TABLE [dbo].[StudentSet]
ADD CONSTRAINT [PK_StudentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Teachers'
ALTER TABLE [dbo].[Teachers]
ADD CONSTRAINT [PK_Teachers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TeacherId] in table 'StudentSet'
ALTER TABLE [dbo].[StudentSet]
ADD CONSTRAINT [FK_TeacherStudent]
    FOREIGN KEY ([TeacherId])
    REFERENCES [dbo].[Teachers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TeacherStudent'
CREATE INDEX [IX_FK_TeacherStudent]
ON [dbo].[StudentSet]
    ([TeacherId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------