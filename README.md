**Repository Name: Data cleaning with sql**

**Description:**
This repository contains SQL scripts for processing and cleaning Titanic passenger data. The scripts aim to make the dataset more readable and comprehensive by transforming certain columns and handling null values appropriately.

**Files:**
1. `titanic_data_processing.sql`: SQL script for processing Titanic passenger data.
2. `README.md`: Markdown file containing information about the repository.

**Usage:**
1. Execute the SQL script `titanic_data_processing.sql` in a database management system (e.g., MySQL, PostgreSQL) to process the Titanic passenger data.
2. The script performs the following tasks:
   - Changes the 'Survived' column from 1 and 0 to 'Yes' and 'No', respectively.
   - Converts the data type of the 'Survived' column from int to varchar.
   - Updates the 'Pclass' column to display passenger class as 'First class', 'Second class', and 'Third class'.
   - Formats the 'Name' column to a more readable format (e.g., 'Mr. John Doe').
   - Cleans the 'Fare' column by adding a dollar sign and changing the data type to varchar.
   - Converts the data type of the 'Age' column from float to int and handles null values by replacing them with 'N/A'.
   - Handles null values in the 'Cabin' column by replacing them with 'N/A'.

**Contributing:**
- Contributions to improve the SQL scripts or add additional data processing tasks are welcome.
- Fork the repository, make changes, and submit a pull request.

**License:**
This project is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the code for your purposes.
