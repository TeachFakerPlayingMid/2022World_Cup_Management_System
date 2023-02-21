-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

-- This is only an example of how you add INSERT statements to this file.
--   You may remove it.
INSERT INTO Team (country, national_association, url, group) VALUES
('Argentina', 'Argentine Football Association', 'http://www.afa.org.ar/', 'C'),
('Brazil', 'Brazilian Football Confederation', 'https://www.cbf.com.br/', 'G'),
('Germany', 'German Football Association', 'https://www.dfb.de/', 'E'),
('England', 'The Football Association', 'http://www.thefa.com/', 'B'),
('Spain', 'Royal Spanish Football Federation', 'https://www.rfef.es/', 'E'),
('France', 'French Football Federation', 'https://www.fff.fr/', 'D');

-- Adding players to the Player table

-- Argentina (4 players)
INSERT INTO Player (pid, name, DOB, shirt_number, general_position, country) VALUES
(1010001, 'Lionel Messi', '1987-06-24', 10, 'Forward', 'Argentina'),
(1010002, 'Sergio Aguero', '1988-06-02', 19, 'Forward', 'Argentina'),
(1010003, 'Paulo Dybala', '1993-11-15', 21, 'Forward', 'Argentina'),
(1010004, 'Giovani Lo Celso', '1996-04-09', 20, 'Midfielder', 'Argentina');

-- Brazil (4 players)
INSERT INTO Player (pid, name, DOB, shirt_number, general_position, country) VALUES
(1020001, 'Neymar Jr.', '1992-02-05', 10, 'Forward', 'Brazil'),
(1020002, 'Roberto Firmino', '1991-10-02', 20, 'Forward', 'Brazil'),
(1020003, 'Gabriel Jesus', '1997-04-03', 9, 'Forward', 'Brazil'),
(1020004, 'Casemiro', '1992-02-23', 5, 'Midfielder', 'Brazil');

-- Germany (4 players)
INSERT INTO Player (pid, name, DOB, shirt_number, general_position, country) VALUES
(1030001, 'Manuel Neuer', '1986-03-27', 1, 'Goalkeeper', 'Germany'),
(1030002, 'Toni Kroos', '1990-01-04', 8, 'Midfielder', 'Germany'),
(1030003, 'Thomas Muller', '1989-09-13', 13, 'Forward', 'Germany'),
(1030004, 'Serge Gnabry', '1995-07-14', 20, 'Forward', 'Germany');

-- England (4 players)
INSERT INTO Player (pid, name, DOB, shirt_number, general_position, country) VALUES
(1040001, 'Harry Kane', '1993-07-28', 9, 'Forward', 'England'),
(1040002, 'Raheem Sterling', '1994-12-08', 10, 'Forward', 'England'),
(1040003, 'Jordan Pickford', '1994-03-07', 1, 'Goalkeeper', 'England'),
(1040004, 'Harry Maguire', '1993-03-05', 6, 'Defender', 'England');

-- Spain (4 players)
INSERT INTO Player (pid, name, DOB, shirt_number, general_position, country) VALUES
(1050001, 'Sergio Ramos', '1986-03-30', 15, 'Defender', 'Spain'),
(1050002, 'Sergio Busquets', '1988-07-16', 5, 'Midfielder', 'Spain'),
(1050003, 'Isco', '1992-04-21', 22, 'Midfielder', 'Spain'),
(1050004, 'Alvaro Morata', '1992-10-23', 7, 'Forward', 'Spain');

-- France (2 players)
INSERT INTO Player (pid, name, DOB, shirt_number, general_position, country) VALUES
(9000012, 'Kylian Mbappe', '1998-12-20', 7, 'Forward', 'France'),
(9000013, 'Antoine Griezmann', '1991-03-21', 10, 'Forward', 'France');

-- Argentina coaches
INSERT INTO Coach (cid, name, role, country)
VALUES (10000001, 'Lionel Scaloni', 'Head Coach', 'Argentina'),
       (10000002, 'Roberto Ayala', 'Assistant Coach', 'Argentina'),
       (10000003, 'Walter Samuel', 'Assistant Coach', 'Argentina'),
       (10000004, 'Pablo Aimar', 'Assistant Coach', 'Argentina');

-- Brazil coaches
INSERT INTO Coach (cid, name, role, country)
VALUES (20000001, 'Tite', 'Head Coach', 'Brazil'),
       (20000002, 'Cléber Xavier', 'Assistant Coach', 'Brazil'),
       (20000003, 'Matheus Bachi', 'Assistant Coach', 'Brazil'),
       (20000004, 'Sylvinho', 'Assistant Coach', 'Brazil');

-- Germany coaches
INSERT INTO Coach (cid, name, role, country)
VALUES (30000001, 'Joachim Löw', 'Head Coach', 'Germany'),
       (30000002, 'Marcus Sorg', 'Assistant Coach', 'Germany'),
       (30000003, 'Andreas Köpke', 'Assistant Coach', 'Germany'),
       (30000004, 'Thomas Schneider', 'Assistant Coach', 'Germany');

-- England coaches
INSERT INTO Coach (cid, name, role, country)
VALUES (40000001, 'Gareth Southgate', 'Head Coach', 'England'),
       (40000002, 'Steve Holland', 'Assistant Coach', 'England'),
       (40000003, 'Chris Powell', 'Assistant Coach', 'England'),
       (40000004, 'Martyn Margetson', 'Assistant Coach', 'England');

-- Spain coaches
INSERT INTO Coach (cid, name, role, country)
VALUES (50000001, 'Luis Enrique', 'Head Coach', 'Spain'),
       (50000002, 'Jordi Alba', 'Assistant Coach', 'Spain'),
       (50000003, 'Joaquín Valdés', 'Assistant Coach', 'Spain'),
       (50000004, 'Robert Moreno', 'Assistant Coach', 'Spain');

-- France coaches
INSERT INTO Coach (cid, name, role, country)
VALUES (60000001, 'Didier Deschamps', 'Head Coach', 'France'),
       (60000002, 'Guy Stéphan', 'Assistant Coach', 'France'),
       (60000003, 'Franck Raviot', 'Goalkeeper Coach', 'France'),
       (60000004, 'Patrick Gonfalone', 'Fitness Coach', 'France');

INSERT INTO Match (identidier, date, time, round, extra_program, availability, match_length, match_name, stadium)
VALUES
    (10001, '2023-06-01', '16:00:00', 'Group Round 1', NULL, 50000, 90, 'France vs Argentina', 'Al-Rayyan Stadium'),
    (10002, '2023-06-02', '16:00:00', 'Group Round 2', NULL, 75000, 90, 'England vs Brazil', 'Al-Wakrah Stadium'),
    (10003, '2023-06-03', '16:00:00', 'Group Round 3', NULL, 60000, 90, 'Spain vs Germany', 'Education City Stadium'),
    (10007, '2023-06-07', '16:00:00', 'Round of 16', NULL, 80000, 90, 'France vs England', 'Lusail Iconic Stadium'),
    (10008, '2023-06-08', '16:00:00', 'Round of 16', NULL, 65000, 90, 'Brazil vs Germany', 'Al-Rayyan Stadium'),
    (10009, '2023-06-09', '16:00:00', 'Round of 16', NULL, 50000, 90, 'Argentina vs Spain', 'Al-Wakrah Stadium'),
    (10010, '2023-06-10', '16:00:00', 'Round of 16', NULL, 45000, 90, 'France vs Brazil', 'Education City Stadium'),
    (10011, '2023-06-11', '16:00:00', 'Quarterfinals', NULL, 70000, 90, 'Spain vs England', 'Lusail Iconic Stadium'),
    (10012, '2023-06-12', '16:00:00', 'Quarterfinals', NULL, 55000, 90, 'Germany vs Argentina', 'Al-Rayyan Stadium'),
    (10013, '2023-06-13', '16:00:00', 'Semifinals', NULL, 90000, 90, 'France vs Spain', 'Lusail Iconic Stadium'),
    (10014, '2023-06-14', '16:00:00', 'Semifinals', NULL, 80000, 90, 'Brazil vs Germany', 'Education City Stadium'),
    (10015, '2023-06-15', '16:00:00', 'Final', NULL, 100000, 90, 'France vs Brazil', 'Lusail Iconic Stadium');








