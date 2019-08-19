
show databases;
use adlister;
show tables;
create table users(
                      id int unsigned not null auto_increment,
                      user_name varchar(50) not null,
                      email varchar(100) not null,
                      password varchar(100) not null,
                      primary key (id)
);
create table ads(
                    id int unsigned not null auto_increment,
                    user_id int unsigned not null,
                    title varchar(50) not null,
                    description text not null,
                    primary key (id),
                    foreign key (user_id) references users (id)
);create table categories(
                             id int unsigned not null auto_increment primary key,
                             title varchar(50) not null
  );
create table cats_ads(
                         cat_id int unsigned not null,
                         ad_id int unsigned not null,
                         foreign key (cat_id) references categories(id),
                         foreign key (ad_id) references ads(id)
);

# number 1
select email from ads
                      join users u on ads.user_id = u.id;

# number 2
select ca.title from ads
                         join categories ca on ads.id = ca.id;

# number 3
select * from ads
where id in(
    select ad_id from cats_ads
    where cat_id = (select id from categories
                    where title = 'electronics')
);

# number 4
select user_name, a.id from users
                                join ads a on users.id = a.user_id;



select * from cats_ads;


insert into categories (title)
values ('electronics'), ('vehicles'), ('furniture'), ('toys'), ('tools'), ('general');

select * from categories;
describe ads;

select * from cats_ads;

INSERT INTO users(user_name, email,password)
VALUES ('Mahrens',    'email@something1.com','passwordmark'),
       ('Asifuentes',    'email@something2.com', 'passaaron'),
       ('Jgonzalez', 'email@something3.com', 'passwordjoey');

insert into ads(title, description, user_id)
Values ('old bed', 'old bed i never slept in', (select id from users where user_name = 'Mahrens')),
       ( '2015 mustang gt', 'awesome car my ex totally didn''t destroy', (select id from users where user_name = 'Asifuentes')),
       ('xbox', 'my video games', (select id from users where user_name = 'jgonzalez')),
       ('shiny toy gun', 'a toy i never used growing up', (select id from users where user_name = 'Asifuentes'));

select * from ads;

select u.user_name,u.email, a.title, a.description from users as u
                                                            join ads a on u.id = a.user_id;

select * from ads;

select * from users;
