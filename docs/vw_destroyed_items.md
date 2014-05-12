## Demolished or Destroyed Features View

The Damaged or Destroyed Features view is based on the Planning point geodatabase and the historic inventory table. This view will describe spatially every known historic property or item in Baltimore County that is also know to have been demolished or destroyed.

Technically, the view will consider the Status field and look for a specific string to filter out properties that are destroyed.

### View Model

To be built.
**Basics**: relate `HistoricFeaturesAll.CI_Number` with `tblProperty.CI_Number`. Filter out any properties *WHERE Status = Damaged or Destroyed*.

### Fields

| Field              | HF Field Name       | Alias                     |
|--------------------|---------------------|---------------------------|
| MIHPNumber         | MHIPNUMBER          |                           |
| Property Name      | PROPERTY_NAME       |                           |
| Ownership          | OWNERSHIP           |                           |
| Federal Designation| FEDERAL_DESIGNATION |                           |
| State Designation  | STATE_DESIGNATION   |                           |
| County Designation | COUNTY_DESIGNATION  |                           |
| Status             | STATUS              | Property Status           |
| Other Landmark #   | OTHER_LANDMARK_NUM  | Alternate Landmark Number |
| Landmark #         | LANDMARK_NUM        | Landmark Number           |
| Landmark Bill #    | LANDMARK_BILL_NUM   | Landmark Bill Number      |