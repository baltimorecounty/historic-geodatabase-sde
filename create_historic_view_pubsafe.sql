DROP VIEW VW_MIHP_PROPERTY;
DROP MATERIALIZED VIEW VW_MIHP_PROPERTY;
CREATE MATERIALIZED VIEW VW_MIHP_PROPERTY
AS
SELECT 
HF.SHAPE,
HF.OBJECTID,
HF.CI_NUMBER,
HP.MIHPNUMBER,
HP.PROPERTY_NAME,
HP.OWNERSHIP,
HP.FEDERAL_DESIGNATION,
HP.STATE_DESIGNATION,
HP.COUNTY_DESIGNATION,
HP.STATUS AS PROPERTY_STATUS,
HP.OTHER_LANDMARK_NUM AS ALTERNATE_LANDMARK_NUMBER,
HP.LANDMARK_NUM AS LANDMARK_NUMBER,
HP.LANDMARK_BILL_NUM AS LANDMARK_BILL_NUMBER
FROM HISTORICFEATURESALL HF,HISTORIC_PROPERTY HP
WHERE HF.CI_NUMBER = HP.CI_NUMBER (+) AND
HP.MIHPNUMBER LIKE 'CR%';

CREATE INDEX IDX_VW_MIHP_SHAPE ON VW_MIHP_PROPERTY(SHAPE);
CREATE INDEX IDX_VW_MIHP_OID ON VW_MIHP_PROPERTY(OBJECTID);

DROP VIEW VW_DEMOLISHED_HISTORIC_ITEMS;
DROP MATERIALIZED VIEW VW_DEMOLISHED_HISTORIC_ITEMS;
CREATE MATERIALIZED VIEW VW_DEMOLISHED_HISTORIC_ITEMS  
AS
SELECT 
HF.SHAPE,
HF.OBJECTID,
HF.CI_NUMBER,
HP.MIHPNUMBER,
HP.PROPERTY_NAME,
HP.OWNERSHIP,
HP.FEDERAL_DESIGNATION,
HP.STATE_DESIGNATION,
HP.COUNTY_DESIGNATION,
HP.STATUS AS PROPERTY_STATUS,
HP.OTHER_LANDMARK_NUM AS ALTERNATE_LANDMARK_NUMBER,
HP.LANDMARK_NUM AS LANDMARK_NUMBER,
HP.LANDMARK_BILL_NUM AS LANDMARK_BILL_NUMBER
FROM HISTORICFEATURESALL HF,HISTORIC_PROPERTY HP
WHERE HF.CI_NUMBER = HP.CI_NUMBER (+) AND
HP.STATUS = 'DEMOLISHED OR DESTROYED';

CREATE INDEX IDX_VW_DEMHIST_SHAPE ON VW_DEMOLISHED_HISTORIC_ITEMS(SHAPE);
CREATE INDEX IDX_VW_DEMHIST_OID ON VW_DEMOLISHED_HISTORIC_ITEMS(OBJECTID);

DROP VIEW VW_NRHP_PROPERTY;
DROP MATERIALIZED VIEW VW_NRHP_PROPERTY;
CREATE MATERIALIZED VIEW VW_NRHP_PROPERTY  
AS
SELECT 
HF.SHAPE,
HF.OBJECTID,
HF.CI_NUMBER,
HP.MIHPNUMBER,
HP.PROPERTY_NAME,
HP.OWNERSHIP,
HP.FEDERAL_DESIGNATION,
HP.STATE_DESIGNATION,
HP.COUNTY_DESIGNATION,
HP.STATUS AS PROPERTY_STATUS,
HP.OTHER_LANDMARK_NUM AS ALTERNATE_LANDMARK_NUMBER,
HP.LANDMARK_NUM AS LANDMARK_NUMBER,
HP.LANDMARK_BILL_NUM AS LANDMARK_BILL_NUMBER
FROM HISTORICFEATURESALL HF,HISTORIC_PROPERTY HP
WHERE HF.CI_NUMBER = HP.CI_NUMBER (+) AND
HP.FEDERAL_DESIGNATION = 'NRPROPERTY' AND
HP.STATUS IS NULL;

CREATE INDEX IDX_VW_NRHP_SHAPE ON VW_NRHP_PROPERTY(SHAPE);
CREATE INDEX IDX_VW_NRHP_OID ON VW_NRHP_PROPERTY(OBJECTID);

DROP VIEW VW_LANDMARK_PROPERTY;
DROP MATERIALIZED VIEW VW_LANDMARK_PROPERTY;
CREATE MATERIALIZED VIEW VW_LANDMARK_PROPERTY  
AS
SELECT 
HF.SHAPE,
HF.OBJECTID,
HF.CI_NUMBER,
HP.MIHPNUMBER,
HP.PROPERTY_NAME,
HP.OWNERSHIP,
HP.FEDERAL_DESIGNATION,
HP.STATE_DESIGNATION,
HP.COUNTY_DESIGNATION,
HP.STATUS AS PROPERTY_STATUS,
HP.OTHER_LANDMARK_NUM AS ALTERNATE_LANDMARK_NUMBER,
HP.LANDMARK_NUM AS LANDMARK_NUMBER,
HP.LANDMARK_BILL_NUM AS LANDMARK_BILL_NUMBER,
HP.HES AS HISTORIC_ENVIRONMENTAL_SETTING,
HP.PLL_DATE AS DATE_PRELIM_LANDMARK_LIST_ADDN
FROM HISTORICFEATURESALL HF,HISTORIC_PROPERTY HP
WHERE HF.CI_NUMBER = HP.CI_NUMBER (+) AND
HP.COUNTY_DESIGNATION IN ('LANDMARK LIST','PLL');

CREATE INDEX IDX_VW_LMP_SHAPE ON VW_LANDMARK_PROPERTY(SHAPE);
CREATE INDEX IDX_VW_LMP_OID ON VW_LANDMARK_PROPERTY(OBJECTID);

quit;
