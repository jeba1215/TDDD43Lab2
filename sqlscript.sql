CREATE TABLE EXPERT(
    id int primary key,
    name VARCHAR(10),
    email varchar(10),
    description varchar(200)
)

CREATE TABLE Topic(
    id int primary key,
    topicname varchar(10),
    description varchar(100),
    originator int foreign key references Expert(id)
)

CREATE TABLE Expertise(
    topicID int foreign key references Topic(id),
    ExpertID int foreign key references Expert(id)
)

CREATE TABLE Subtopic(
    TopicID int foreign key references Topic(id),
    ParentID int foreign key references Topic(id)
)

CREATE TABLE Recomends(
    ExpertID int foreign key references Expert(id),
    Recomended int foreign key references Expert(id),
    text varchar(50)
)

insert into expert(id, name, email, description)
values(0, 'namn', 'e@mail.com', 'descr');

insert into expert(id, name, email, description)
values(1, 'namn2', 'e2@mail.com', 'descr2');

insert into topic(id, topicname , description , originator)
values(0, 'topic1', 'about', '0');

insert into topic(id, topicname , description , originator)
values(1, 'topic2', 'about2', '1');

insert into Expertise(topicID, ExpertID)
values(0, 0);

insert into Subtopic(TopicID, ParentID)
values(0, 1);

insert into Recomends(ExpertID, Recomended, text)
values(0, 1, ‘text’);