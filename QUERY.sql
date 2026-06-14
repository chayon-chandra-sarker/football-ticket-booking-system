
--create users table 
create table users (
  user_id int primary key,
  full_name varchar(50) not null,
  email varchar(50) unique not null,
  role varchar(30) not null,
  phone_number varchar(20) not null
);

--create matches table
create table matches(
  match_id int primary key,
  fixture varchar(50) not null,
  tournament_category varchar(50) not null,
  base_ticket_price int not null,
  match_status varchar(50) not null
);

--create bookings table
create table bookings(
  booking_id int primary key,
  user_id int,
  match_id int,
  seat_number varchar(10) not null,
  payment_status varchar(20) not null,
  total_cost int not null,
  foreign key (user_id) references users(user_id),
  foreign key (match_id) references matches(match_id)
);