# College Grievance Portal

A complete college complaint/grievance portal built with:

- Java 17
- Jakarta Servlets
- JDBC
- MySQL
- HTML/CSS
- Apache Tomcat 10.1+
- Maven

No JSP, Spring, Hibernate, React, or other frameworks are used.

## Features

### Student
- Register
- Login/logout
- Submit complaint
- View own complaints
- Track complaint status
- View admin/staff remarks

### Admin
- Admin login
- Dashboard statistics
- View all complaints
- Assign complaints to staff
- Change complaint status
- Add remarks/resolution
- Manage staff accounts
- View complaint details

### Staff
- Staff login
- View assigned complaints
- Update complaint status
- Add progress/resolution remarks

## 1. Requirements

Install:

1. JDK 17+
2. IntelliJ IDEA
3. MySQL 8+
4. Apache Tomcat 10.1+
5. Maven (IntelliJ can use its bundled Maven)

## 2. Database setup

Open MySQL Workbench or MySQL command line.

Run:

`src/main/resources/database.sql`

The script creates the database, tables, and demo admin/staff accounts.

Default accounts:

Admin:
- Email: admin@college.com
- Password: admin123

Staff:
- Email: staff@college.com
- Password: staff123

## 3. Configure MySQL

Open:

`src/main/java/com/collegegrievance/util/DBConnection.java`

Change:

- DB_USER
- DB_PASSWORD

Example:

DB_USER = "root"
DB_PASSWORD = "root"

## 4. Open in IntelliJ

1. Extract the ZIP.
2. Open IntelliJ IDEA.
3. Select `File > Open`.
4. Select the extracted `CollegeGrievancePortal` folder.
5. IntelliJ should detect `pom.xml`.
6. Click `Load Maven Project`.
7. Wait for Maven dependencies to download.

## 5. Configure Tomcat

Use Tomcat 10.1 or newer.

In IntelliJ:

1. `Run > Edit Configurations`
2. Click `+`
3. Select `Tomcat Server > Local`
4. Select your Tomcat installation.
5. Open the `Deployment` tab.
6. Add `CollegeGrievancePortal:war exploded`.
7. Set application context to `/CollegeGrievancePortal`.
8. Apply and Run.

Open:

http://localhost:8080/CollegeGrievancePortal/

## Important

This project intentionally uses plain HTML/CSS and Servlets. Servlet classes generate dynamic HTML using PrintWriter, so there are no JSP files.

For a college project, you can later add:
- JSP
- MVC packages
- stronger password hashing
- file/image upload
- email notifications
- CAPTCHA
- charts/reports
- pagination
