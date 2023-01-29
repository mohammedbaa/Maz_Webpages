create table tbl_admin
(
    id       int auto_increment
        primary key,
    email    varchar(252) not null,
    username varchar(252) not null,
    password varchar(50)  not null
)
    charset = latin1;

create table tbl_house
(
    id             int(50) auto_increment
        primary key,
    owner_id       int(50)      not null,
    tenant_id      int(50)      not null,
    address        text         not null,
    road_no        varchar(252) not null,
    house_no       varchar(252) not null,
    rental_value   varchar(50)  not null,
    house_type     varchar(50)  not null,
    floor          varchar(252) not null,
    bedroom        varchar(50)  not null,
    dinning_room   varchar(52)  not null,
    bathroom       varchar(50)  not null,
    kitchen        varchar(52)  not null,
    balconies      varchar(52)  not null,
    description    text         not null,
    active_status  int          not null,
    img_1          varchar(252) not null,
    img_2          varchar(252) not null,
    img_3          varchar(252) not null,
    apartment_type varchar(30)  not null
)
    charset = latin1;

create table tbl_message
(
    id           int(50) auto_increment
        primary key,
    from_id      int(50)                               not null,
    to_id        int(50)                               not null,
    message      text                                  not null,
    read_message int                                   not null,
    time         timestamp default current_timestamp() not null on update current_timestamp()
)
    charset = latin1;

create table tbl_rentrequest
(
    id        int(50) auto_increment
        primary key,
    house_id  int(50) not null,
    tenant_id int(50) not null,
    owner_id  int(50) not null
)
    charset = latin1;

create table tbl_user
(
    id           int auto_increment
        primary key,
    user         enum ('owner', 'tenant') null,
    fname        varchar(32)              not null,
    lname        varchar(32)              not null,
    email        varchar(52)              not null,
    password     varchar(152)             not null,
    nid          int(20)                  not null,
    address      text                     not null,
    pic          varchar(32)              not null,
    phone_number varchar(20)              not null,
    account      int(10)                  not null,
    description  text                     not null
)
    charset = latin1;

