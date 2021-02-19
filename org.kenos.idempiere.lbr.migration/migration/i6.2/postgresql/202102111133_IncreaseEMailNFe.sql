-- Feb 11, 2021, 11:31:40 AM BRT
UPDATE AD_Column SET FieldLength=250,Updated=TO_TIMESTAMP('2021-02-11 11:31:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130428
;

-- Feb 11, 2021, 11:31:42 AM BRT
INSERT INTO t_alter_column values('c_bpartner','LBR_EMailBilling','VARCHAR(250)',null,'NULL')
;

-- Feb 11, 2021, 11:31:49 AM BRT
UPDATE AD_Column SET FieldLength=250,Updated=TO_TIMESTAMP('2021-02-11 11:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130427
;

-- Feb 11, 2021, 11:31:51 AM BRT
INSERT INTO t_alter_column values('c_bpartner','LBR_EMailNFSe','VARCHAR(250)',null,'NULL')
;

-- Feb 11, 2021, 11:31:57 AM BRT
UPDATE AD_Column SET FieldLength=250,Updated=TO_TIMESTAMP('2021-02-11 11:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126599
;

-- Feb 11, 2021, 11:31:59 AM BRT
INSERT INTO t_alter_column values('c_bpartner','LBR_EMailNFe','VARCHAR(250)',null,'NULL')
;

-- Feb 11, 2021, 11:31:59 AM BRT
SELECT Register_Migration_Script ('202102111133_IncreaseEMailNFe.sql') FROM DUAL
;