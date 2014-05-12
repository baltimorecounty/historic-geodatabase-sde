## Demolished or Destroyed Features View

The Damaged or Destroyed Features view is based on the Planning point geodatabase and the historic inventory table. This view will describe spatially every known historic property or item in Baltimore County that is also know to have been demolished or destroyed.

Technically, the view will consider the Status field and look for a specific string to filter out properties that are destroyed.

### View Model

To be built.
**Basics**: relate `HistoricFeaturesAll.CI_Number` with `tblProperty.CI_Number`. Filter out any properties *WHERE Status = Damaged or Destroyed*.

### Fields

| Field              | Type       | Alias                          |
|--------------------|------------|--------------------------------|
| MIHPNumber         | Int        |                                |
| Property Name      | Text       |                                |
| Ownership          | Text       |                                |
| Federal Designation| Text       |                                |
| State Designation  | Text       |                                |
| County Designation | Text       |                                |
| Status             | Text       | Property Status                |
| Other Landmark #   | Int?       | Alternate Landmark Number      |
| Landmark #         | Int?       | Landmark Number                |
| Landmark Bill #    | Int?       | Landmark Bill Number           |