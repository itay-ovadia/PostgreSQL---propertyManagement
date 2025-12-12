
# Real Estate PostgreSQL Example

## Overview
This project demonstrates basic PostgreSQL operations using a **properties and landlords** database. It includes creating tables, inserting data, updating records, joining tables, and calculating totals. The project is a simple example of how SQL can be used to manage and query property rental data.

---

## SQL Operations Included

### Dropping Tables
Removes existing tables (`properties`, `landlords`) if they already exist to avoid conflicts when creating new tables.

### Creating Tables
- **properties**: Stores information about apartments/properties.
  - `propertyid` (VARCHAR(50)): Primary key for each property.
  - `propertyname` (VARCHAR): Name of the property.
  - `sqmeter` (INTEGER): Size in square meters.
  - `bedrooms` (INTEGER): Number of bedrooms.
  - `bathrooms` (INTEGER): Number of bathrooms.

- **landlords**: Stores information about landlords.
  - `landlordid` (VARCHAR(50)): Primary key.
  - `landlordname` (VARCHAR(50)): Name of the landlord.
  - `landlordage` (FLOAT): Age of the landlord.
  - `landlordbirthday` (DATE): Birthday.
  - `propertyid` (VARCHAR(50)): Foreign key linking to a property.

### Inserting Data
Adds sample rows to both `properties` and `landlords` tables to demonstrate relationships and queries.

### Updating Data
Updates existing rows, such as linking landlords to a property via the `propertyid` field.

### Querying Data
- **Join Query**: Retrieves combined property and landlord information using a `LEFT JOIN`.
- **Sorting**: Orders the results alphabetically by `propertyname`.
- **Aggregation**: Calculates total square meters across all properties using `SUM(sqmeter)`.
![2](https://github.com/user-attachments/assets/8d787185-f7ef-413b-9479-8883ae93726d)
![1](https://github.com/user-attachments/assets/6be8695f-9699-44d0-bf7f-8fa2c68afb83)

---

## Usage
1. Run the SQL script in PostgreSQL to create tables and insert sample data.
2. Execute the queries to:
   - View property and landlord details.
   - Display total property area in square meters.
3. Modify the script to add more properties or landlords as needed.

---

## Purpose
This project is designed to:
- Demonstrate basic PostgreSQL table operations.
- Showcase joins and aggregations.
- Serve as a portfolio example of SQL skills for property management scenarios.
