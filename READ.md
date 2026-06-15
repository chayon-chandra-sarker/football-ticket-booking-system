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

## Queries Implemented

### Query 1

Retrieve all available Champions League matches.

```sql
SELECT match_id, fixture, base_ticket_price
FROM matches
WHERE tournament_category = 'Champions League'
AND match_status = 'Available';
```

### Query 2

Find users whose name starts with "Tanvir" or contains "Haque".

```sql
SELECT *
FROM users
WHERE full_name ILIKE 'Tanvir%'
OR full_name ILIKE '%Haque%';
```

### Query 3

Display bookings with missing payment status and replace NULL with "Action Required".

```sql
SELECT booking_id,
       user_id,
       match_id,
       seat_number,
       total_cost,
       COALESCE(payment_status, 'Action Required') AS payment_status
FROM bookings;
```

### Query 4

Show booking details with user names and match fixtures.

```sql
SELECT bookings.booking_id,
       users.full_name,
       fixture,
       total_cost
FROM bookings
JOIN matches
ON bookings.match_id = matches.match_id
JOIN users
ON bookings.user_id = users.user_id;
```

### Query 5

Display all users including those who have never booked a ticket.

```sql
SELECT u.user_id,
       u.full_name,
       b.booking_id
FROM users AS u
LEFT JOIN bookings AS b
ON u.user_id = b.user_id;
```

### Query 6

Find bookings whose total cost is higher than the average booking cost.

```sql
SELECT booking_id,
       match_id,
       total_cost
FROM bookings
WHERE total_cost >
(
    SELECT AVG(total_cost)
    FROM bookings
);
```

### Query 7

Retrieve the 2 most expensive matches after skipping the highest-priced match.

```sql
SELECT match_id,
       fixture,
       base_ticket_price
FROM matches
ORDER BY base_ticket_price DESC
LIMIT 2
OFFSET 1;
```

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
