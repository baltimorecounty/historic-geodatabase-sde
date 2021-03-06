## MIHP Properties View

The MHIP Properties view is based on the `HISTORIC_PROPERTY` feature class and the `HISTORICFEATURESALL` table. This view will describe spatially every known property or item in Baltimore County that is in the Maryland Inventory of Historic Properties.

Technically, the view will consider the MIHPNumber field and look for a specific string to filter out properties that are in the MIHP.

### View Model

* Relate `HISTORICFEATURESALL.CI_NUMBER` with `HISTORIC_PROPERTY.CI_NUMBER`
* WHERE MIHPNumber starts with CR.

### Fields

| Field              | HF Field Name       | Alias                     |
|--------------------|---------------------|---------------------------|
| MIHPNumber         | MIHPNUMBER          |                           |
| Property Name      | PROPERTY_NAME       |                           |
| Ownership          | OWNERSHIP           |                           |
| Federal Designation| FEDERAL_DESIGNATION |                           |
| State Designation  | STATE_DESIGNATION   |                           |
| County Designation | COUNTY_DESIGNATION  |                           |
| Status             | STATUS              | Property Status           |
| Other Landmark #   | OTHER_LANDMARK_NUM  | Alternate Landmark Number |
| Landmark #         | LANDMARK_NUM        | Landmark Number           |
| Landmark Bill #    | LANDMARK_BILL_NUM   | Landmark Bill Number      |