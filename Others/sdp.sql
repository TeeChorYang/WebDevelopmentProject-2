-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 12:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdp`
--

-- --------------------------------------------------------

--
-- Table structure for table `applyevent`
--

CREATE TABLE `applyevent` (
  `aeid` int(10) NOT NULL,
  `etitle` varchar(200) NOT NULL,
  `eimage` varchar(250) NOT NULL,
  `announcement` varchar(2500) NOT NULL,
  `description` varchar(2500) NOT NULL,
  `cid` int(10) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `edate_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applyevent`
--

INSERT INTO `applyevent` (`aeid`, `etitle`, `eimage`, `announcement`, `description`, `cid`, `cname`, `edate_time`) VALUES
(5, 'Testing', 'event.png', '', 'Testing', 8, 'E-Sports & Games Development Society ', '2022-06-01 09:19:06'),
(6, 'Testing2', 'event.png', '', 'testing2', 8, 'E-Sports & Games Development Society ', '2022-06-01 09:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `applyjoinclub`
--

CREATE TABLE `applyjoinclub` (
  `aid` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_num` varchar(20) NOT NULL,
  `studentid` varchar(10) NOT NULL,
  `intake` varchar(25) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `birth_date` date NOT NULL,
  `country` varchar(50) NOT NULL,
  `personal_statement` varchar(2500) NOT NULL,
  `clubid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `adate_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applyjoinclub`
--

INSERT INTO `applyjoinclub` (`aid`, `username`, `email`, `contact_num`, `studentid`, `intake`, `gender`, `birth_date`, `country`, `personal_statement`, `clubid`, `cname`, `adate_time`) VALUES
(29, 'Chris Hemsworth', 'chris@gmail.com', '0193004822', 'TP432109', 'UCDF2007ICT(DI)', 'Male', '1999-06-30', 'United State', 'I am interest and enjoy doing community service. Please give me a shot to join you.', 10, 'Rotaract Club', '2022-06-01 09:01:58'),
(30, 'Tom Hardy', 'hardy@gmail.com', '0120582281', 'TP210987', 'UCDF2007ICT(DI)', 'Male', '1999-05-16', 'United State', 'I saw some information about this club. It seen like it is a very fun club.\r\nI really hoping I can join a club to make a lot of friends, release stress and have fun!\r\nPlease allow me to join your club.', 10, 'Rotaract Club', '2022-06-01 09:04:04');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cimage` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `content` varchar(2500) DEFAULT NULL,
  `wallpaper` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `location` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`cid`, `cname`, `cimage`, `category`, `content`, `wallpaper`, `link`, `mail`, `venue`, `location`) VALUES
(4, 'Badminton Club', 'badmintonclub.png', 'Recreation, Sport & Games', 'Are you interested in playing badminton but do not know how to play? Do you want to play badminton but do not have a partner to play with?\r\n<br>You are in luck, join us in our badminton club where the badminton elite can teach you how to play badminton. You can also play badminton with the other students or teachers too. <br><b>What are you waiting for, join with is by clicking the </b>', 'badminton.jpg', 'facebook.com/apubadmintonclub/?ref=page_internal', 'apubmtnclub@gmail.com', '-', 'SJK(C) YOKE NAM'),
(5, 'Basketball Club', 'basketballclub.png', 'Recreation, Sport & Games', 'The Basketball Club consists of the Male and Female 1st team, through tryouts which will take place at the beginning of the academic year. Being part of the Basketball team brings together the competitive spirit with the life of a student. It is a great way to share the passion and commitment for basketball and enjoy life at University.<br>\r\n\r\nBasketball is not only about our competitive teams, everyone is welcome to play basketball in the social basketball sessions which will take place in a dedicated time slot every week! You are not required to play competitively or enter try outs - just come along to, by yourself or with friends, and join in with everyone else there.<br>\r\n\r\nContact us for more information.', 'basketball.jpg', 'facebook.com/groups/714160195281069/', 'apubasketballclub2020@gmail.com', 'APU', 'Court A, APU Campus'),
(8, 'E-Sports & Games Development Society ', 'gamer.jpg', 'Recreation, Sport & Games', 'ESports Club is a sim game based on electronic sports industry, including most popular game types such as FPS and MOBA and many more. Do you believe you have potential to compete on stage? You can join our esport team for game such as LoL, Valorant, Dota 2, and others to participate in the competition!\r\n<br>\r\nAn esports club is not only about playing game or competitive. In here also can  provide students with a positive social environment that includes quality mentors to help them experience and grow positive skills that can be applied in their educational and personal lives. Students also learn how to deal with cyber bullies and trolls and protect their privacy.\r\n<br>\r\nAlong with The Games Development Society is for anyone who enjoys creating. We help everyone learn more about video games development, offer opportunities to express creativity through programming or even art, music and game design. We hold tutorial sessions and game jams and there is more to come!\r\n<br>\r\nWhat are you still waiting for?', 'Gaming-Club-banner.jpg', 'facebook.com/Radiant-Club-Soicety-113966541324963', 'esportsgamesdev@mail.com', 'APU', '--'),
(10, 'Rotaract Club', 'Rotaract_RGB.png', 'Community Centric & Voluntary', 'Rotaract clubs bring together people ages 18 and older to exchange ideas with leaders in the community, develop leadership and professional skills, and have fun through service.<br>\r\nIn communities worldwide, Rotary and Rotaract members work side by side to take action through service. From big cities to rural villages, Rotaract is changing communities like yours.', 'Rotaract_Logo_2015.svg.png', 'rotary.org/en/get-involved/rotaract-clubs', 'info@rotaract.de', '-', '-'),
(13, 'Leo Omega', 'omgleologo.jpg', 'Community Centric & Voluntary', 'This track focuses on the individual and social development of teens and preteens. OMEGA LEO CLUBS are tailored for young adults between 18 and 30 years old. This track is designed for the personal and professional development of young adults.', 'omgleo.png', 'temp.lionsclubs.org/EN/pdfs/leo50o.pdf', 'leo@lionsclubs.org)', '-', '-'),
(14, 'African Society', 'africansociety.png', 'Cultural & Internation Communities', 'African society enables Africans from all over Africa with different origins and traditions to get to know each other as well as showcase their cultures and talents,forming a bond within the society.', 'african.jpg', '-', 'africansocietyapu@gmail.com', '-', '-'),
(16, 'Arts and Crafts Society', 'artcraft.jpg', 'Performing & Creative', 'Art and craft help develop appreciation of visual aesthetics and function as building blocks for the development of children. Art and Craft helps in all-round development of children. It facilitates language development by providing an opportunity to pick up new words and expanding their vocabulary.', 'acbanner.png', 'societyofcrafts.org', 'jmk@jmkpr.com', '-', '-'),
(17, 'Nature and Pet Lovers Society', 'nature&pet.png', 'General Interest', 'Nature & Pet Lovers Society is a platform for all animals and plants lovers to gather. \r\nSpread the Love, Love the Nature!\r\nYour objective is to promote the protection of our natural environment and animal rights. This page serves the following purposes:\r\n-Promoting the preservation of the natural environment of the UTAR campus.\r\n-To provide a platform for raising awareness on animal rights and nature preservation.\r\n-To educate the UTAR community on pets and nature as well as provide them a platform to gather and share experiences.', 'nature&petwallpaper.jpg', '-', '-', '-', '-'),
(18, 'Accounting Society', 'Accounting(1).png', 'Course-based & Academic', 'Accounting Society is a student-run organisation whose purpose is to bring together students that have an interest in the accounting and finance profession, irrespective of their degree. Our efforts are focused on creating as many opportunities as possible for our members to:<br>\r\n\r\n<ul>\r\n<li>Gain greater insight into the Accounting and Finance industry</li>\r\n<li>Enhance their employability by developing skills for the application process</li>\r\n<li>Network with industry insiders, alumni, and other students</li>\r\n<li>Understand the plethora of opportunities available, not limited to the accounting sector</li>\r\n</ul>\r\nWe endeavour to achieve this by providing frequent workshops, talks, group discussions, and other events. In addition, we strive to create a positive community that is close-knit, supporting, and inclusive through our many social events.<br>', 'accountant-accounting-banner.jpg', 'facebook.com/Radiant-Club-Soicety-113966541324963', 'radiantaccountingsociety@gmail.com', 'Apu', 'B-08-01 | APU Campus'),
(19, 'International Friendship Society', 'international.png', 'Cultural & Internation Communities', 'International Friendship Society is a communities that seek to strengthen the friendship and cultural relations around the world.\r\n<br>\r\n<b>We are here to help you make the most of your life in University!</b>\r\n<br>\r\nThe International Society is the best place for you to make new friends from all over the world. We aim to provide a warm welcome to everyone who visits. Our trips, classes, events, activities and volunteering opportunities are open to all. ', 'internationalfrd.png', 'internationalsociety.org.uk', 'radiant.Ifs@mail.com', '-', '-'),
(20, 'Physiotherapy Society', 'PhysiotherapySociety.png', 'Course-based & Academic', 'We are a society aimed at improving engagement and interaction amongst physiotherapy students at the University.\r\n<br>\r\n The society runs monthly social events to improve relationships between cohorts, offers course such as sports massage to help enhance your development into a physiotherapist. ', 'PhysiotherapySocietyBanners.png', 'facebook.com/Radiant-Club-Soicety-113966541324963', 'radiant.pss@mail.com', 'APU', 'APU '),
(21, 'Dungeons and Dragons Club', 'D-and-D-logo.png', 'General Interest', 'Dungeons and Dragons is a multiplayer table-top role-playing game that promotes group cooperation, helps develop good communication skills, and involves logic puzzles and problem-solving that prompts players to use strategy, teamwork, and creative thinking in order to solve them. \r\n<br>Its a fantastical whimsical little window away from reality, in which players can go anywhere and do anything in a free-roam fantasy world full of magic, mystery, adventure, and wonder. \r\n<br>As of right now, the D&D club has two game-masters (also known as dungeon-masters) and four active campaigns! \r\n<br>The D&D club will meet in the library after school every Wednesday 6pm. Contact us for more information.', 'dndbanner.jpg', 'garfield.aps.edu/ddclub#:~:text=The%20Grey%20Wolf%20D%26D%20Club,and%20explore%20a%20mystical%20world.', 'd&d.radiant@mail.com', 'APU', 'Library | APU'),
(22, 'Dance Club', 'danceclub.jpg', 'Performing & Creative', 'We believe anyone and everyone can dance. It is the dedication and passion that someone has for the art of dance. Our instructors are both dedicated and experience in their field. The styles we have are:<br>\r\n<ul>\r\n<li>Hip Hop</li>\r\n<li>Girl style</li>\r\n<li>Popping</li>\r\n<li>B-boy</li>\r\n</ul>\r\nWe are working on getting more styles, both contemporary and street to further versatile our students. Dancers are not born, they are made and grown here. With or without experience, we welcome anyone & everyone !\r\n<br>For more info please drop us a message. We will get back to you As soon as possible !\r\n<br>Thank you!', 'dance-banner.jpg', 'facebook.com/Radiant-Club-Soicety-113966541324963', 'danceclub.radiant@mail.com', 'APU', 'C-06-12 | APU Campus');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eid` int(10) NOT NULL,
  `etitle` varchar(200) NOT NULL,
  `eimage` varchar(255) DEFAULT NULL,
  `announcement` varchar(2500) DEFAULT NULL,
  `description` varchar(5000) NOT NULL,
  `cid` int(10) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `edate_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eid`, `etitle`, `eimage`, `announcement`, `description`, `cid`, `cname`, `edate_time`) VALUES
(3, 'APU Venture Day 2022', 'ventureday.png', NULL, 'APU Venture Day 2022 consist of 3 elements which are “Entrepreneurial”, “Diversification” and “Modern”.<br>\r\n\r\nIn this eye-popping event, various kinds of activities such as a knowledgeable workshop, Treasure Hunt, FnB booths, entertaining games and many more will be carried out on that wonderful day. Everyone around the globe is welcome to join this exciting event.<br><br>\r\n\r\n🗓️ Date: Saturday, 18th June 2022<br>\r\n\r\n⏳  Time: 10:00am to 6:30pm (GMT+8)<br>\r\n\r\n📍 Venue: APU Campus<br>\r\n\r\n✅ Booth Registration: <a href=\"https://shorturl.at/cgsR3\"> https://shorturl.at/cgsR3</a><br>\r\n\r\n⭐ Feel free to contact us for more info!<br>\r\n\r\nLiew Xin Yee (Project Manager): <a href=\"mailto:xinyee.liew132@gmail.com?subject=subject text\">xinyee.liew132@gmail.com </a><br>\r\n\r\nLenard Yang (Member of Marketing Department):<a href=\"mailto:lenardyyy@gmail.com?subject=subject text\">lenardyyy@gmail.com </a> <br>\r\n\r\nInstagram- @apuventureday2022<br>\r\n\r\nFacebook- APU Venture Day 2022', 10, 'Rotaract Club', '2022-06-01 08:21:49'),
(5, 'Brawlhalla Tournament', 'BCSLOGO.png', 'xD', 'It’s time for a break from that hectic routine of university life and sign up for the Brawlhalla competition for a chance to prove your skills and win the total prize pool of RM150!!<br>\n\nRelieve your stress, make new friends, and join the discord server by clicking the registration link below.<br><br>\n\nDate: Thursday, 28th May 2022<br>\n\nTime: 08:00 PM (GMT +8)<br>\n\nPlatform: Discord and Brawlhalla<br>\n\nRegistration Deadline: 25th May 2022<br>\n\nRegister Today: <a href=\"https://forms.gle/d6NVpbeL2oE7VBdH6\">https://forms.gle/d6NVpbeL2oE7VBdH6</a>', 8, 'E-Sports & Games Development Society ', '2022-06-01 08:10:55'),
(7, 'AFRICA DAY 2022', 'africaday.jpeg', '', 'We’re excited for the return of Africa Day and we want YOU to join us! 🎉<br>\r\n\r\nAfrica day is a tailored event by the APU African society which involves Africans coming together to showcase their various cultures and talents in different ways such as dances. modelling, cooking etc.<br><br>\r\n\r\nDate: Friday, 8th July 2022 (Tentative Date)<br>\r\n\r\nTime: 12pm to 11pm<br>\r\n\r\nVenue: APU Campus<br>\r\n\r\nThe event provides an opportunity for registers to participate to showcase their talents outlined in the registration form below. For those who would like to take part in the event are encouraged to register in the link.<br>\r\n\r\n𝗡𝗼𝘁𝗲 𝘁𝗵𝗮𝘁 𝗮𝗹𝗹 𝗽𝗮𝗿𝘁𝗶𝗰𝗶𝗽𝗮𝗻𝘁𝘀 𝘄𝗶𝗹𝗹 𝗯𝗲 𝗽𝗿𝗼𝘃𝗶𝗱𝗲𝗱 𝘄𝗶𝘁𝗵 𝘁𝗵𝗲 𝘁𝗼𝗼𝗹𝘀 𝘁𝗵𝗲𝘆 𝗿𝗲𝗾𝘂𝗶𝗿𝗲 𝘁𝗼 𝗽𝗿𝗲𝗽𝗮𝗿𝗲 𝗮𝗻𝗱 𝗽𝗿𝗶𝘇𝗲𝘀 𝗳𝗼𝗿 𝘄𝗶𝗻𝗻𝗲𝗿𝘀 𝗶𝗻 𝗲𝗮𝗰𝗵 𝗰𝗮𝘁𝗲𝗴𝗼𝗿𝘆 𝘄𝗶𝗹𝗹 𝗯𝗲 𝗮𝘄𝗮𝗿𝗱𝗲𝗱. <br>\r\nMore information & updates on the event will be rolled out over next few weeks on our socials.<br>\r\n\r\nRegistration form Link:<a href=\"https://forms.gle/5ae6xdc3d1hPXvZG6\">https://forms.gle/5ae6xdc3d1hPXvZG6</a>\r\n<br>\r\n|| 𝐑𝐞𝐠𝐢𝐬𝐭𝐫𝐚𝐭𝐢𝐨𝐧 𝐃𝐞𝐚𝐝𝐥𝐢𝐧𝐞: 𝟔𝐭𝐡 𝐉𝐮𝐧𝐞 𝟐𝟎𝟐𝟐 ||<br>\r\n\r\nIn case of any inquiries kindly contact us through our email or socials.<br>\r\n\r\nEmail: <a href=\"mailto:africansocietyapu@gmail.com?subject=subject text\">africansocietyapu@gmail.com</a>\r\n\r\n<br>\r\nInstagram: @africansocietyapu', 14, 'African Society', '2022-06-01 08:18:15'),
(27, 'Fundraising for Furrykids Safehaven', 'Furrykids_APSPACE_SIMERJIT-KAUR-SAGOO.jpg', '', '\r\nOver the years, Furrykids Safehaven has rescued and taken care of 2000 homeless dogs on their premises and needs about 50K monthly just to feed the dogs. With the growing number of hopeful furry kids, their resources are often limited as they struggle to sustain on a monthly basis<br>\r\n\r\nEvery ringgit counts. Whatever amount you choose to donate; your generous contribution will always be used in the most efficient way possible to help the furry kids.<br><br>\r\n\r\nMake your donation here:<a href=\"https://bit.ly/furryKids\">https://bit.ly/furryKids</a>', 17, 'Nature and Pet Lovers Society', '2022-06-01 08:12:35'),
(28, 'Badminton Tour University 2022', 'badmintontour.jpg', '', 'Kuala Lumpur, (Malaysia)<br>Date: 15/10 - 21/10/2022<br>Organising Committee:<br>   Malaysian University Sports Council<br>   Ministry of Higher Education Malaysia<br>   Level 2, No. 2, Tower 2   Jalan P5/6, Precint 5   62200 Putrajaya   Malaysia<br>\r\nContact Us for more information:<br>\r\n<a href=\"mailto:apubmtnclub@gmail.com?subject=subject text\">apubmtnclub@gmail.com</a>', 4, 'Badminton Club', '2022-06-01 08:31:13'),
(29, 'BAT X APU WEEK: Ideathon', 'BATxAPU-Week-_-Poster_v2-01-01.png', '', '<b>BAT X APU Week is finally here to drive transformation for a better future!</b><br><br>Come up with bright ideas to solve problems associated to E.S.G. in this Ideathon challenge and stand a chance to win up to RM10,000 prizes!Ensure followings to make it a great and impressive idea.<br><ul><li>Look for some practical challenges which can be addressed by your ideas</li><li>Provide feasibility of its practical implementation</li><li>Provide numbers and statistics to your idea</li><li>Form of presenting the idea</li><li>PowerPoint presentation</li><li>Supporting video (Optional)</li><li>Demonstration of idea (Optional)</li></ul><b>Environmental: Reduce Carbon Footprint</b><ul><li>Reducing carbon footprint is one of the priorities to control our climate and ensure we provide a health environment for ourselves and our future generations.</li><li>Few sample problem areas:</li><ul><li>Reducing fuel consumption in our commute</li><li>Saving electricity</li><li>Offsetting the carbon</li><li>Emission from factory</li><li>Recycling process</li></ul></ul>Social: Impact on the Local Communities<ul><li>Bring some impact to empower and support our local communities</li><li>Few sample problem areas:</li><ul><li>Improved education</li><li>Health support</li><li>Happier environment</li><li>Supporting unprivileged</li><li>Support to elders</li><li>Animal and bird support</li><li>Hygiene</li></ul></ul><b>Governance: Compliance at Workplace</b><br><ul><li>Workplace compliance is a critical to ensure a productive environment as well to maintain credibility of organisation.</li><li>Few sample problem areas:</li><ul><li>Gender neutrality</li><li>Collaboration and empowerment</li><li>Effective communication</li><li>Complying to information security at work</li><li>Multi cultural working environment</li><li>Reduce bureaucracy</li><li>Health hazards at factory and automating safety compliance</li></ul></ul>Register Today @ <a href=\"https://shorturl.at/pzBO1\"> https://shorturl.at/pzBO1</a><br>\r\n\r\nRegistration Deadline: Saturday, 30th April 2022<br>\r\n\r\nStay Tune for more upcoming event!', 10, 'Rotaract Club', '2022-06-01 09:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(2500) NOT NULL,
  `mdate_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `name`, `email`, `subject`, `message`, `mdate_time`) VALUES
(4, 'Chor Yang', 'qwer@mail.com', 'Testing', 'Testing 123', '2022-06-01 09:24:32'),
(5, 'TheOne', 'theone@gmail.com', 'xD', 'TEstttttttttttttttttttttttttttttt', '2022-06-01 09:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sid` int(10) NOT NULL,
  `bio` varchar(200) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `studentid` varchar(10) NOT NULL,
  `intake` varchar(25) NOT NULL,
  `mobile_num` varchar(20) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `birth_date` date NOT NULL,
  `ic_passport` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `clubid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sid`, `bio`, `username`, `email`, `password`, `Fname`, `Lname`, `studentid`, `intake`, `mobile_num`, `gender`, `birth_date`, `ic_passport`, `country`, `role`, `clubid`) VALUES
(1, NULL, 'Tee Chor Yang', 'choryang@gmail.com', '123', 'Tee', 'Chor Yang', 'TP061339', 'UCDF2007ICT(SE)', '0123456789', 'Male', '2001-06-26', '123456789', 'Malaysia', 'Committee', 10),
(2, NULL, 'Lee Jia Qian', 'jiaqian@gmail.com', '123', 'Lee', 'Jia Qian', 'TP005566', 'UCDF2007ICT(SE)', '0124567893', 'Male', '2000-01-01', '234567891', 'Malaysia', 'Committee', 8),
(3, NULL, 'Then Ze Qin', 'zeqin@gmail.com', '123', 'Then', 'Ze Qin', 'TP003366', 'UCDF2007ICT(SE)', '1235678934', 'Male', '2000-01-02', '345678912', 'Malaysia', 'Committee', 13),
(4, NULL, 'Wong Yew Wei', 'yewwei@gmail.com', '123', 'Wong', 'Yew Wei', 'TP335599', 'UCDF2007ICT(SE)', '0126789345', 'Male', '2000-01-03', '456789123', 'Malaysia', 'Organizer', 10),
(5, NULL, 'Teoh Yee Chin', 'yeechin@gmail.com', '123', 'Teoh', 'Yee Chin', 'TP778855', 'UCDF2007ICT(SE)', '0127893456', 'Male', '2000-01-04', '567891234', 'Malaysia', 'Committee', 4),
(6, NULL, 'Wong Wei Ming', 'weiming@gmial.com', '123', 'Wong', 'Wei Ming', 'TP112233', 'UCDF2007ICT(SE)', '0128934567', 'Male', '2000-01-05', '678912345', 'Malaysia', 'Committee', 14),
(7, NULL, 'Teo Ho Yi', 'hoyi@gmail.com', '123', 'Teo', 'Ho Yi', 'TP665544', 'UCDF2007ICT(SE)', '0129345678', 'Female', '2000-01-06', '789123456', 'Malaysia', 'Committee', 16),
(8, NULL, 'Teo Su Yin', 'suyin@gmail.com', '123', 'Teo', 'Su Yin', 'TP852003', 'UCDF2007ICT(SE)', '0125829425', 'Female', '2000-01-07', '891234567', 'Malaysia', 'Committee', 17),
(9, NULL, 'Yong Kai Bin', 'kaibin@gmail.com', '123', 'Yong', 'Kai Bin', 'TP012345', 'UCDF2007ICT(SE)', '0128426518', 'Male', '2000-01-08', '912345678', 'Malaysia', 'Committee', 18),
(10, NULL, 'Yong Jun Aun', 'junaun@gmail.com', '123', 'Yong', 'Jun Aun', 'TP123456', 'UCDF2007ICT(SE)', '0123481276', 'Male', '2000-01-09', '584267159', 'Malaysia', 'Committee', 19),
(11, NULL, 'Gan Gee Yin', 'geeyin@gmail.com', '123', 'Gan', 'Gee Yin', 'TP234567', 'UCDF2007ICT(SE)', '0128521349', 'Female', '2000-01-10', '741852963', 'Malaysia', 'Committee', 20),
(12, NULL, 'Low Jye Shan', 'jyeshan@gmail.com', '123', 'Low', 'Jye Shan', 'TP345678', 'UCDF2007ICT(SE)', '0127539516', 'Female', '2000-01-11', '951231753', 'Malaysia', 'Committee', 21),
(13, NULL, 'Fong Wan Yee', 'wanyee@gmail.com', '123', 'Fong', 'Wan Yee', 'TP456789', 'UCDF2007ICT(SE)', '0123641823', 'Female', '2000-01-12', '134679826', 'Malaysia', 'Committee', 22),
(14, NULL, 'Chai Li Qi', 'liqi@gmail.com', '123', 'Chai', 'Li Qi', 'TP567890', 'UCDF2007ICT(SE)', '0134851239', 'Male', '2000-01-13', '718293465', 'Malaysia', 'Committee', 5),
(15, NULL, 'Loh Jun Kit', 'junkit@gmail.com', '123', 'Loh', 'Jun Kit', 'TP678912', 'UCDF2007ICT(SE)', '0178521463', 'Male', '0000-00-00', '197328465', 'Malaysia', 'Students', 10),
(16, NULL, 'Benedict Cumberbatch', 'benedict@gmail.com', '123', 'Benedict ', 'Cumberbatch', 'TP987654', 'UCDF2007ICT(SE)', '0102828379', 'Male', '1999-02-01', '134789009', 'United State', 'Students', 10),
(17, NULL, 'Scarlett Johansson', 'scarlett@gmail.com', '123', 'Scarlett ', 'Johansson', 'TP876543', 'UCDF2007ICT(SE)', '0193217568', 'Female', '1999-01-23', '185334992', 'United State', 'Students', 10),
(18, NULL, 'Scarlet Witch', 'scarlet@gmail.com', '123', 'Scarlet ', 'Witch', 'TP765432', 'UCDF2007ICT(DI)', '0195347126', 'Female', '2001-05-07', '912341153', 'United State', 'Organizer', 8),
(19, NULL, 'Chan Fong', 'fong@gmail.com', '123', 'Chan', 'Fong', 'TP654321', 'UCDF2007ICT(DI)', '010648212', 'Male', '2000-01-30', '785169442', 'Malaysia', 'Students', 4),
(20, NULL, 'Lee Zi Jia', 'zijia@gamil.com', '123', 'Lee', 'Zi Jia', 'TP543210', 'UCDF2007ICT(DI)', '012034852', 'Male', '1999-05-30', '094031660', 'Malaysia', 'Students', NULL),
(21, NULL, 'Chris Hemsworth', 'chris@gmail.com', '123', 'Chris', 'Hemsworth', 'TP432109', 'UCDF2007ICT(DI)', '0193004822', 'Male', '1999-06-30', '995003448', 'United State', 'Students', NULL),
(22, NULL, 'Tom Holland', 'tom@gmail.com', '123', 'Tom ', 'Holland', 'TP321987', 'UCDF2007ICT(DI)', '0193340882', 'Male', '2001-06-05', '833056611', 'United State', 'Organizer', 10),
(23, NULL, 'Tom Hardy', 'hardy@gmail.com', '123', 'Tom', 'Hardy', 'TP210987', 'UCDF2007ICT(DI)', '0120582281', 'Male', '1999-05-16', '830445123', 'United State', 'Students', NULL),
(25, NULL, 'Lee Khai Wen', 'khaiwen@gmail.com', '123', 'Lee', 'Khai Wen', 'TP006103', 'UCDF2007ICT(SE)', '0120035130', 'Male', '2000-01-14', '003215840', 'Malaysia', 'Students', NULL),
(31, NULL, 'admin', 'admin@radiantcs.com.my', 'admin123', 'Admin', 'Admin', 'TPadmin', 'Admin', '+60179546880', 'admin', '2001-01-01', '1234567890', 'Admin', 'Admin', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applyevent`
--
ALTER TABLE `applyevent`
  ADD PRIMARY KEY (`aeid`);

--
-- Indexes for table `applyjoinclub`
--
ALTER TABLE `applyjoinclub`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applyevent`
--
ALTER TABLE `applyevent`
  MODIFY `aeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `applyjoinclub`
--
ALTER TABLE `applyjoinclub`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `sid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
