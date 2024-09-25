CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  user_role VARCHAR(50) NOT NULL,
  email VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO users (username, first_name, last_name, user_role, email) VALUES ('tahiruddinahmed', 'Tahir', 'Ahmed', 'admin', '01tahirahmed@gmail.com');

INSERT INTO users (username, first_name, last_name, user_role, email) VALUES ('minjubegum', 'Minju', 'Begum', 'editor', '01minjubegum.com');