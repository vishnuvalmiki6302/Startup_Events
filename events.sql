CREATE DATABASE startup_events;

USE startup_events;

CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    date DATE NOT NULL,
    location VARCHAR(255) NOT NULL
);

INSERT INTO events (title, description, date, location) 
VALUES 
('Startup Meetup 2025', 'Networking event for entrepreneurs.', '2025-03-15', 'Hyderabad, India'),
('AI & Startups', 'Exploring AI in startups.', '2025-04-10', 'Bangalore, India');
