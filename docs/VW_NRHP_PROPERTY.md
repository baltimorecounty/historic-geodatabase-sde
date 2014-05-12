## National Register of Historic Places View
The National Register of Historic Places view is based on the Planning point geodatabase and the historic inventory table. This view will describe spatially every known historic property or item in Baltimore County that is on the National Register of Historic Places.

Technically, the view will consider the FedDesignation and Status fields and look for a specific string to show properties that are in the NRHP.

### View Model

To be built.
Basics: relate HistoricFeaturesAll.CI_Number with tblProperty.CI_Number. WHERE FedDesignation = "NRPROPERTY" AND Status IS NULL.

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