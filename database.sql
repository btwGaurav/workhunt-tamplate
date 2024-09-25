
-- Listings table

CREATE TABLE `workhunt`.`listings` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `desc` LONGTEXT NOT NULL,
  `salary` VARCHAR(45) NOT NULL,
  `tags` VARCHAR(255) NULL,
  `company` VARCHAR(45) NULL,
  `address` VARCHAR(255) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `requirements` LONGTEXT NULL,
  `benefits` LONGTEXT NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)

);

-- users table

CREATE TABLE `workhunt`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `created_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)

);

-- Listings table user_id is a foreign key to users table id

ALTER TABLE `workhunt`.`listings` 
ADD INDEX `fk_listings_users_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `workhunt`.`listings` 
ADD CONSTRAINT `fk_listings_users`
  FOREIGN KEY (`user_id`)
  REFERENCES `workhunt`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


-- Insert Data into the users table 
INSERT INTO `workhunt`.`users` (`name`, `email`, `password`, `city`, `state`) VALUES ('John Doe', 'user1@gmail.com', '123456', 'Nogaon', 'Assam');
INSERT INTO `workhunt`.`users` (`name`, `email`, `password`, `city`, `state`) VALUES ('Minju Begum', 'user2@gmail.com', '123456', 'Morigaon', 'Assam');
INSERT INTO `workhunt`.`users` (`name`, `email`, `password`, `city`, `state`) VALUES ('Peter Parker', 'user3@gmail.com', '123456', 'Guwahati', 'Assam');

-- Insert data into the listings table
INSERT INTO `workhunt`.`listings` (`user_id`, `title`, `desc`, `salary`, `tags`, `company`, `address`, `city`, `state`, `phone`, `email`, `requirements`, `benefits`) VALUES ('1', 'Software Engineer', 'We are seeking a skilled software engineer to develop high-quality software solutions', '90000', 'development, coding, java, python', 'Tech Solutions Inc', 'Nogaon Main Town near Nogaon College', 'Nogaon', 'Assam', '348-334-3949', 'info@techsolutions.com', 'Bachelors degree in Computer Science or related field, 3+ years of software development experience', 'Healthcare, 401(k) matching, flexible work hours');
INSERT INTO `workhunt`.`listings` (`user_id`, `title`, `desc`, `salary`, `tags`, `company`, `address`, `city`, `state`, `phone`, `email`, `requirements`, `benefits`) VALUES ('2', 'Marketing Specialist', 'e are looking for a Marketing Specialist to create and manage marketing campaigns', '70000', 'marketing, advertising', 'Marketing Pros', 'Near Morigaon District Library ', 'Morigaon', 'Assam', '454-344-3344', 'info@marketingpros.com', 'Bachelors degree in Marketing or related field, experience in digital marketing', 'Health and dental insurance, paid time off, remote work options');
INSERT INTO `workhunt`.`listings` (`user_id`, `title`, `desc`, `salary`, `tags`, `company`, `address`, `city`, `state`, `phone`, `email`, `requirements`, `benefits`) VALUES ('3', 'Web Developer', 'Join our team as a Web Developer and create amazing web applications', '85000', 'web development, programming', 'WebTech Solutions', 'Guwahati 134 Christan Bosti', 'Guwahati', 'Assam', '456-876-5432', 'info@webtechsolutions.com', 'Bachelors degree in Computer Science or related field, proficiency in HTML, CSS, JavaScript', 'Competitive salary, professional development opportunities, friendly work environment');
INSERT INTO `workhunt`.`listings` (`user_id`, `title`, `desc`, `salary`, `tags`, `company`, `address`, `city`, `state`, `phone`, `email`, `requirements`, `benefits`) VALUES ('1', 'Data Scientist', 'We\'re looking for a Data Scientist to analyze complex data and generate insights', '100000', 'data science, machine learning', 'DataGenius Corp', '132 Building Khanapara', 'Guwahati', 'Assam', '684-789-1234', 'info@datagenius.com', 'Masters or Ph.D. in Data Science or related field, experience with machine learning algorithms', 'Competitive salary, remote work options, professional development');
