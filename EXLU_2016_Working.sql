USE [GISWORK]
GO

/****** Object:  Table [dataloader].[EXLU_2016_WORKING]    Script Date: 4/7/2017 12:24:25 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dataloader].[EXLU_2016_WORKING](
	[OBJECTID] [int] NOT NULL,
	[LONG_DISPLAY_ID] [int] NULL,
	[DEV_STATUS] [nvarchar](50) NULL,
	[LONG_CODE_NAME] [nvarchar](255) NULL,
	[MAGID] [int] NULL,
	[SQ_MILES] [numeric](38, 8) NULL,
	[Shape] [geometry] NULL,
	[created_user] [nvarchar](255) NULL,
	[created_date] [datetime2](7) NULL,
	[last_edited_user] [nvarchar](255) NULL,
	[last_edited_date] [datetime2](7) NULL,
 CONSTRAINT [R362_pk] PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 75) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dataloader].[EXLU_2016_WORKING]  WITH CHECK ADD  CONSTRAINT [g246_ck] CHECK  (([SHAPE].[STSrid]=(2868)))
GO

ALTER TABLE [dataloader].[EXLU_2016_WORKING] CHECK CONSTRAINT [g246_ck]
GO


