# Football Ticket Booking System (SQL Database Project)

## Project Overview

This project is a **Football Ticket Booking Management System** designed using SQL. It manages football match information, user accounts, and ticket bookings while maintaining data integrity through Primary Keys and Foreign Keys.

The database consists of three related tables:

* **Users** – Stores user information.
* **Matches** – Stores football match details.
* **Bookings** – Stores ticket booking records.

---

## Database Schema

### Users Table

Stores information about football fans and ticket managers.

| Column       | Description                  |
| ------------ | ---------------------------- |
| user_id      | Unique user ID (Primary Key) |
| full_name    | User's full name             |
| email        | Unique email address         |
| role         | User role                    |
| phone_number | Contact number               |

### Matches Table

Stores football match information.

| Column              | Description                   |
| ------------------- | ----------------------------- |
| match_id            | Unique match ID (Primary Key) |
| fixture             | Match teams                   |
| tournament_category | Competition name              |
| base_ticket_price   | Ticket price                  |
| match_status        | Availability status           |

### Bookings Table

Stores ticket booking records.

| Column         | Description                     |
| -------------- | ------------------------------- |
| booking_id     | Unique booking ID (Primary Key) |
| user_id        | User reference (Foreign Key)    |
| match_id       | Match reference (Foreign Key)   |
| seat_number    | Allocated seat                  |
| payment_status | Payment status                  |
| total_cost     | Total ticket cost               |

---

## Relationships

### Users → Bookings

* One user can create multiple bookings.
* A booking belongs to exactly one user.

### Matches → Bookings

* One match can have multiple bookings.
* A booking belongs to exactly one match.

---

## SQL Concepts Used

* CREATE TABLE
* PRIMARY KEY
* FOREIGN KEY
* NOT NULL
* UNIQUE Constraint
* INSERT INTO
* INNER JOIN
* LEFT JOIN
* Subqueries
* Aggregate Functions (AVG)
* COALESCE()
* ORDER BY
* LIMIT & OFFSET
* Filtering with WHERE
* Pattern Matching using ILIKE

---

## Sample Features

* Match management
* User management
* Ticket booking records
* Payment tracking
* Booking analysis
* Match availability monitoring

---

## Author

**Chayon Chandra Sarker**

SQL Database Project – Football Ticket Booking System
