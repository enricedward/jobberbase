-- phpMyAdmin SQL Dump
-- version 2.11.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 20, 2008 at 02:39 AM
-- Server version: 5.0.41
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `jobberbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `var_name` varchar(32) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `category_order` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `category_order` (`category_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='programming/design/admin/etc.' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `var_name`, `category_order`) VALUES
(1, 'Programmers', 'programmers', 7),
(2, 'Designers', 'designers', 3),
(3, 'Administrators', 'administrators', 0),
(7, 'Marketers', 'marketers', 2),
(5, 'Testers', 'testers', 5),
(6, 'Editors', 'editors', 1),
(8, 'Managers', 'managers', 4),
(9, 'Consultants', 'consultants', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `ascii_name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `ascii_name`) VALUES
(1, 'Adjud', 'Adjud'),
(2, 'Alba Iulia', 'Alba-iulia'),
(3, 'Alexandria', 'Alexandria'),
(4, 'Arad', 'Arad'),
(5, 'Bac', 'Bacau'),
(6, 'Baia-Mare', 'Baia-mare'),
(7, 'B', 'Barlad'),
(8, 'Bistri', 'Bistrita'),
(9, 'Boto', 'Botosani'),
(10, 'Br', 'Braila'),
(11, 'Bra', 'Brasov'),
(12, 'Breaza', 'Breaza'),
(13, 'Bucure', 'Bucuresti'),
(14, 'Buz', 'Buzau'),
(15, 'C', 'Calarasi'),
(16, 'C', 'Campina'),
(18, 'Caracal', 'Caracal'),
(19, 'Caransebe', 'Caransebes'),
(20, 'Cernavod', 'Cernavoda'),
(22, 'Cluj-Napoca', 'Cluj-napoca'),
(23, 'Constan', 'Constanta'),
(24, 'Covasna', 'Covasna'),
(25, 'Craiova', 'Craiova'),
(26, 'Curtea de Arge', 'Curtea-de-arges'),
(27, 'Deva', 'Deva'),
(28, 'Drobeta T. Severin', 'Drobeta-t-severin'),
(29, 'Foc', 'Focsani'),
(30, 'G', 'Gaesti'),
(31, 'Gala', 'Galati'),
(32, 'Giurgiu', 'Giurgiu'),
(33, 'Hunedoara', 'Hunedoara'),
(34, 'Ia', 'Iasi'),
(36, 'Lugoj', 'Lugoj'),
(37, 'Mangalia', 'Mangalia'),
(38, 'Media', 'Medias'),
(39, 'Miercurea-Ciuc', 'Miercurea-ciuc'),
(40, 'One', 'Onesti'),
(41, 'Oradea', 'Oradea'),
(42, 'Or', 'Orsova'),
(43, 'Otopeni', 'Otopeni'),
(44, 'Pa', 'Pascani'),
(46, 'Piatra Neam', 'Piatra-neamt'),
(47, 'Pite', 'Pitesti'),
(48, 'Ploie', 'Ploiesti'),
(49, 'Reghin', 'Reghin'),
(50, 'Re', 'Resita'),
(51, 'R', 'Rimnicu-sarat'),
(52, 'R', 'Rimnicu-vilcea'),
(53, 'Roman', 'Roman'),
(54, 'Satu-Mare', 'Satu-mare'),
(55, 'Secuieni', 'Secuieni'),
(56, 'Sf', 'Sfantu-gheorghe'),
(57, 'Sibiu', 'Sibiu'),
(58, 'Sinaia', 'Sinaia'),
(59, 'Sl', 'Slanic-moldova'),
(60, 'Slatina', 'Slatina'),
(61, 'Slobozia', 'Slobozia'),
(62, 'Suceava', 'Suceava'),
(63, 'T', 'Targoviste'),
(64, 'T', 'Targu-jiu'),
(65, 'T', 'Targu Ocna'),
(66, 'Tecuci', 'Tecuci'),
(67, 'Timi', 'Timisoara'),
(68, 'T', 'Tirgu-mures'),
(69, 'Tulcea', 'Tulcea'),
(70, 'Turda', 'Turda'),
(71, 'Vaslui', 'Vaslui'),
(72, 'Zalau', 'Zalau'),
(-1, 'Anywhere', 'Anywhere');

-- --------------------------------------------------------

--
-- Table structure for table `hits`
--

CREATE TABLE IF NOT EXISTS `hits` (
  `job_id` int(10) unsigned NOT NULL,
  `created_on` datetime NOT NULL,
  `ip` varchar(15) NOT NULL,
  KEY `job_id` (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hits`
--

INSERT INTO `hits` (`job_id`, `created_on`, `ip`) VALUES
(11, '2008-08-20 02:36:27', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) default '',
  `description` text,
  `company` varchar(150) default '',
  `city_id` int(11) NOT NULL,
  `url` varchar(150) default NULL,
  `apply` varchar(200) default '',
  `created_on` timestamp NOT NULL default '0000-00-00 00:00:00',
  `is_temp` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `views_count` int(11) NOT NULL,
  `auth` varchar(32) NOT NULL,
  `outside_location` varchar(150) NOT NULL,
  `poster_email` varchar(100) NOT NULL,
  `apply_online` tinyint(4) NOT NULL,
  `spotlight` tinyint(4) default NULL,
  PRIMARY KEY  (`id`),
  KEY `type_id` (`type_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `type_id`, `category_id`, `title`, `description`, `company`, `city_id`, `url`, `apply`, `created_on`, `is_temp`, `is_active`, `views_count`, `auth`, `outside_location`, `poster_email`, `apply_online`, `spotlight`) VALUES
(1, 1, 1, 'web developer', 'We\\''re a startup searching for a cool web developer that masters following technologies:\r\n* php, mysql\r\n* javascript, dom, ajax\r\n* html, css\r\n\r\nPerson should also have a good sens of user behavior.\r\n\r\nExcellent payment! ;)', 'Foo Inc.', -1, 'http://www.fooinc.com', '', '2008-08-20 02:35:29', 0, 1, 10, 'f1acd80152446f4cf8a0bb8242398be7', 'sss', 'jobs@fooinc.com', 1, 1),
(2, 3, 2, 'Illustrator/Photoshop expert', 'Could you redraw in Illustrator da Vinci\\''s Gioconda, blindfolded?\r\nLet us know! :)', 'UnrealExpectations', -1, 'http://unrealexpectations.com', '', '2008-08-20 02:35:37', 0, 1, 6, '6ebcfde637d98a9738c024c6074e945d', '', 'jobs@unrealexpectations.com', 1, 0),
(4, 1, 1, 'web developer 3', 'We\\''re a startup searching for a cool web developer that masters following technologies:\r\n* php, mysql\r\n* javascript, dom, ajax\r\n* html, css\r\n\r\nPerson should also have a good sens of user behavior.\r\n\r\nExcellent payment! ;)', 'Foo Inc.', -1, 'http://www.fooinc.com', '', '2008-08-20 02:35:45', 0, 1, 8, 'f1acd80152446f4cf8a0bb8242398be7', 'London, UK', 'jobs@fooinc.com', 1, 1),
(5, 1, 1, 'web developer 2', 'We\\''re a startup searching for a cool web developer that masters following technologies:\r\n* php, mysql\r\n* javascript, dom, ajax\r\n* html, css\r\n\r\nPerson should also have a good sens of user behavior.\r\n\r\nExcellent payment! ;)', 'Foo Inc.', -1, 'http://www.fooinc.com', '', '2008-08-20 02:35:52', 0, 1, 6, 'f1acd80152446f4cf8a0bb8242398be7', 'London, UK', 'jobs@fooinc.com', 1, 0),
(11, 1, 3, 'nice developer needed', 'asdfsd', 'temp name', 1, 'http://google.com', '', '2008-08-20 02:35:57', 0, 1, 2, '2e3f1e857af3a4e191f453d747fbf212', '', 'jobs@fooinc.com', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE IF NOT EXISTS `job_applications` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `job_id` int(10) unsigned NOT NULL,
  `created_on` datetime NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `job_applications`
--


-- --------------------------------------------------------

--
-- Table structure for table `job_params`
--

CREATE TABLE IF NOT EXISTS `job_params` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `value` varchar(50) NOT NULL,
  `categ` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `job_params`
--

INSERT INTO `job_params` (`id`, `value`, `categ`) VALUES
(1, 'php/mysql', 'know-how'),
(2, '.net', 'know-how'),
(3, 'xhtml/css', 'know-how'),
(4, 'graphic design', 'know-how'),
(5, 'small team', 'company'),
(6, 'large company', 'company'),
(7, 'ruby/rails', 'know-how'),
(8, 'oracle', 'know-how'),
(9, 'c/c++/c#', 'know-how'),
(10, 'javascript/ajax', 'know-how'),
(11, 'java', 'know-how'),
(12, 'flash', 'know-how'),
(13, 'junior', 'level'),
(14, 'senior', 'level'),
(15, 'full-time', 'type'),
(16, 'part-time', 'type'),
(17, 'freelance', 'type'),
(18, 'sysadmin', 'know-how'),
(19, 'linux/server admin', 'know-how'),
(20, 'erp/sap', 'know-how'),
(21, 'copywriting/editare', 'know-how'),
(22, 'seo/sem', 'know-how'),
(23, 'manager', 'know-how'),
(24, 'work from home', 'company'),
(25, 'work at the office', 'company'),
(28, 'internship', 'type'),
(29, 'medium', 'level'),
(30, 'python', 'know-how'),
(31, 'bonuses', 'company'),
(32, 'training', 'company');

-- --------------------------------------------------------

--
-- Table structure for table `job_requests`
--

CREATE TABLE IF NOT EXISTS `job_requests` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_on` datetime NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job_requests`
--

INSERT INTO `job_requests` (`id`, `name`, `email`, `created_on`, `ip`) VALUES
(1, 'asdf', 'me@filipcte.ro', '2008-01-30 00:10:28', '127.0.0.1'),
(2, 'asdf', 'me@filipcte.ro', '2008-01-30 00:10:48', '127.0.0.1'),
(3, 'asdf', 'me@filipcte.ro', '2008-01-30 00:11:56', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `job_requests_params`
--

CREATE TABLE IF NOT EXISTS `job_requests_params` (
  `request_id` int(10) unsigned NOT NULL,
  `param_id` int(10) unsigned NOT NULL,
  KEY `request_id` (`request_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_requests_params`
--

INSERT INTO `job_requests_params` (`request_id`, `param_id`) VALUES
(1, 17),
(1, 31),
(1, 5),
(1, 32),
(1, 10),
(1, 1),
(1, 3),
(1, 14),
(2, 17),
(2, 31),
(2, 5),
(2, 32),
(2, 10),
(2, 1),
(2, 3),
(2, 14),
(3, 17),
(3, 31),
(3, 5),
(3, 32),
(3, 10),
(3, 1),
(3, 3),
(3, 14);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `has_form` enum('0','1') NOT NULL,
  `form_message` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `url`, `page_title`, `keywords`, `description`, `title`, `content`, `has_form`, `form_message`) VALUES
(1, 'about', 'About Us', '', '', 'About Us', '<h4>Hello!</h4>\r\n<p>This job board is an open source implementation of <a href="http://www.jobber.ro/">www.jobber.ro</a>.</p>\r\n<p>Don''t hesitate to&nbsp;contact us!</p>', '0', ''),
(5, 'contact', 'Contact Us', '', '', 'We really appreciate feedback!', '<p>E-mail us at <strong>hello [at] domain [dot] com</strong> or use the form below:</p>', '1', '<p>Thank you for your message! :)</p>'),
(4, 'widgets', 'Widgets', '', '', 'Site widget', '<h4>Would you like to display our latest jobs on your site?</h4>\r\n<p>Insert one of the following snippets in your page''s HTML code, in the position where the ads should appear:</p>\r\n<ol>\r\n<li>Get latest 5 jobs from all categories and all types, posted in the past 7 days, in random order:\r\n<pre>&lt;script src="http://localhost/jobber/api/api.php?action=getJobs<br />&amp;type=0&amp;category=0&amp;count=5&amp;random=1&amp;days_behind=7&amp;response=js" type="text/javascript"&gt;&lt;/script&gt;<br /><br />&lt;script type="text/javascript"&gt;<strong>showJobs(''jobber-container'', ''jobber-list'');</strong>&lt;/script&gt;</pre>\r\n</li>\r\n<li>Get last 10 full-time jobs for programmers, posted in the past 15 days, ordered by publish date (newest on top):\r\n<pre>&lt;script src="http://localhost/jobber/api/api.php?action=getJobs<br />&amp;type=fulltime&amp;category=programmers&amp;count=10&amp;random=0&amp;days_behind=15&amp;response=js" <br />type="text/javascript"&gt;&lt;/script&gt;<br /><br />&lt;script type="text/javascript"&gt;<strong>showJobs(''jobber-container'', ''jobber-list'');</strong>&lt;/script&gt;</pre>\r\n</li>\r\n<li>Get latest jobs published by a company (e.g. Google):\r\n<pre>&lt;script src="http://localhost/jobber/api/api.php?action=getJobsByCompany<br />&amp;company=google&amp;count=10&amp;response=js" type="text/javascript"&gt;&lt;/script&gt;<br /><br />&lt;script type="text/javascript"&gt;<strong>showJobs(''jobber-container'', ''jobber-list'');</strong>&lt;/script&gt;</pre>\r\n</li>\r\n</ol>\r\n<h2>The parameters you can use when calling the API, are:</h2>\r\n<ul>\r\n<li><strong>action</strong>: "getJobs" - all jobs / "getJobsByCompany" - a single company''s jobs</li>\r\n<li><strong>type</strong>: "0" - toate / "fulltime" / "parttime" / "freelance";</li>\r\n<li><strong>category</strong>: "0" - all / "programmers" / "designers" / "administrators" / "managers" / "testers" / "editors";</li>\r\n<li><strong>count</strong>: number of job ads to display;</li>\r\n<li><strong>random</strong>: "1" - display randomly / "0" - display ordered by publish date (newest on top);</li>\r\n<li><strong>days_behind</strong>: get only jobs posted in the past X days (type "0" if you don''t want to limit this);</li>\r\n<li><strong>response</strong>: "js" - returns jobs as JavaScript code / "json" - returns only a JSON string / "xml" - returns an XML.</li>\r\n</ul>\r\n<h2>Use CSS to style the list:</h2>\r\n<pre>ul.jobber-list {<br />  list-style-type: none;<br />  margin: 0;<br />  padding: 0;<br />}<br />ul.jobber-list li {<br />  margin-bottom: 5px;<br />}</pre>', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE IF NOT EXISTS `searches` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `keywords` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `spam_reports`
--

CREATE TABLE IF NOT EXISTS `spam_reports` (
  `id` int(11) NOT NULL auto_increment,
  `the_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `ip` varchar(15) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `spam_reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(16) NOT NULL,
  `var_name` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='full-time/freelance' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `var_name`) VALUES
(1, 'Full-time', 'fulltime'),
(2, 'Part-time', 'parttime'),
(3, 'Freelance', 'freelance');

-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 13, 2009 at 11:54 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `jobberbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `setting_name` varchar(64) DEFAULT NULL,
  `setting_title` varchar(255) NOT NULL,
  `setting_description` text,
  `setting_value` longtext,
  `field_type` text,
  `validation` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `category_id`, `setting_name`, `setting_title`, `setting_description`, `setting_value`, `field_type`, `validation`) VALUES
(1, 1, 'site_name', 'Site name', 'The name of your JobBoard, used in various templates.', 'Jobberbase', '', 'not_empty'),
(2, 1, 'admin_email', 'Admin Email', 'The email companies will receive mail from.', 'admin@localhost.cc', '', 'not_empty|is_email'),
(3, 1, 'notify_email', 'Notify Email', 'The email for receiving new job postings.', 'admin@localhost.cc', '', 'not_empty|is_email'),
(4, 1, 'theme', 'Theme', 'Pick the theme to use for the frontend.', 'default', 'available_themes', 'not_empty'),
(5, 1, 'html_title', 'HTML Title', 'The HTML title for the homepage.', 'Jobberbase', '', ''),
(6, 1, 'meta_keywords', 'Site keywords', 'Meta Keywords. Useful for Search Engine Optimization (separate by comma).', '', '', ''),
(7, 1, 'meta_description', 'Site description', 'Meta Description Tag. Useful for Search Engine Optimization.', '', 'text_area', ''),
(8, 1, 'max_cv_size', 'Max CV filesize', 'The maximum filesize for uploaded CV''s in bytes', '3145728', '', 'not_empty|is_number'),
(9, 1, 'file_upload_dir', 'Upload Directory', 'Upload directory to temporarily save CV''s. Must be writable.', 'uploads/', '', 'not_empty'),
(10, 1, 'apply_delay', 'Apply delay', 'The number of minutes that must pass between applications from the same IP address', '0', '', 'not_empty|is_nummer'),
(11, 1, 'date_format', 'Date format', 'The format in which dates are displayed. %d = day, %m = month, %Y = 4 digit year.', '%d-%m-%Y', NULL, 'not_empty'),
(12, 1, 'date_time_format', 'Date / Time format', 'The format in which times are displayed. %d = day, %m = month, %Y = 4 digit year, %H = 24-hour and %i = minute.', '%d-%m-%Y %H:%i', NULL, 'not_empty'),
(13, 1, 'sidebar_show_what', 'Sidebar Shortlist', 'Either cities or categories can be shown in the sidebar', 'cities', 'select|categories|cities', 'not_empty|is_alpha'),
(14, 1, 'sidebar_only_cities_with_jobs', 'Sidebar only non-empty Cities', 'Should the sidebar cities (if enabled) only show those that actually contain jobs?', 'yes', 'radiobutton|yes|no', 'non_empty'),
(15, 2, 'jobs_per_page', 'Jobs per page', 'The amount of jobs per page, before pagination is called.', '50', '', 'not_empty|is_number'),
(16, 2, 'jobs_per_search', 'Jobs per search', 'The amount of jobs per page when searching.', '25', '', 'not_empty|is_number'),
(17, 2, 'spotlight_jobs', 'Spotlight Jobs #', 'Amount of Spotlight Jobs to display on the front page.', '3', NULL, 'not_empty|is_number'),
(18, 2, 'latest_jobs', 'Latest Jobs #', 'Amount of latest jobs to show on the front page.', '7', NULL, 'not_empty|is_number'),
(19, 2, 'most_applied_jobs', 'Most Applied to #', 'Amount of most-applied-to jobs to show on the front page.', '7', NULL, 'not_empty|is_number'),
(20, 2, 'search_method', 'Search Method', 'Choose which search method to use. ''Alternate'' checks every keyword to appear in either the title, description or cityname.', 'alternate', 'radiobutton|classic|alternate', 'not_empty|is_alpha'),
(21, 3, 'url_cities', 'Cities Cloud', 'The URL for the City Cloud page.', 'cities', '', 'not_empty|is_url_string'),
(22, 3, 'url_companies', 'Companies Cloud', 'The URL for the Company Cloud page.', 'companies', '', 'not_empty|is_url_string'),
(23, 3, 'url_job', 'Job Details', 'The URL for the Job Details page.', 'job', '', 'not_empty|is_url_string'),
(24, 3, 'url_jobs', 'Jobs per Category', 'The URL for the Jobs per Category pages.', 'jobs', '', 'not_empty|is_url_string'),
(25, 3, 'url_jobs_at_company', 'Jobs per Company', 'The URL for the Jobs per Company pages.', 'jobs-at', '', 'not_empty|is_url_string'),
(26, 3, 'url_jobs_in_city', 'Jobs per City', 'The URL for the Jobs per City pages.', 'jobs-in', '', 'not_empty|is_url_string');

-- --------------------------------------------------------

--
-- Table structure for table `settings_categories`
--

CREATE TABLE IF NOT EXISTS `settings_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `var_name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `settings_categories`
--

INSERT INTO `settings_categories` (`id`, `name`, `var_name`, `description`) VALUES
(1, 'Main Settings', 'main', 'The main settings for your JobberBase installation. This includes settings such as site name, meta-tags etc.'),
(3, 'URL Rewrite Settings', 'url-rewrite', 'You can easily change the structure of various URLs with these settings.'),
(2, 'Search / Pagination Settings', 'search-and-pagination', 'Settings that change the amount of jobs to display per page and which search method to use.');