create table hibernate_sequence (
    next_val bigint
) engine=MyISAM;

insert into hibernate_sequence values ( 1 );

create table messages (
    id bigint not null,
    tag varchar(255),
    text varchar(255) not null,
    user_id bigint,
    primary key (id)) engine=MyISAM;

create table user_role (
    user_id bigint not null,
    roles varchar(255)) engine=MyISAM;

create table users (
    id bigint not null,
    active bit not null,
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)) engine=MyISAM;

alter table messages add constraint message_user_fk foreign key (user_id) references users (id);

alter table user_role add constraint user_role_user_fk foreign key (user_id) references users (id);
