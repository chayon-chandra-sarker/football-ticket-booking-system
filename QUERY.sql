
--create users table 
create table users (
  user_id int primary key,
  full_name varchar(50) not null,
  email varchar(50) unique not null,
  role varchar(30) not null,
  phone_number varchar(20)
);
drop table users

--create matches table
create table matches(
  match_id int primary key,
  fixture varchar(50) not null,
  tournament_category varchar(50) not null,
  base_ticket_price int not null,
  match_status varchar(50) not null
);
drop table matches

--create bookings table
create table bookings(
  booking_id int primary key,
  user_id int,
  match_id int,
  seat_number varchar(10),
  payment_status varchar(20),
  total_cost int not null,
  foreign key (user_id) references users(user_id),
  foreign key (match_id) references matches(match_id)
);
drop table bookings

---insert users data table
INSERT INTO users (user_id, full_name, email, role, phone_number) VALUES
(1, 'Tanvir Rahman', 'tanvir@mail.com', 'Football Fan', '+8801711111111'),
(2, 'Asif Haque', 'asif@mail.com', 'Football Fan', '+8801722222222'),
(3, 'Sajjad Rahman', 'sajjad@mail.com', 'Ticket Manager', '+8801733333333'),
(4, 'Jannat Ara', 'jannat@mail.com', 'Football Fan', NULL),
(5, 'Nayeem Islam', 'nayeem@mail.com', 'Football Fan', '+8801744444444'),
(6, 'Mehedi Hasan', 'mehedi@mail.com', 'Football Fan', '+8801755555555'),
(7, 'Rafi Ahmed', 'rafi@mail.com', 'Ticket Manager', '+8801766666666'),
(8, 'Shuvo Das', 'shuvo@mail.com', 'Football Fan', '+8801777777777'),
(9, 'Sadia Noor', 'sadia@mail.com', 'Football Fan', NULL),
(10, 'Fahim Khan', 'fahim@mail.com', 'Football Fan', '+8801788888888'),
(11, 'Arif Hossain', 'arif@mail.com', 'Football Fan', '+8801799999999'),
(12, 'Tasmia Akter', 'tasmia@mail.com', 'Football Fan', NULL),
(13, 'Rakib Uddin', 'rakib@mail.com', 'Ticket Manager', '+8801811111111'),
(14, 'Nusrat Jahan', 'nusrat@mail.com', 'Football Fan', '+8801822222222'),
(15, 'Imran Ali', 'imran@mail.com', 'Football Fan', '+8801833333333'),
(16, 'Saima Sultana', 'saima@mail.com', 'Football Fan', NULL),
(17, 'Jubayer Rahman', 'jubayer@mail.com', 'Football Fan', '+8801844444444'),
(18, 'Kawsar Ahmed', 'kawsar@mail.com', 'Ticket Manager', '+8801855555555'),
(19, 'Rina Akter', 'rina@mail.com', 'Football Fan', '+8801866666666'),
(20, 'Shahriar Alam', 'shahriar@mail.com', 'Football Fan', NULL),
(21, 'Mim Rahman', 'mim@mail.com', 'Football Fan', '+8801877777777'),
(22, 'Hasan Mahmud', 'hasan@mail.com', 'Football Fan', '+8801888888888'),
(23, 'Esha Khan', 'esha@mail.com', 'Football Fan', NULL),
(24, 'Tanzim Hasan', 'tanzim@mail.com', 'Ticket Manager', '+8801899999999'),
(25, 'Farhan Islam', 'farhan@mail.com', 'Football Fan', '+8801911111111'),
(26, 'Lamia Akter', 'lamia@mail.com', 'Football Fan', NULL),
(27, 'Omar Faruk', 'omar@mail.com', 'Football Fan', '+8801922222222'),
(28, 'Sakib Hasan', 'sakib@mail.com', 'Football Fan', '+8801933333333'),
(29, 'Niloy Das', 'niloy@mail.com', 'Ticket Manager', NULL),
(30, 'Ayesha Rahman', 'ayesha@mail.com', 'Football Fan', '+8801944444444');


---insert matches data table
insert into matches (match_id, fixture, tournament_category, base_ticket_price, match_status) values
(101, 'Real Madrid vs Barcelona', 'Champions League', 150, 'Available'),
(102, 'Man City vs Liverpool', 'Premier League', 120, 'Selling Fast'),
(103, 'Bayern Munich vs PSG', 'Champions League', 130, 'Available'),
(104, 'AC Milan vs Inter Milan', 'Serie A', 90, 'Sold Out'),
(105, 'Juventus vs Roma', 'Serie A', 80, 'Available'),
(106, 'Arsenal vs Chelsea', 'Premier League', 110, 'Available'),
(107, 'Atletico Madrid vs Sevilla', 'La Liga', 95, 'Selling Fast'),
(108, 'Dortmund vs Leverkusen', 'Bundesliga', 85, 'Available'),
(109, 'Napoli vs Lazio', 'Serie A', 88, 'Available'),
(110, 'Tottenham vs Newcastle', 'Premier League', 100, 'Sold Out'),
(111, 'PSG vs Marseille', 'Ligue 1', 75, 'Available'),
(112, 'Real Madrid vs Atletico', 'La Liga', 140, 'Selling Fast'),
(113, 'Barcelona vs Valencia', 'La Liga', 100, 'Available'),
(114, 'Bayern vs Dortmund', 'Bundesliga', 120, 'Available'),
(115, 'Inter vs Roma', 'Serie A', 92, 'Sold Out'),
(116, 'Man United vs Arsenal', 'Premier League', 130, 'Available'),
(117, 'Chelsea vs Man City', 'Premier League', 140, 'Selling Fast'),
(118, 'PSG vs Lyon', 'Ligue 1', 70, 'Available'),
(119, 'Juventus vs Napoli', 'Serie A', 85, 'Available'),
(120, 'Barcelona vs Real Sociedad', 'La Liga', 95, 'Available'),
(121, 'Bayern vs Leipzig', 'Bundesliga', 110, 'Available'),
(122, 'Liverpool vs Everton', 'Premier League', 105, 'Sold Out'),
(123, 'AC Milan vs Napoli', 'Serie A', 90, 'Available'),
(124, 'Sevilla vs Valencia', 'La Liga', 80, 'Available'),
(125, 'Arsenal vs Tottenham', 'Premier League', 115, 'Available'),
(126, 'PSG vs Monaco', 'Ligue 1', 78, 'Available'),
(127, 'Real Madrid vs Sevilla', 'La Liga', 125, 'Selling Fast'),
(128, 'Dortmund vs Bayern', 'Bundesliga', 135, 'Available'),
(129, 'Inter Milan vs Juventus', 'Serie A', 95, 'Available'),
(130, 'Man City vs Chelsea', 'Premier League', 145, 'Available');

--insert bookings data table
INSERT INTO bookings (booking_id, user_id, match_id, seat_number, payment_status, total_cost) VALUES
(501, 1, 101, 'A-12', 'Confirmed', 150),
(502, 1, 102, 'B-04', 'Pending', 120),
(503, 2, 101, 'A-13', 'Confirmed', 150),
(504, 2, 101, NULL, NULL, 150),
(505, 3, 102, 'C-20', 'Cancelled', 120),
(506, 4, 103, 'A-01', 'Confirmed', 130),
(507, 5, 104, 'B-10', 'Refunded', 90),
(508, 6, 105, 'C-15', 'Pending', 80),
(509, 7, 106, 'D-02', 'Confirmed', 110),
(510, 8, 107, NULL, NULL, 95),
(511, 9, 108, 'B-07', 'Confirmed', 85),
(512, 10, 109, 'C-11', 'Pending', 88),
(513, 11, 110, 'D-05', 'Cancelled', 100),
(514, 12, 111, 'A-09', 'Confirmed', 75),
(515, 13, 112, 'B-14', 'Refunded', 140),
(516, 14, 113, 'C-03', 'Pending', 100),
(517, 15, 114, NULL, NULL, 120),
(518, 16, 115, 'A-20', 'Sold', 92),
(519, 17, 116, 'B-02', 'Confirmed', 130),
(520, 18, 117, 'C-17', 'Pending', 140),
(521, 19, 118, 'D-12', 'Confirmed', 70),
(522, 20, 119, 'A-06', 'Refunded', 85),
(523, 21, 120, 'B-19', 'Pending', 95),
(524, 22, 121, NULL, NULL, 110),
(525, 23, 122, 'D-09', 'Cancelled', 105),
(526, 24, 123, 'A-14', 'Confirmed', 90),
(527, 25, 124, 'B-08', 'Pending', 80),
(528, 26, 125, 'C-13', 'Confirmed', 115),
(529, 27, 126, 'D-04', 'Refunded', 78),
(530, 28, 127, 'A-11', 'Pending', 125);

--Query 1: Retrieve all upcoming football matches belonging to the 'Champions League' where the match status is 'Available'.
 select match_id, fixture, base_ticket_price  from matches where tournament_category ='Champions League' and match_status ='Available'

--Query 2: Search for all users whose full names start with 'Tanvir' or contain the phrase 'Haque' (case-insensitive).
select * from users where full_name ilike 'Tanvir%' or full_name ilike'%Haque%'



