-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2022 at 05:59 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedemy`
--

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `author`, `category`, `price`, `rating`, `subtitle`, `thumb_url`, `title`)
VALUES (10010, 'Corey Schafer', 'Development', '17.99', '4.50',
        'Learn Python like a Professional. Start from the basics and go all the way to creating your own applications and games.',
        'https://i3.ytimg.com/vi/XKHEtdqhLK8/maxresdefault.jpg', 'Complete Python Bootcamp'),
       (10011, 'Dani Krossing', 'Development', '18.99', '4.50',
        'Master fundamentals with JavaScript exercises, projects, live examples & more',
        'https://i3.ytimg.com/vi/jS4aFq5-91M/maxresdefault.jpg', 'Learn JavaScript Programming'),
       (10012, 'Caleb Curry', 'Development', '19.99', '3.50', 'Obtain valuable Core Java Skills And Java Certification',
        'https://i3.ytimg.com/vi/GoXwIVyNvX0/maxresdefault.jpg', 'Java Programming Essentials'),
       (10013, 'Gareth David Studio', 'PhotoVideo', '21.99', '4.50',
        'Learn graphic design, logo design, and more with this in-depth, practical, easy-to-follow course!',
        'https://i3.ytimg.com/vi/9EGI-FSr0Ig/maxresdefault.jpg', 'Beginners Guide To Adobe Illustrator'),
       (10014, 'chinfat', 'PhotoVideo', '22.50', '3.50',
        'Learn Beginner-Advanced Video Editing, Audio Editing, Color Grading, Motion Graphics, and more',
        'https://i3.ytimg.com/vi/u99i1SmDgIc/maxresdefault.jpg', 'Learn Adobe Premiere Pro CC'),
       (10015, 'Jacob Clifford', 'Finance', '15.99', '4.50',
        'The Easiest Beginner level Course on Economics with real life examples and graphic content. Perfect for Newbies!',
        'https://i3.ytimg.com/vi/g9aDizJpd_s/maxresdefault.jpg', 'Crash Course Economics'),
       (10016, 'MrandMrsMuscle', 'Health', '18.99', '3.50',
        'This course will help jump-start your body to lose belly fat, lose weight and guide you with a 14 day exercise plan. NO EQUIPMENT needed',
        'https://i3.ytimg.com/vi/By6GXzcldGY/maxresdefault.jpg', 'Lose Belly Fat in 14 Days'),
       (10017, 'Robert Kiyosaki', 'Real Estate', '21.99', '4.50',
        'Learn professional investment techniques for real estate investing in residential and commercial properties',
        'https://i3.ytimg.com/vi/UJv9-F7SN5A/maxresdefault.jpg', 'Real Estate Investing'),
       (10018, 'Bill Hilton', 'Music', '15.99', '4.50',
        'Learn Piano in WEEKS not years. Play-By-Ear & learn to Read Music. Pop, Blues, Jazz, Ballads, Classical',
        'https://i3.ytimg.com/vi/WJ3-F02-F_Y/maxresdefault.jpg', 'How To Play Piano for Beginners'),
       (10019, 'TTFS', 'Office', '17.99', '3.50',
        'Microsoft Excel Beginner to Professional. Includes Pivot Tables, Power Query, NEW Formulas',
        'https://i3.ytimg.com/vi/Vl0H-qTclOg/maxresdefault.jpg', 'Master Microsoft Excel');

--
-- Dumping data for table `course_objectives`
--

INSERT INTO `course_objectives` (`id`, `objective`, `course_id`)
VALUES (1, 'Be able to program in Python professionally', 10010),
       (2, 'Build GUIs and Desktop applications with Python', 10010),
       (3, 'Be able to build fully fledged websites and web apps with Python', 10010),
       (4, 'Create a portfolio of Python projects to apply for developer jobs', 10010),
       (5, 'Be able to build fully fledged websites and web apps with Python', 10010),
       (6, 'All about variables, functions, objects and arrays', 10011),
       (7, 'Modern ES6 from the beginning: arrow functions, destructuring, spread operator, optional chaining', 10011),
       (8, 'Project-driven learning with plenty of examples', 10011),
       (9, 'Asynchronous JavaScript: Event loop, promises, async/await, AJAX calls and APIs', 10011),
       (10, 'Complex concepts like the \'this\' keyword, higher-order functions, closures', 10011),
       (11, 'Learn industry best practices in Java software development from a professional', 10012),
       (12, 'Obtain proficiency in Java 8 and Java 11', 10012),
       (13, 'Be able to demonstrate your understanding of Java to future employers', 10012),
       (14, 'Acquire essential java basics for transitioning to the Spring Framework, Java EE, Android', 10012),
       (15, 'Master Exceptions, IO, Collections Framework, Generics, Multi-threading, Databases', 10012),
       (16, 'Master advanced Illustrator tools and techniques', 10013),
       (17, 'Design your own graphics, without any experience', 10013),
       (18, 'Create custom typography', 10013),
       (19, 'Take hand drawings and recreate them using Illustrator', 10013),
       (20, 'Export your projects for print, web, or other design projects', 10013),
       (21, 'Edit an entire video from beginning to end, using professional and efficient techniques', 10014),
       (22, 'Master Premiere Pro and be CONFIDENT Editing Your Own Videos', 10014),
       (23, 'Learn how to edit social media clips for Instagram, Facebook, Twitter & YouTube Stories', 10014),
       (24, 'How to organize your video editing footage like a Pro', 10014),
       (25, 'Add a feeling to your video with color grading', 10014),
       (26, 'Acquire a solid understanding of key economic relationships', 10015),
       (27, 'Understand business cycles', 10015),
       (28, 'Using demand and supply, illustrate price determination', 10015),
       (29, 'Examine the impact of tax/subsidies', 10015),
       (30, 'Decluttering and impact on economy', 10015),
       (31, 'Understand the fundamentals of weight loss', 10016),
       (32, 'Develop healthy eating habits', 10016),
       (33, 'Stay motivated for long term results', 10016),
       (34, 'Lose weight Naturally within 2 weeks', 10016),
       (35, 'Have a healthy relationship with food', 10016),
       (36, 'Confidently analyze multifamily real estate investment opportunities', 10017),
       (37, 'Use Professional Grade Investment Models to Evaluate Your Deals', 10017),
       (38, 'Use Smart Investment Deal Structures With Business Partners', 10017),
       (39, 'Evaluate Rental Income Properties', 10017),
       (40, 'Know a \"Good\" Investment from a \"Bad\" Investment', 10017),
       (41, 'You will learn to read sheet music AS you learn to play-by-ear', 10018),
       (42, 'You get to sound like a pro right from the start', 10018),
       (43, 'Learn to play the piano without theory', 10018),
       (44, 'Master unique tips & techniques that you won\'t find in ANY other course, guaranteed', 10019),
       (45, 'Build a solid understanding on the Basics of Microsoft Excel', 10019),
       (46, 'Maintain large sets of Excel data in a list or table', 10019),
       (47, 'Write advanced conditional, text, date and lookup functions, including XLOOKUP', 10019),
       (48, 'Get LIFETIME access to project files, quizzes, homework exercises', 10019),
       (49, 'Navigating the keyboard', 10018),
       (50, 'Basic improvisation', 10018);

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `lesson_name`, `videokey`, `course_id`, `length_seconds`, `position`)
VALUES (UUID_TO_BIN(UUID()), '1. Introduction to Java', '2dZiMBwX_5Q', 10012, 455, 1),
       (UUID_TO_BIN(UUID()), '2. Installation and Hello World', 'Hdf5OmERt0g', 10012, 323, 2),
       (UUID_TO_BIN(UUID()), '3. Understanding Java Foundation', 'ovb8njlzvlA', 10012, 688, 3),
       (UUID_TO_BIN(UUID()), '4. Arguments and Parameters', 'U5b9TH14REM', 10012, 690, 4),
       (UUID_TO_BIN(UUID()), '5. Input and Output', 'JceW6zvmA_Q', 10012, 564, 5),
       (UUID_TO_BIN(UUID()), '6. Variables', '7wWvSn_qiBc', 10012, 531, 6),
       (UUID_TO_BIN(UUID()), '7. Primitives and Objects', 'r4wWYgkBcpI', 10012, 507, 7),
       (UUID_TO_BIN(UUID()), '8. Variable Declaration and Initialization', '1mRN2MwdWUo', 10012, 478, 8),
       (UUID_TO_BIN(UUID()), '9. Primitive Data Types', 'qUXbJziVs_o', 10012, 660, 9),
       (UUID_TO_BIN(UUID()), 'DAY 1 - Lose Weight and Lose Belly Fat', 'By6GXzcldGY', 10016, 1320, 1),
       (UUID_TO_BIN(UUID()), 'DAY 2 - Lose Weight and Lose Belly Fat', '4920WOvqqPQ', 10016, 1311, 2),
       (UUID_TO_BIN(UUID()), 'DAY 3 - Lose Weight and Lose Belly Fat', 'rqFYiJNOZjY', 10016, 1338, 3),
       (UUID_TO_BIN(UUID()), 'DAY 4 - Lose Weight and Lose Belly Fat', 'MnUflUjr2bw', 10016, 1329, 4),
       (UUID_TO_BIN(UUID()), 'DAY 5 - Lose Weight and Lose Belly Fat', 'lSZacNnqn7g', 10016, 1327, 5),
       (UUID_TO_BIN(UUID()), 'DAY 6 - Lose Weight and Lose Belly Fat', '2tHo7phAtfM', 10016, 1317, 6),
       (UUID_TO_BIN(UUID()), 'DAY 7 - Lose Weight and Lose Belly Fat', '0nhfE3q6ZA8', 10016, 1313, 7),
       (UUID_TO_BIN(UUID()), 'DAY 8 - Lose Weight and Lose Belly Fat', 'ex16_HWvYJM', 10016, 1315, 8),
       (UUID_TO_BIN(UUID()), 'DAY 9 - Lose Weight and Lose Belly Fat', 'mbNl_XaWjWQ', 10016, 1312, 9),
       (UUID_TO_BIN(UUID()), 'DAY 10 - Lose Weight and Lose Belly Fat', 'x9MJjko7vJM', 10016, 1318, 10),
       (UUID_TO_BIN(UUID()), '1. How to Get Started With JavaScript', 'ItYye9h_RXg', 10011, 208, 1),
       (UUID_TO_BIN(UUID()), '2. Which Tools to Use When Developing', 'ns_L4kpxY8c', 10011, 268, 2),
       (UUID_TO_BIN(UUID()), '3. How to Install Extensions For JavaScript Development', 'ZouJQRxgem0',
        10011, 381, 3),
       (UUID_TO_BIN(UUID()), '4. How to Include JavaScript in Our HTML', 'AD5hxsFJc4o', 10011, 499, 4),
       (UUID_TO_BIN(UUID()), '5. How to Use the Developer Tool for JavaScript Development',
        'sjmyfwESv1g', 10011, 382, 5),
       (UUID_TO_BIN(UUID()), '6. Rules for Writing JavaScript Code', 'FdlBtidhAnE', 10011, 338, 6),
       (UUID_TO_BIN(UUID()), '7. How to Create Variables in JavaScript', '9aGIAL16DL4', 10011, 537, 7),
       (UUID_TO_BIN(UUID()), '8. Different Data Types in JavaScript', 'O9by2KcR2v4', 10011, 880, 8),
       (UUID_TO_BIN(UUID()), '9. Different Types of Operators in JavaScript', 'FZzyij43A54', 10011, 288,
        9),
       (UUID_TO_BIN(UUID()), '10. String Operator in JavaScript Explained', 'uli67N4Z03Y', 10011, 283,
        10),
       (UUID_TO_BIN(UUID()), '1. Preferences and Project Settings', 'EFK-vhzvYDg', 10014, 1137, 1),
       (UUID_TO_BIN(UUID()), '2. Timeline Scroll: Page VS Smooth', 'GRESV6TO5sA', 10014, 162, 2),
       (UUID_TO_BIN(UUID()), '3. Scale or Set to Frame Size', 'kh5wWqyG1KU', 10014, 562, 3),
       (UUID_TO_BIN(UUID()), '4. Keyboard Shortcuts', 'aJTn5pj2zZ0', 10014, 409, 4),
       (UUID_TO_BIN(UUID()), '5. How to Setup a New Project', 'Ud3ABhhJwb0', 10014, 766, 5),
       (UUID_TO_BIN(UUID()), '6. Windows and Layouts', 'J-XuNBVG_lg', 10014, 396, 6),
       (UUID_TO_BIN(UUID()), '7. Importing Media Part 1', 't7hGBgkOJDY', 10014, 607, 7),
       (UUID_TO_BIN(UUID()), '8. Importing Media Part 2', 'Y_aydeNr8l4', 10014, 257, 8),
       (UUID_TO_BIN(UUID()), '9. The Project Panel', 'UTtrFgapV_4', 10014, 653, 9),
       (UUID_TO_BIN(UUID()), '10. The Source Panel', 'J7xy5l6IsMk', 10014, 432, 10),
       (UUID_TO_BIN(UUID()), '1. Excel Basics Tutorial', 'rwbho0CgEAE', 10019, 1307, 1),
       (UUID_TO_BIN(UUID()), '2. Intermediate Excel Skills, Tips, and Tricks', 'lxq_46nY43g', 10019,
        1218, 2),
       (UUID_TO_BIN(UUID()), '3. VLOOKUP Basics', 'y8ygx1Zkcgs', 10019, 718, 3),
       (UUID_TO_BIN(UUID()), '4. Creating Pivot Tables in Excel', 'BkmxrvIfDGA', 10019, 791, 4),
       (UUID_TO_BIN(UUID()), '5. Using Recommended Pivot Tables', 'ebdgGbsTWs8', 10019, 317, 5),
       (UUID_TO_BIN(UUID()), '6. Protecting a Sheet', 'piIWTp3qncw', 10019, 255, 6),
       (UUID_TO_BIN(UUID()), '7. Advanced Excel - 3D Formulas', 'arJBUarj8u8', 10019, 443, 7),
       (UUID_TO_BIN(UUID()), '8. Data Validation and Drop-Down Lists', 'SlWIgMFpsPg', 10019, 788, 8),
       (UUID_TO_BIN(UUID()), '9. Creating Your Own Excel Templates', 'dgHjAHIBvsI', 10019, 345, 9),
       (UUID_TO_BIN(UUID()), '10. Excel Split Names', 'yCxnWvD_r_Q', 10019, 314, 10),
       (UUID_TO_BIN(UUID()), '1. The Piano Keyboard', 'QBH6IpRkVDs', 10018, 698, 1),
       (UUID_TO_BIN(UUID()), '2. Starting to Read Music', '3BULT0-joT0', 10018, 1182, 2),
       (UUID_TO_BIN(UUID()), '3. Reading a Melody', 'NUVQIwO1SEI', 10018, 984, 3),
       (UUID_TO_BIN(UUID()), '4. The Left Hand And The Scale Of C Major', 'f9JI_5y0K68', 10018, 987, 4),
       (UUID_TO_BIN(UUID()), '5. Learning a Piece', '1JVtPB8VJXE', 10018, 881, 5),
       (UUID_TO_BIN(UUID()), '6. A New Piece, A New Scale, And Rests', 'yeP2qRcHuUM', 10018, 796, 6),
       (UUID_TO_BIN(UUID()), '7. Quavers (Eighth Notes) And Accidentals', '3UetN01yPTs', 10018, 864, 7),
       (UUID_TO_BIN(UUID()), '8. A New Piece, Phrase Marks And Ritenuto', '7x20caWKKkQ', 10018, 749, 8),
       (UUID_TO_BIN(UUID()), '9. The Concept Of Musical Key', 'aU3VEy-4qwM', 10018, 788, 9),
       (UUID_TO_BIN(UUID()), '10. More Scales, And Playing Staccato', 'ZCdfa9GyyuM', 10018, 1114, 10),
       (UUID_TO_BIN(UUID()), '1. Intro to Economics: Crash Course Economics', '3ez10ADR_gM', 10015, 729,
        1),
       (UUID_TO_BIN(UUID()), '2. Crash Course Economics- How it all started', 'A307rSHkJdc', 10015, 159,
        2),
       (UUID_TO_BIN(UUID()), '3. Specialization and Trade: Crash Course Economics', 'NI9TLDIPVcs', 10015,
        543, 3),
       (UUID_TO_BIN(UUID()), '4. Economic Systems and Macroeconomics: Crash Course Economics',
        'B43YEW2FvDs', 10015, 617, 4),
       (UUID_TO_BIN(UUID()), '5. Supply and Demand: Crash Course Economics', 'g9aDizJpd_s', 10015, 622,
        5),
       (UUID_TO_BIN(UUID()), '6. Macroeconomics: Crash Course Economics', 'd8uTB5XorBw', 10015, 823, 6),
       (UUID_TO_BIN(UUID()), '7. Productivity and Growth: Crash Course Economics', 'UHiUYj5EA0w', 10015,
        530, 7),
       (UUID_TO_BIN(UUID()), '8. Inflation and Bubbles and Tulips: Crash Course Economics',
        'T8-85cZRI9o', 10015, 625, 8),
       (UUID_TO_BIN(UUID()), '9. Fiscal Policy and Stimulus: Crash Course Economics', 'otmgFQHbaDo',
        10015, 713, 9),
       (UUID_TO_BIN(UUID()), '10. Deficits & Debts: Crash Course Economics', '3sUCSGVYzI0', 10015, 451,
        10),
       (UUID_TO_BIN(UUID()), '1. Install and Setup for Mac and Windows', 'YYXdXT2l-Gg', 10010, 928, 1),
       (UUID_TO_BIN(UUID()), '2. Strings - Working with Textual Data', 'k9TUPpGqYTo', 10010, 1271, 2),
       (UUID_TO_BIN(UUID()), '3. Integers and Floats - Working with Numeric Data', 'khKv-8q7YmY', 10010,
        715, 3),
       (UUID_TO_BIN(UUID()), '4. Lists, Tuples, and Sets', 'W8KRzm-HUcc', 10010, 1744, 4),
       (UUID_TO_BIN(UUID()), '5. Dictionaries - Working with Key-Value Pairs', 'daefaLgNkw0', 10010, 599,
        5),
       (UUID_TO_BIN(UUID()), '6. Conditionals and Booleans - If, Else, and Elif Statements',
        'DZwmZ8Usvnk', 10010, 988, 6),
       (UUID_TO_BIN(UUID()), '7. Loops and Iterations - For/While Loops', '6iF8Xb7Z3wQ', 10010, 614, 7),
       (UUID_TO_BIN(UUID()), '8. Functions', '9Os0o3wzS_I', 10010, 1307, 8),
       (UUID_TO_BIN(UUID()), '9. Import Modules and Exploring The Standard Library', 'CqvZ3vGoGs0',
        10010, 1317, 9),
       (UUID_TO_BIN(UUID()), '10. Setting up a Python Development Environment in Sublime Text',
        'xFciV6Ew5r4', 10010, 1562, 10),
       (UUID_TO_BIN(UUID()), '1. Interface Introduction to Adobe Illustrator', 'QKWnkIPur2Q', 10013, 866,
        1),
       (UUID_TO_BIN(UUID()), '2. Panels & Workspaces in Adobe Illustrator', '2E9oGKd0Ayg', 10013, 552,
        2),
       (UUID_TO_BIN(UUID()), '3. Artboards in Adobe Illustrator', '9GbLm_WXWwk', 10013, 579, 3),
       (UUID_TO_BIN(UUID()), '4. Vector basics | Selection & Direct selection tool & more',
        'GFY0_EMVYDw', 10013, 1033, 4),
       (UUID_TO_BIN(UUID()), '5. Fill & Stroke effects in Adobe Illustrator', 'xhATZA88zC4', 10013, 651,
        5),
       (UUID_TO_BIN(UUID()), '6. Using Colour | Swatches | Pantone\'s | Gradients & more', 'MX67tVC8f3s',
        10013, 1067, 6),
       (UUID_TO_BIN(UUID()), '7. 10 Handy Tips | Things to know for beginners', 'wRL9rPO2SYk', 10013,
        716, 7),
       (UUID_TO_BIN(UUID()), '8. Creating shape vectors in Adobe Illustrator', 'FH4-WIkHnd4', 10013,
        1129, 8),
       (UUID_TO_BIN(UUID()), '9. Grouping | Compounding vectors & Using the shape builder tool',
        'aGFWmYHUQOU', 10013, 901, 9),
       (UUID_TO_BIN(UUID()), '10. The Blob brush tool & Eraser tool in Adobe Illustrator', 'wnXDboK7FH8',
        10013, 483, 10),
       (UUID_TO_BIN(UUID()), 'Part 1 - Real Estate Investing', 'nFH8PV_jPLk', 10017, 344, 1),
       (UUID_TO_BIN(UUID()), 'Part 2 - Real Estate Investing', 'dgu5PaLFu5Y', 10017, 452, 2),
       (UUID_TO_BIN(UUID()), 'Part 3 - Real Estate Investing', '4c6afHE7P6M', 10017, 261, 3),
       (UUID_TO_BIN(UUID()), 'Part 4 - Real Estate Investing', 'mRzoImyFMSY', 10017, 1880, 4),
       (UUID_TO_BIN(UUID()), 'Part 5 - Real Estate Investing', '1mecyBhnJKg', 10017, 896, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
