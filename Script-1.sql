create table files (
    id_files int8 not null,
    date_change date,
    date_create date,
    nameF varchar(255),
    sizeF decimal,
    typeF varchar(255),
    primary key (id_files)
    );
  
create table users (
    id_users int8 not null,
    nickname varchar(255),
    end_status date,
    vip_status boolean,
    email varchar(255),
    pass varchar(255),
    primary key (id_users)
    );

create table user_files (
    id int8 not null,
    id_files int8 not null references files(id_files),
    id_user int8 not null references users(id_users),
    own boolean,
    time_second bigint,
    primary key (id)
    );