USE [QRM_TDM_DMT_Suncorp Repository_Suncorp_CM]
GO
/****** Object:  Table [dbo].[Master_Current_CM]    Script Date: 09/04/2013 10:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Current_CM](
      [ACCOUNT_NO] [numeric](28, 0) NOT NULL,
      [ACCRUED_INT] [money] NULL CONSTRAINT [DF_6A122E92-3_ACCRUED_INT_2__81]  DEFAULT ((0)),
      [ACCT_CQR] [varchar](2) NULL,
      [ACCT_SR] [varchar](2) NULL,
      [ACCT_STATUS] [char](3) NULL,
      [ALLOCATED_CASH_COL_VALUE] [money] NULL CONSTRAINT [DF_6A122E92-3_ALLOCATED_CASH_COL_VALUE_3__81]  DEFAULT ((0)),
      [AMRT_TYPE_CD] [varchar](20) NULL,
      [AMT_PAST_DUE] [money] NULL CONSTRAINT [DF_6A122E92-3_AMT_PAST_DUE_4__81]  DEFAULT ((0)),
      [ANZSIC_APRA_CATEGORIES] [varchar](50) NULL,
      [ANZSIC_CODE] [char](4) NULL,
      [ANZSIC_LEVEL_1] [varchar](100) NULL,
      [ANZSIC_LEVEL_2] [varchar](255) NULL,
      [ANZSIC_LEVEL_3] [varchar](255) NULL,
      [ANZSIC_LEVEL_4] [varchar](255) NULL,
      [ANZSIC_RBA_CATEGORIES] [varchar](100) NULL,
      [ANZSIC_SML_FINANCE_CAT] [varchar](50) NULL,
      [APRA_ASSET_CLASS] [varchar](100) NULL,
      [APRA_ASSET_CLASS_IRB] [varchar](100) NULL,
      [APRA_CATEGORY] [numeric](1, 0) NULL,
      [APRA_CLASS] [numeric](1, 0) NULL,
      [APRA_COUNTERPARTY_TYPE] [varchar](100) NULL,
      [APRA_OFF_BAL_TRANS_TYPE] [varchar](100) NULL,
      [APRA_SUB_CATEGORY] [numeric](1, 0) NULL,
      [APS113_ASSET_CATEGORY] [varchar](255) NULL,
      [APS330_SECTOR] [varchar](50) NULL,
      [AVG_PAR_BAL] [numeric](16, 2) NULL,
      [AVL_CASHBACK] [money] NULL CONSTRAINT [DF_6A122E92-3_AVL_CASHBACK_5__81]  DEFAULT ((0)),
      [BALANCE_SHEET_IND] [char](1) NOT NULL,
      [BANK_CODE] [varchar](10) NULL,
      [BANK_GUARANTEE_IND] [char](1) NULL,
      [BASIS] [nvarchar](16) NULL,
      [BASIS_FLOATING] [nvarchar](16) NULL,
      [BASIS_SWAP_PAY_MARGIN] [numeric](8, 4) NULL,
      [BASIS_SWAP_REC_MARGIN] [numeric](8, 4) NULL,
      [BRANCH_CODE] [varchar](15) NULL,
      [BROKER_ORIGINATED] [varchar](1) NULL,
      [CALC_AVAIL_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_CALC_AVAIL_BAL_6__81]  DEFAULT ((0)),
      [CANCELLABLE] [varchar](11) NULL,
      [CCF] [numeric](5, 2) NULL,
      [CEA_OFF_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_CEA_OFF_BAL_7__81]  DEFAULT ((0)),
      [CERTAIN_DRAWDOWN] [varchar](20) NULL,
      [CLIENT_CQR] [varchar](2) NULL,
      [CLIENT_SR] [varchar](2) NULL,
      [CLMS_GROUP_NAME] [varchar](100) NULL,
      [CLMS_GROUP_NO] [numeric](14, 0) NULL,
      [CLMS_PROD_DIV] [varchar](2) NULL,
      [CLMS_PROD_DIV_DESC] [varchar](100) NULL,
      [COLL_GROUP_ID_ALL_ASSETS] [numeric](28, 0) NULL,
      [COLL_GROUP_ID_EFC] [numeric](28, 0) NULL,
      [COLL_GROUP_ID_ERM] [numeric](28, 0) NULL,
      [COLL_GROUP_ID_ERM_CHAR] [varchar](50) NULL,
      [COLL_MRKT_VAL_INDEXED_ERM] [money] NULL CONSTRAINT [DF_6A122E92-3_COLL_MRKT_VAL_INDEXED_ERM_8__81]  DEFAULT ((0)),
      [COMPANY] [varchar](10) NULL,
      [COMPOSITE_CQR] [varchar](2) NULL,
      [COMPOSITE_GROUP_ID] [varchar](30) NULL,
      [COMPOSITE_SR] [varchar](2) NULL,
      [COMPOUNDING_FREQUENCY] [varchar](30) NULL,
      [COUNTERPARTY_ABN] [numeric](16, 0) NULL,
      [COUNTERPARTY_ABS_REGION] [varchar](255) NULL,
      [COUNTERPARTY_ACN] [numeric](16, 0) NULL,
      [COUNTERPARTY_BCH_CODE] [varchar](4) NULL,
      [COUNTERPARTY_BCH_DESC] [varchar](50) NULL,
      [COUNTERPARTY_BDM] [numeric](8, 0) NULL,
      [COUNTERPARTY_BDM_DESC] [varchar](50) NULL,
      [COUNTERPARTY_COUNTRY_CD] [varchar](6) NULL,
      [COUNTERPARTY_COUNTRY_DESC] [varchar](255) NULL,
      [COUNTERPARTY_GCIS_CUST_NO] [numeric](16, 0) NULL,
      [COUNTERPARTY_NAME] [varchar](255) NULL,
      [COUNTERPARTY_PCODE] [varchar](6) NULL,
      [COUNTERPARTY_RESIDENT_FLAG] [varchar](3) NULL,
      [COUNTERPARTY_SRCE_CUST_NO] [numeric](16, 0) NULL,
      [COUNTERPARTY_STATE] [varchar](6) NULL,
      [COUNTERPARTY_TYPE] [varchar](255) NULL,
      [COUNTERPARTY_ULTIMATE_RISK_CMNE] [varchar](30) NULL,
      [COUNTERPARTY_ULTIMATE_RISK_NAME] [varchar](60) NULL,
      [CR_APPROACH] [varchar](2) NULL,
      [CR_CCF_AIRB] [numeric](16, 4) NULL,
      [CR_CCF_CP] [numeric](16, 4) NULL,
      [CR_CORRELATION_AIRB] [numeric](16, 4) NULL,
      [CR_CORRELATION_CP] [numeric](16, 4) NULL,
      [CR_EAD_AIRB] [money] NULL,
      [CR_EAD_CP] [money] NULL,
      [CR_EAD_ECAP] [money] NULL,
      [CR_EFFECTIVEMATURITY] [numeric](16, 4) NULL,
      [CR_EL_AIRB] [money] NULL,
      [CR_EL_CP] [money] NULL,
      [CR_EL_ECAP] [money] NULL,
      [CR_FIRMSIZE] [numeric](16, 4) NULL,
      [CR_LGD_FIRB] [numeric](14, 6) NULL,
      [CR_LGD_PIT] [numeric](14, 6) NULL,
      [CR_LGD_SCORE] [varchar](4) NULL,
      [CR_LGD_SCORE_CP] [varchar](4) NULL,
      [CR_LGD_TTC] [numeric](14, 6) NULL,
      [CR_PD_PIT] [numeric](14, 6) NULL,
      [CR_PD_SCORE] [varchar](4) NULL,
      [CR_PD_SCORE_CP] [varchar](4) NULL,
      [CR_PD_TTC] [numeric](14, 6) NULL,
      [CR_PORTFOLIO] [varchar](100) NULL,
      [CR_PORTFOLIO_CP] [varchar](50) NULL,
      [CR_RISK_WEIGHT_AIRB] [numeric](8, 4) NULL,
      [CR_RISK_WEIGHT_CP] [numeric](8, 4) NULL,
      [CR_RISK_WEIGHT_ECAP] [numeric](8, 4) NULL,
      [CR_RWA_OFF_BAL_AIRB] [money] NULL,
      [CR_RWA_ON_BAL_AIRB] [money] NULL,
      [CR_RWA_TOTAL_AIRB] [money] NULL,
      [CR_RWA_TOTAL_CP] [money] NULL,
      [CR_RWA_TOTAL_ECAP] [money] NULL,
      [CR_UL_AIRB] [money] NULL,
      [CR_UL_CP] [money] NULL,
      [CR_UL_ECAP] [money] NULL,
      [CREDIT_PRODUCT_GROUP] [varchar](25) NULL,
      [CRGS_DATE_ACCT] [datetime] NULL,
      [CRGS_DATE_BORR] [datetime] NULL,
      [CUR_NET_RATE] [numeric](15, 10) NULL,
      [CUR_PAYMENT] [numeric](20, 4) NULL,
      [DATE_IN_EXCESS] [datetime] NULL,
      [DEAL_DATE] [datetime] NULL,
      [DEAL_NO] [numeric](25, 0) NULL,
      [DEPOSIT_OFFSET_ACCOUNT] [numeric](25, 0) NULL,
      [DEPOSIT_OFFSET_BALANCE] [money] NULL CONSTRAINT [DF_6A122E92-3_DEPOSIT_OFFSET_BALANCE_9__81]  DEFAULT ((0)),
      [DEPOSIT_OFFSET_RATE] [numeric](9, 5) NULL,
      [DEPT_ID] [varchar](10) NULL,
      [DLNQSTATID] [numeric](28, 0) NULL,
      [DR_CR_FLAG] [char](2) NULL,
      [DRAWN_STATUS] [varchar](20) NULL,
      [DRS_GROUP_ID] [numeric](20, 0) NULL,
      [DRS_GROUP_NAME] [varchar](200) NULL,
      [EAD_ON_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_EAD_ON_BAL_10__81]  DEFAULT ((0)),
      [ERM_FLAG] [varchar](1) NULL,
      [EXT_RATING] [varchar](2) NULL,
      [EXT_RATING_LT] [varchar](2) NULL,
      [EXT_RATING_ST] [varchar](2) NULL,
      [FACE_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_FACE_AMT_11__81]  DEFAULT ((0)),
      [FACE_AMT_BAB] [money] NULL CONSTRAINT [DF_6A122E92-3_FACE_AMT_BAB_12__81]  DEFAULT ((0)),
      [FIXCOUPSWP_PYMT] [numeric](19, 4) NULL,
      [FIXCOUPSWP_RATE] [numeric](19, 4) NULL,
      [FIXED_RATE] [numeric](8, 4) NULL,
      [FLT_RATE] [numeric](8, 4) NULL,
      [FORWARD_STARTING] [varchar](7) NULL,
      [GL_ACCOUNT_ID] [numeric](14, 0) NULL,
      [GL_ACCOUNT_ID_ACC_INT] [numeric](14, 0) NULL,
      [GL_ACCOUNT_INBA] [numeric](14, 0) NULL,
      [GTEE_DRAWN] [money] NULL CONSTRAINT [DF_6A122E92-3_GTEE_DRAWN_13__81]  DEFAULT ((0)),
      [GTEE_LIMIT] [money] NULL CONSTRAINT [DF_6A122E92-3_GTEE_LIMIT_14__81]  DEFAULT ((0)),
      [HELD_TO_MATURITY_FLAG] [varchar](1) NULL,
      [ID_NUMBER] [varchar](28) NOT NULL,
      [IFRS_CASH_FLOW_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_IFRS_CASH_FLOW_AMT_15__81]  DEFAULT ((0)),
      [IFRS_CASH_FLOW_INT] [varchar](10) NULL,
      [IFRS_EST_REC_TERM] [varchar](10) NULL,
      [IFRS_ORIG_INT_RATE] [int] NULL,
      [IMPAIRED_END_DATE] [datetime] NULL,
      [IMPAIRED_FLAG_DRS] [char](1) NULL,
      [IMPAIRED_START_DATE] [datetime] NULL,
      [IMPDPASTDUE_FLAG] [char](1) NULL,
      [IMPDPASTDUE_FLAG_ORIG] [char](1) NULL,
      [INBA] [money] NULL CONSTRAINT [DF_6A122E92-3_INBA_16__81]  DEFAULT ((0)),
      [INT_RATE_ADD_ON] [numeric](15, 4) NULL,
      [INT_RATE_BASE] [numeric](15, 4) NULL,
      [INT_RATE_CUR] [numeric](15, 4) NULL,
      [INT_RATE_MARGIN] [numeric](15, 4) NULL,
      [INT_RATE_TYPE] [nvarchar](40) NULL,
      [INTEREST_RATE_CLASSIFICATION] [varchar](3) NULL,
      [ISSUE_DATE] [datetime] NULL,
      [ISSUE_TERM] [numeric](5, 0) NULL,
      [ISSUE_TERM_MULT] [varchar](1) NULL,
      [LAST_REPRICE_DATE] [datetime] NULL,
      [LIMIT_CALCULATED] [money] NULL CONSTRAINT [DF_6A122E92-3_LIMIT_CALCULATED_17__81]  DEFAULT ((0)),
      [LIMIT_RAW] [money] NULL CONSTRAINT [DF_6A122E92-3_LIMIT_RAW_18__81]  DEFAULT ((0)),
      [LOAN_BDM] [varchar](6) NULL,
      [LOAN_BDM_DESC] [varchar](100) NULL,
      [LOAN_BRANCH] [varchar](4) NULL,
      [LOAN_BRANCH_DESC] [varchar](100) NULL,
      [LOAN_PURP] [varchar](6) NULL,
      [LOAN_SUB_PURP] [varchar](6) NULL,
      [LOCC_CITIZENSHIP] [varchar](10) NULL,
      [LOCC_OF_ORG] [varchar](10) NULL,
      [LOCC_OF_RISK] [varchar](10) NULL,
      [LOW_DOC_FLAG] [varchar](1) NULL,
      [LVR_ERM] [decimal](14, 4) NULL,
      [LVR_ERM_BAND] [varchar](20) NULL,
      [LVR_EST_GROUP] [decimal](14, 4) NULL CONSTRAINT [DF_6A122E92-3_LVR_EST_GROUP_19__81]  DEFAULT ((9.99)),
      [LVR_ORIGINAL] [numeric](9, 2) NULL,
      [MARGIN] [numeric](14, 4) NULL,
      [MARKET_OFF_BAL_FLAG] [varchar](1) NULL,
      [MASTER_LIMIT_AGREEMENT] [varchar](100) NULL,
      [MASTER_LIMIT_NO] [numeric](16, 0) NULL,
      [MAT_DATE] [datetime] NULL,
      [MAT_DATE_ADJUSTED] [numeric](3, 0) NULL,
      [MORTG_INS_CMPY] [varchar](50) NULL,
      [MORTG_INS_INDICATOR] [char](1) NULL,
      [MTM] [money] NULL CONSTRAINT [DF_6A122E92-3_MTM_20__81]  DEFAULT ((0)),
      [NET_CREDIT_EXPOSURE] [money] NULL CONSTRAINT [DF_6A122E92-3_NET_CREDIT_EXPOSURE_21__81]  DEFAULT ((0)),
      [NEXT_PAYMENT_DATE] [datetime] NULL,
      [NEXT_PAYMENT_DATE_FLOATING] [datetime] NULL,
      [NEXT_REPRICE_DATE] [datetime] NULL,
      [NEXT_REPRICE_DATE_FLOATING] [datetime] NULL,
      [NON_CORE_EXCLUSION] [varchar](1) NULL,
      [NON_CORE_FLAG] [char](1) NULL,
      [OD_DOC_TYPE] [varchar](4) NULL,
      [OFF_BAL_LlKELY_TO_DRAW_FACTOR] [numeric](15, 4) NULL,
      [OFF_BAL_PRINCIPAL_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_OFF_BAL_PRINCIPAL_AMT_22__81]  DEFAULT ((0)),
      [OPICS_CTYPE] [varchar](2) NULL,
      [ORACLE_GL_ACCT_ACCRUED_INT] [numeric](10, 0) NULL,
      [ORACLE_GL_ACCT_INBA] [numeric](10, 0) NULL,
      [ORACLE_GL_ACCT_PRINCIPAL] [numeric](10, 0) NULL,
      [ORACLE_GL_BUS_UNIT] [varchar](10) NULL,
      [ORACLE_GL_COST_CENTRE] [numeric](10, 0) NULL,
      [ORACLE_GL_COST_CENTRE_CHANNEL] [varchar](30) NULL,
      [ORACLE_GL_COST_CENTRE_EGM] [varchar](255) NULL,
      [ORACLE_GL_COST_CENTRE_NAME] [varchar](255) NULL,
      [ORACLE_GL_COST_CENTRE_REGION] [varchar](255) NULL,
      [ORACLE_GL_COST_CENTRE_STATE] [varchar](255) NULL,
      [ORACLE_GL_PRODUCT] [varchar](10) NULL,
      [ORG_TERM] [numeric](5, 0) NULL,
      [ORG_TERM_MULT  ] [varchar](1) NULL,
      [ORG_UNIT_ID] [varchar](60) NULL,
      [ORIG_DAYS_TO_MATURITY] [numeric](22, 6) NULL,
      [ORIGINAL_LOAN_AMOUNT] [money] NULL,
      [ORIGINAL_MATURITY] [float] NULL,
      [ORIGINAL_TABLE] [varchar](20) NULL,
      [ORIGINATION_DATE] [datetime] NULL,
      [OVERDUE_REVIEW_FLAG] [varchar](1) NULL,
      [PAST_DUE_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_PAST_DUE_AMT_23__81]  DEFAULT ((0)),
      [PAST_DUE_CATEGORY] [varchar](20) NULL,
      [PAST_DUE_DAYS] [numeric](28, 0) NULL,
      [PAST_DUE_DAYS_ORIG] [numeric](28, 0) NULL,
      [PAY_SPREAD] [numeric](8, 4) NULL,
      [PAYMENT_FREQUENCY] [varchar](30) NULL,
      [PAYMENT_FREQUENCY_FLOATING] [varchar](30) NULL,
      [PMT_FREQ] [numeric](5, 0) NULL,
      [PMT_FREQ_FLT] [int] NULL,
      [PORTFOLIO_DATE] [datetime] NOT NULL,
      [PROD_CODE] [varchar](16) NOT NULL,
      [PROD_DESCR] [varchar](100) NULL,
      [PRODUCT_CODE_1] [varchar](16) NULL,
      [PRODUCT_CODE_2] [varchar](6) NULL,
      [PRODUCT_CODE_3] [varchar](5) NULL,
      [PRODUCT_CODE_4] [varchar](5) NULL,
      [PRODUCT_CODE_5] [varchar](5) NULL,
      [PROV_BOOKBAL_RATIO] [decimal](5, 2) NULL,
      [PROVISION_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_PROVISION_AMT_24__81]  DEFAULT ((0)),
      [PROVISION_AMT_ADJ] [money] NULL CONSTRAINT [DF_6A122E92-3_PROVISION_AMT_ADJ_25__81]  DEFAULT ((0)),
      [PURPOSE_CLASS_CODE] [varchar](6) NULL,
      [QRM_ACCOUNT] [varchar](75) NOT NULL,
      [QRM_ACCOUNT_CM] [varchar](75) NULL,
      [QRM_PRODUCT_CM] [varchar](75) NULL,
      [RATE_INDEX] [varchar](50) NULL,
      [RATINGS_MODEL] [numeric](2, 0) NULL,
      [RATINGS_MODEL_DESC] [varchar](10) NULL,
      [REC_INTENDDATE] [datetime] NULL,
      [REC_SPREAD] [numeric](8, 4) NULL,
      [REDRAW_AVAILABLE] [varchar](1) NULL,
      [REPRICE_FREQ] [numeric](5, 0) NULL,
      [REPRICE_FREQ_MULT] [varchar](1) NULL,
      [RESIDUAL_AMOUNT] [money] NULL CONSTRAINT [DF_6A122E92-3_RESIDUAL_AMOUNT_26__81]  DEFAULT ((0)),
      [RESTRUCTURED_FLAG] [varchar](1) NULL,
      [RISK_WEIGHT] [numeric](5, 2) NULL,
      [RV_CMNE] [varchar](10) NULL,
      [RWA_OFF_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_RWA_OFF_BAL_27__81]  DEFAULT ((0)),
      [RWA_ON_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_RWA_ON_BAL_28__81]  DEFAULT ((0)),
      [SECONDARY_OFFICER] [varchar](20) NULL,
      [SECUR_POOL] [varchar](6) NULL,
      [SECUR_REPORTABLE] [varchar](3) NULL,
      [SECUR_STATUS] [varchar](2) NULL,
      [SETTLEDATE] [datetime] NULL,
      [SHORT_NAME] [varchar](255) NULL,
      [SOURCE_CURRENCY] [varchar](5) NULL,
      [SOURCE_SYSTEM] [varchar](4) NOT NULL,
      [TARGET_LVR] [numeric](7, 2) NULL,
      [TBE] [money] NULL,
      [TCE] [money] NULL,
      [TENOR] [varchar](10) NULL,
      [TP_ADDON_CALCULATION] [money] NULL CONSTRAINT [DF_6A122E92-3_TP_ADDON_CALCULATION_29__81]  DEFAULT ((0)),
      [TP_ADDON_RATE] [numeric](8, 4) NULL,
      [TP_BASE_RATE] [numeric](8, 4) NULL,
      [TP_BASIS_CALCULATION] [money] NULL CONSTRAINT [DF_6A122E92-3_TP_BASIS_CALCULATION_30__81]  DEFAULT ((0)),
      [TP_BASIS_COST] [numeric](8, 4) NULL,
      [TP_CURVE] [varchar](50) NULL,
      [TP_FUNDING_INDEX] [varchar](50) NULL,
      [TP_IRR_CALCULATION] [money] NULL CONSTRAINT [DF_6A122E92-3_TP_IRR_CALCULATION_31__81]  DEFAULT ((0)),
      [TP_MODEL] [varchar](50) NULL,
      [TP_START_POINT] [varchar](50) NULL,
      [TP_STATUS] [varchar](50) NULL,
      [TP_TRF_SPRD_CALC] [money] NULL CONSTRAINT [DF_6A122E92-3_TP_TRF_SPRD_CALC_32__81]  DEFAULT ((0)),
      [TP_WGTDAVG_BASE_RATE] [numeric](8, 4) NULL,
      [TRADING_BOOK_FLAG] [varchar](1) NOT NULL,
      [TRANSFER_RATE] [numeric](22, 6) NULL,
      [TRANSFER_SPREAD] [numeric](8, 5) NULL,
      [WATCHLIST_CREDITREC_IND] [varchar](4) NULL,
      [TCE_GROUP_ID] [int] NULL,
      [_LOAN_STATUS] [int] NOT NULL CONSTRAINT [DF_6A122E92-3__LOAN_STATUS_1__81]  DEFAULT ((-1)),
      [_PRODUCT_ID] [uniqueidentifier] NOT NULL,
CONSTRAINT [PK_Master_CM_Layout_30] PRIMARY KEY NONCLUSTERED 
(
      [ID_NUMBER] ASC,
      [QRM_ACCOUNT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Master_Current_CM_2](
      [ACCOUNT_NO] [numeric](28, 0) NOT NULL,
      [ACCRUED_INT] [money] NULL CONSTRAINT [DF_6A122E92-3_ACCRUED_INT_2__81]  DEFAULT ((0)),
      [ACCT_CQR] [varchar](2) NULL,
      [ACCT_SR] [varchar](2) NULL,
      [ACCT_STATUS] [char](3) NULL,
      [ALLOCATED_CASH_COL_VALUE] [money] NULL CONSTRAINT [DF_6A122E92-3_ALLOCATED_CASH_COL_VALUE_3__81]  DEFAULT ((0)),
      [AMRT_TYPE_CD] [varchar](20) NULL,
      [AMT_PAST_DUE] [money] NULL CONSTRAINT [DF_6A122E92-3_AMT_PAST_DUE_4__81]  DEFAULT ((0)),
      [ANZSIC_APRA_CATEGORIES] [varchar](50) NULL,
      [ANZSIC_CODE] [char](4) NULL,
      [ANZSIC_LEVEL_1] [varchar](100) NULL,
      [ANZSIC_LEVEL_2] [varchar](255) NULL,
      [ANZSIC_LEVEL_3] [varchar](255) NULL,
      [ANZSIC_LEVEL_4] [varchar](255) NULL,
      [ANZSIC_RBA_CATEGORIES] [varchar](100) NULL,
      [ANZSIC_SML_FINANCE_CAT] [varchar](50) NULL,
      [APRA_ASSET_CLASS] [varchar](100) NULL,
      [APRA_ASSET_CLASS_IRB] [varchar](100) NULL,
      [APRA_CATEGORY] [numeric](1, 0) NULL,
      [APRA_CLASS] [numeric](1, 0) NULL,
      [APRA_COUNTERPARTY_TYPE] [varchar](100) NULL,
      [APRA_OFF_BAL_TRANS_TYPE] [varchar](100) NULL,
      [APRA_SUB_CATEGORY] [numeric](1, 0) NULL,
      [APS113_ASSET_CATEGORY] [varchar](255) NULL,
      [APS330_SECTOR] [varchar](50) NULL,
      [AVG_PAR_BAL] [numeric](16, 2) NULL,
      [AVL_CASHBACK] [money] NULL CONSTRAINT [DF_6A122E92-3_AVL_CASHBACK_5__81]  DEFAULT ((0)),
      [BALANCE_SHEET_IND] [char](1) NOT NULL,
      [BANK_CODE] [varchar](10) NULL,
      [BANK_GUARANTEE_IND] [char](1) NULL,
      [BASIS] [nvarchar](16) NULL,
      [BASIS_FLOATING] [nvarchar](16) NULL,
      [BASIS_SWAP_PAY_MARGIN] [numeric](8, 4) NULL,
      [BASIS_SWAP_REC_MARGIN] [numeric](8, 4) NULL,
      [BRANCH_CODE] [varchar](15) NULL,
      [BROKER_ORIGINATED] [varchar](1) NULL,
      [CALC_AVAIL_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_CALC_AVAIL_BAL_6__81]  DEFAULT ((0)),
      [CANCELLABLE] [varchar](11) NULL,
      [CCF] [numeric](5, 2) NULL,
      [CEA_OFF_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_CEA_OFF_BAL_7__81]  DEFAULT ((0)),
      [CERTAIN_DRAWDOWN] [varchar](20) NULL,
      [CLIENT_CQR] [varchar](2) NULL,
      [CLIENT_SR] [varchar](2) NULL,
      [CLMS_GROUP_NAME] [varchar](100) NULL,
      [CLMS_GROUP_NO] [numeric](14, 0) NULL,
      [CLMS_PROD_DIV] [varchar](2) NULL,
      [CLMS_PROD_DIV_DESC] [varchar](100) NULL,
      [COLL_GROUP_ID_ALL_ASSETS] [numeric](28, 0) NULL,
      [COLL_GROUP_ID_EFC] [numeric](28, 0) NULL,
      [COLL_GROUP_ID_ERM] [numeric](28, 0) NULL,
      [COLL_GROUP_ID_ERM_CHAR] [varchar](50) NULL,
      [COLL_MRKT_VAL_INDEXED_ERM] [money] NULL CONSTRAINT [DF_6A122E92-3_COLL_MRKT_VAL_INDEXED_ERM_8__81]  DEFAULT ((0)),
      [COMPANY] [varchar](10) NULL,
      [COMPOSITE_CQR] [varchar](2) NULL,
      [COMPOSITE_GROUP_ID] [varchar](30) NULL,
      [COMPOSITE_SR] [varchar](2) NULL,
      [COMPOUNDING_FREQUENCY] [varchar](30) NULL,
      [COUNTERPARTY_ABN] [numeric](16, 0) NULL,
      [COUNTERPARTY_ABS_REGION] [varchar](255) NULL,
      [COUNTERPARTY_ACN] [numeric](16, 0) NULL,
      [COUNTERPARTY_BCH_CODE] [varchar](4) NULL,
      [COUNTERPARTY_BCH_DESC] [varchar](50) NULL,
      [COUNTERPARTY_BDM] [numeric](8, 0) NULL,
      [COUNTERPARTY_BDM_DESC] [varchar](50) NULL,
      [COUNTERPARTY_COUNTRY_CD] [varchar](6) NULL,
      [COUNTERPARTY_COUNTRY_DESC] [varchar](255) NULL,
      [COUNTERPARTY_GCIS_CUST_NO] [numeric](16, 0) NULL,
      [COUNTERPARTY_NAME] [varchar](255) NULL,
      [COUNTERPARTY_PCODE] [varchar](6) NULL,
      [COUNTERPARTY_RESIDENT_FLAG] [varchar](3) NULL,
      [COUNTERPARTY_SRCE_CUST_NO] [numeric](16, 0) NULL,
      [COUNTERPARTY_STATE] [varchar](6) NULL,
      [COUNTERPARTY_TYPE] [varchar](255) NULL,
      [COUNTERPARTY_ULTIMATE_RISK_CMNE] [varchar](30) NULL,
      [COUNTERPARTY_ULTIMATE_RISK_NAME] [varchar](60) NULL,
      [CR_APPROACH] [varchar](2) NULL,
      [CR_CCF_AIRB] [numeric](16, 4) NULL,
      [CR_CCF_CP] [numeric](16, 4) NULL,
      [CR_CORRELATION_AIRB] [numeric](16, 4) NULL,
      [CR_CORRELATION_CP] [numeric](16, 4) NULL,
      [CR_EAD_AIRB] [money] NULL,
      [CR_EAD_CP] [money] NULL,
      [CR_EAD_ECAP] [money] NULL,
      [CR_EFFECTIVEMATURITY] [numeric](16, 4) NULL,
      [CR_EL_AIRB] [money] NULL,
      [CR_EL_CP] [money] NULL,
      [CR_EL_ECAP] [money] NULL,
      [CR_FIRMSIZE] [numeric](16, 4) NULL,
      [CR_LGD_FIRB] [numeric](14, 6) NULL,
      [CR_LGD_PIT] [numeric](14, 6) NULL,
      [CR_LGD_SCORE] [varchar](4) NULL,
      [CR_LGD_SCORE_CP] [varchar](4) NULL,
      [CR_LGD_TTC] [numeric](14, 6) NULL,
      [CR_PD_PIT] [numeric](14, 6) NULL,
      [CR_PD_SCORE] [varchar](4) NULL,
      [CR_PD_SCORE_CP] [varchar](4) NULL,
      [CR_PD_TTC] [numeric](14, 6) NULL,
      [CR_PORTFOLIO] [varchar](100) NULL,
      [CR_PORTFOLIO_CP] [varchar](50) NULL,
      [CR_RISK_WEIGHT_AIRB] [numeric](8, 4) NULL,
      [CR_RISK_WEIGHT_CP] [numeric](8, 4) NULL,
      [CR_RISK_WEIGHT_ECAP] [numeric](8, 4) NULL,
      [CR_RWA_OFF_BAL_AIRB] [money] NULL,
      [CR_RWA_ON_BAL_AIRB] [money] NULL,
      [CR_RWA_TOTAL_AIRB] [money] NULL,
      [CR_RWA_TOTAL_CP] [money] NULL,
      [CR_RWA_TOTAL_ECAP] [money] NULL,
      [CR_UL_AIRB] [money] NULL,
      [CR_UL_CP] [money] NULL,
      [CR_UL_ECAP] [money] NULL,
      [CREDIT_PRODUCT_GROUP] [varchar](25) NULL,
      [CRGS_DATE_ACCT] [datetime] NULL,
      [CRGS_DATE_BORR] [datetime] NULL,
      [CUR_NET_RATE] [numeric](15, 10) NULL,
      [CUR_PAYMENT] [numeric](20, 4) NULL,
      [DATE_IN_EXCESS] [datetime] NULL,
      [DEAL_DATE] [datetime] NULL,
      [DEAL_NO] [numeric](25, 0) NULL,
      [DEPOSIT_OFFSET_ACCOUNT] [numeric](25, 0) NULL,
      [DEPOSIT_OFFSET_BALANCE] [money] NULL CONSTRAINT [DF_6A122E92-3_DEPOSIT_OFFSET_BALANCE_9__81]  DEFAULT ((0)),
      [DEPOSIT_OFFSET_RATE] [numeric](9, 5) NULL,
      [DEPT_ID] [varchar](10) NULL,
      [DLNQSTATID] [numeric](28, 0) NULL,
      [DR_CR_FLAG] [char](2) NULL,
      [DRAWN_STATUS] [varchar](20) NULL,
      [DRS_GROUP_ID] [numeric](20, 0) NULL,
      [DRS_GROUP_NAME] [varchar](200) NULL,
      [EAD_ON_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_EAD_ON_BAL_10__81]  DEFAULT ((0)),
      [ERM_FLAG] [varchar](1) NULL,
      [EXT_RATING] [varchar](2) NULL,
      [EXT_RATING_LT] [varchar](2) NULL,
      [EXT_RATING_ST] [varchar](2) NULL,
      [FACE_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_FACE_AMT_11__81]  DEFAULT ((0)),
      [FACE_AMT_BAB] [money] NULL CONSTRAINT [DF_6A122E92-3_FACE_AMT_BAB_12__81]  DEFAULT ((0)),
      [FIXCOUPSWP_PYMT] [numeric](19, 4) NULL,
      [FIXCOUPSWP_RATE] [numeric](19, 4) NULL,
      [FIXED_RATE] [numeric](8, 4) NULL,
      [FLT_RATE] [numeric](8, 4) NULL,
      [FORWARD_STARTING] [varchar](7) NULL,
      [GL_ACCOUNT_ID] [numeric](14, 0) NULL,
      [GL_ACCOUNT_ID_ACC_INT] [numeric](14, 0) NULL,
      [GL_ACCOUNT_INBA] [numeric](14, 0) NULL,
      [GTEE_DRAWN] [money] NULL CONSTRAINT [DF_6A122E92-3_GTEE_DRAWN_13__81]  DEFAULT ((0)),
      [GTEE_LIMIT] [money] NULL CONSTRAINT [DF_6A122E92-3_GTEE_LIMIT_14__81]  DEFAULT ((0)),
      [HELD_TO_MATURITY_FLAG] [varchar](1) NULL,
      [ID_NUMBER] [varchar](28) NOT NULL,
      [IFRS_CASH_FLOW_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_IFRS_CASH_FLOW_AMT_15__81]  DEFAULT ((0)),
      [IFRS_CASH_FLOW_INT] [varchar](10) NULL,
      [IFRS_EST_REC_TERM] [varchar](10) NULL,
      [IFRS_ORIG_INT_RATE] [int] NULL,
      [IMPAIRED_END_DATE] [datetime] NULL,
      [IMPAIRED_FLAG_DRS] [char](1) NULL,
      [IMPAIRED_START_DATE] [datetime] NULL,
      [IMPDPASTDUE_FLAG] [char](1) NULL,
      [IMPDPASTDUE_FLAG_ORIG] [char](1) NULL,
      [INBA] [money] NULL CONSTRAINT [DF_6A122E92-3_INBA_16__81]  DEFAULT ((0)),
      [INT_RATE_ADD_ON] [numeric](15, 4) NULL,
      [INT_RATE_BASE] [numeric](15, 4) NULL,
      [INT_RATE_CUR] [numeric](15, 4) NULL,
      [INT_RATE_MARGIN] [numeric](15, 4) NULL,
      [INT_RATE_TYPE] [nvarchar](40) NULL,
      [INTEREST_RATE_CLASSIFICATION] [varchar](3) NULL,
      [ISSUE_DATE] [datetime] NULL,
      [ISSUE_TERM] [numeric](5, 0) NULL,
      [ISSUE_TERM_MULT] [varchar](1) NULL,
      [LAST_REPRICE_DATE] [datetime] NULL,
      [LIMIT_CALCULATED] [money] NULL CONSTRAINT [DF_6A122E92-3_LIMIT_CALCULATED_17__81]  DEFAULT ((0)),
      [LIMIT_RAW] [money] NULL CONSTRAINT [DF_6A122E92-3_LIMIT_RAW_18__81]  DEFAULT ((0)),
      [LOAN_BDM] [varchar](6) NULL,
      [LOAN_BDM_DESC] [varchar](100) NULL,
      [LOAN_BRANCH] [varchar](4) NULL,
      [LOAN_BRANCH_DESC] [varchar](100) NULL,
      [LOAN_PURP] [varchar](6) NULL,
      [LOAN_SUB_PURP] [varchar](6) NULL,
      [LOCC_CITIZENSHIP] [varchar](10) NULL,
      [LOCC_OF_ORG] [varchar](10) NULL,
      [LOCC_OF_RISK] [varchar](10) NULL,
      [LOW_DOC_FLAG] [varchar](1) NULL,
      [LVR_ERM] [decimal](14, 4) NULL,
      [LVR_ERM_BAND] [varchar](20) NULL,
      [LVR_EST_GROUP] [decimal](14, 4) NULL CONSTRAINT [DF_6A122E92-3_LVR_EST_GROUP_19__81]  DEFAULT ((9.99)),
      [LVR_ORIGINAL] [numeric](9, 2) NULL,
      [MARGIN] [numeric](14, 4) NULL,
      [MARKET_OFF_BAL_FLAG] [varchar](1) NULL,
      [MASTER_LIMIT_AGREEMENT] [varchar](100) NULL,
      [MASTER_LIMIT_NO] [numeric](16, 0) NULL,
      [MAT_DATE] [datetime] NULL,
      [MAT_DATE_ADJUSTED] [numeric](3, 0) NULL,
      [MORTG_INS_CMPY] [varchar](50) NULL,
      [MORTG_INS_INDICATOR] [char](1) NULL,
      [MTM] [money] NULL CONSTRAINT [DF_6A122E92-3_MTM_20__81]  DEFAULT ((0)),
      [NET_CREDIT_EXPOSURE] [money] NULL CONSTRAINT [DF_6A122E92-3_NET_CREDIT_EXPOSURE_21__81]  DEFAULT ((0)),
      [NEXT_PAYMENT_DATE] [datetime] NULL,
      [NEXT_PAYMENT_DATE_FLOATING] [datetime] NULL,
      [NEXT_REPRICE_DATE] [datetime] NULL,
      [NEXT_REPRICE_DATE_FLOATING] [datetime] NULL,
      [NON_CORE_EXCLUSION] [varchar](1) NULL,
      [NON_CORE_FLAG] [char](1) NULL,
      [OD_DOC_TYPE] [varchar](4) NULL,
      [OFF_BAL_LlKELY_TO_DRAW_FACTOR] [numeric](15, 4) NULL,
      [OFF_BAL_PRINCIPAL_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_OFF_BAL_PRINCIPAL_AMT_22__81]  DEFAULT ((0)),
      [OPICS_CTYPE] [varchar](2) NULL,
      [ORACLE_GL_ACCT_ACCRUED_INT] [numeric](10, 0) NULL,
      [ORACLE_GL_ACCT_INBA] [numeric](10, 0) NULL,
      [ORACLE_GL_ACCT_PRINCIPAL] [numeric](10, 0) NULL,
      [ORACLE_GL_BUS_UNIT] [varchar](10) NULL,
      [ORACLE_GL_COST_CENTRE] [numeric](10, 0) NULL,
      [ORACLE_GL_COST_CENTRE_CHANNEL] [varchar](30) NULL,
      [ORACLE_GL_COST_CENTRE_EGM] [varchar](255) NULL,
      [ORACLE_GL_COST_CENTRE_NAME] [varchar](255) NULL,
      [ORACLE_GL_COST_CENTRE_REGION] [varchar](255) NULL,
      [ORACLE_GL_COST_CENTRE_STATE] [varchar](255) NULL,
      [ORACLE_GL_PRODUCT] [varchar](10) NULL,
      [ORG_TERM] [numeric](5, 0) NULL,
      [ORG_TERM_MULT  ] [varchar](1) NULL,
      [ORG_UNIT_ID] [varchar](60) NULL,
      [ORIG_DAYS_TO_MATURITY] [numeric](22, 6) NULL,
      [ORIGINAL_LOAN_AMOUNT] [money] NULL,
      [ORIGINAL_MATURITY] [float] NULL,
      [ORIGINAL_TABLE] [varchar](20) NULL,
      [ORIGINATION_DATE] [datetime] NULL,
      [OVERDUE_REVIEW_FLAG] [varchar](1) NULL,
      [PAST_DUE_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_PAST_DUE_AMT_23__81]  DEFAULT ((0)),
      [PAST_DUE_CATEGORY] [varchar](20) NULL,
      [PAST_DUE_DAYS] [numeric](28, 0) NULL,
      [PAST_DUE_DAYS_ORIG] [numeric](28, 0) NULL,
      [PAY_SPREAD] [numeric](8, 4) NULL,
      [PAYMENT_FREQUENCY] [varchar](30) NULL,
      [PAYMENT_FREQUENCY_FLOATING] [varchar](30) NULL,
      [PMT_FREQ] [numeric](5, 0) NULL,
      [PMT_FREQ_FLT] [int] NULL,
      [PORTFOLIO_DATE] [datetime] NOT NULL,
      [PROD_CODE] [varchar](16) NOT NULL,
      [PROD_DESCR] [varchar](100) NULL,
      [PRODUCT_CODE_1] [varchar](16) NULL,
      [PRODUCT_CODE_2] [varchar](6) NULL,
      [PRODUCT_CODE_3] [varchar](5) NULL,
      [PRODUCT_CODE_4] [varchar](5) NULL,
      [PRODUCT_CODE_5] [varchar](5) NULL,
      [PROV_BOOKBAL_RATIO] [decimal](5, 2) NULL,
      [PROVISION_AMT] [money] NULL CONSTRAINT [DF_6A122E92-3_PROVISION_AMT_24__81]  DEFAULT ((0)),
      [PROVISION_AMT_ADJ] [money] NULL CONSTRAINT [DF_6A122E92-3_PROVISION_AMT_ADJ_25__81]  DEFAULT ((0)),
      [PURPOSE_CLASS_CODE] [varchar](6) NULL,
      [QRM_ACCOUNT] [varchar](75) NOT NULL,
      [QRM_ACCOUNT_CM] [varchar](75) NULL,
      [QRM_PRODUCT_CM] [varchar](75) NULL,
      [RATE_INDEX] [varchar](50) NULL,
      [RATINGS_MODEL] [numeric](2, 0) NULL,
      [RATINGS_MODEL_DESC] [varchar](10) NULL,
      [REC_INTENDDATE] [datetime] NULL,
      [REC_SPREAD] [numeric](8, 4) NULL,
      [REDRAW_AVAILABLE] [varchar](1) NULL,
      [REPRICE_FREQ] [numeric](5, 0) NULL,
      [REPRICE_FREQ_MULT] [varchar](1) NULL,
      [RESIDUAL_AMOUNT] [money] NULL CONSTRAINT [DF_6A122E92-3_RESIDUAL_AMOUNT_26__81]  DEFAULT ((0)),
      [RESTRUCTURED_FLAG] [varchar](1) NULL,
      [RISK_WEIGHT] [numeric](5, 2) NULL,
      [RV_CMNE] [varchar](10) NULL,
      [RWA_OFF_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_RWA_OFF_BAL_27__81]  DEFAULT ((0)),
      [RWA_ON_BAL] [money] NULL CONSTRAINT [DF_6A122E92-3_RWA_ON_BAL_28__81]  DEFAULT ((0)),
      [SECONDARY_OFFICER] [varchar](20) NULL,
      [SECUR_POOL] [varchar](6) NULL,
      [SECUR_REPORTABLE] [varchar](3) NULL,
      [SECUR_STATUS] [varchar](2) NULL,
      [SETTLEDATE] [datetime] NULL,
      [SHORT_NAME] [varchar](255) NULL,
      [SOURCE_CURRENCY] [varchar](5) NULL,
      [SOURCE_SYSTEM] [varchar](4) NOT NULL,
      [TARGET_LVR] [numeric](7, 2) NULL,
      [TBE] [money] NULL,
      [TCE] [money] NULL,
      [TENOR] [varchar](10) NULL,
      [TP_ADDON_CALCULATION] [money] NULL CONSTRAINT [DF_6A122E92-3_TP_ADDON_CALCULATION_29__81]  DEFAULT ((0)),
      [TP_ADDON_RATE] [numeric](8, 4) NULL,
      [TP_BASE_RATE] [numeric](8, 4) NULL,
      [TP_BASIS_CALCULATION] [money] NULL CONSTRAINT [DF_6A122E92-3_TP_BASIS_CALCULATION_30__81]  DEFAULT ((0)),
      [TP_BASIS_COST] [numeric](8, 4) NULL,
      [TP_CURVE] [varchar](50) NULL,
      [TP_FUNDING_INDEX] [varchar](50) NULL,
      [TP_IRR_CALCULATION] [money] NULL CONSTRAINT [DF_6A122E92-3_TP_IRR_CALCULATION_31__81]  DEFAULT ((0)),
      [TP_MODEL] [varchar](50) NULL,
      [TP_START_POINT] [varchar](50) NULL,
      [TP_STATUS] [varchar](50) NULL,
      [TP_TRF_SPRD_CALC] [money] NULL CONSTRAINT [DF_6A122E92-3_TP_TRF_SPRD_CALC_32__81]  DEFAULT ((0)),
      [TP_WGTDAVG_BASE_RATE] [numeric](8, 4) NULL,
      [TRADING_BOOK_FLAG] [varchar](1) NOT NULL,
      [TRANSFER_RATE] [numeric](22, 6) NULL,
      [TRANSFER_SPREAD] [numeric](8, 5) NULL,
      [WATCHLIST_CREDITREC_IND] [varchar](4) NULL,
      [TCE_GROUP_ID] [int] NULL,
      [_LOAN_STATUS] [int] NOT NULL CONSTRAINT [DF_6A122E92-3__LOAN_STATUS_1__81]  DEFAULT ((-1)),
      [_PRODUCT_ID] [uniqueidentifier] NOT NULL,
CONSTRAINT [PK_Master_CM_Layout_30] PRIMARY KEY NONCLUSTERED 
(
      [ID_NUMBER] ASC,
      [QRM_ACCOUNT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF