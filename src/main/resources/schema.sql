create table svc_table(
	id INT NOT NULL,
	title VARCHAR(50),
	due_date DATE,
	submission_date DATE,
	num_fund INT,
	cur_fund INT,
	goal_fund INT,
	likes INT NOT NULL,
	account_src VARCHAR(10),
	account_num VARCHAR(50),
	content VARCHAR(50)
);
create table svc_comments(
	seq INT auto_increment ,
	id INT NOT NULL,
	nickname VARCHAR(50),
	content CHAR(1000),
	reg_date DATE
);