## Landmark Property View

The Landmark Property view is based on `HISTORIC_PROPERTY` feature class and the `HISTORICFEATURESALL` table. This view will describe spatially every known historic property or item in Baltimore County that is on the County Landmark List.

Technically, the view will consider the CountyDesignation field and look for a specific string to show properties that are on the County LL.

### View Model

* Relate `HISTORICFEATURESALL.CI_NUMBER` with `HISTORIC_PROPERTY.CI_NUMBER`
* WHERE CountyDesignation ="Landmarks List" OR "PLL".

### Fields

| Field              | HF Field Name       | Alias                                      |
|--------------------|---------------------|--------------------------------------------|
| MIHPNumber         | MIHPNUMBER          |                                            |
| Property Name      | PROPERTY_NAME       |                                            |
| Ownership          | OWNERSHIP           |                                            |
| Federal Designation| FEDERAL_DESIGNATION |                                            |
| State Designation  | STATE_DESIGNATION   |                                            |
| County Designation | COUNTY_DESIGNATION  |                                            |
| Status             | STATUS              | Property Status                            |
| Other Landmark #   | OTHER_LANDMARK_NUM  | Alternate Landmark Number                  |
| Landmark #         | LANDMARK_NUM        | Landmark Number                            |
| Landmark Bill #    | LANDMARK_BILL_NUM   | Landmark Bill Number                       |
| HES                | HES                 | Historic Environmental Setting             |
| PLL Date           | PLL_DATE            | Date of Preliminary Landmark List Addition |