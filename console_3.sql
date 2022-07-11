create table кыргыз_уруулары(
    id serial primary key,
    уруулардын_саны numeric,
    негизги_атасынын_аты varchar(20) not null
);

insert into кыргыз_уруулары(уруулардын_саны, негизги_атасынын_аты)
values (null, 'Долон бий');

drop table кыргыз_уруулары;

alter table кыргыз_уруулары add column cол_канат_id int references cол_канат(id);
alter table кыргыз_уруулары add column ичкилик_id int references ичкилик(id);
alter table кыргыз_уруулары add column он_канат_id int references он_канат(id);

                        -- FIRST PART
create table cол_канат(
    id int primary key
);

alter table cол_канат add column cаруу_id int references cаруу(id);
alter table cол_канат add column кушчу_id int references кушчу(id);
alter table cол_канат add column мундуз_id int references мундуз(id);
alter table cол_канат add column басыз_id int references басыз(id);
alter table cол_канат add column кытай_id int references кытай(id);
alter table cол_канат add column жетиген_id int references жетиген(id);
alter table cол_канат add column чон_багыш_id int references чон_багыш(id);

create table cаруу(
    id int primary key
);
create table кушчу(
    id int primary key
);
create table мундуз(
    id int primary key
);
create table басыз(
    id int primary key
);
create table кытай(
    id int primary key
);

create table жетиген(
    id int primary key
);
create table чон_багыш (
    id int primary key
);

---------------------------------------------------------------------------------------
                              --SECOND PART
create table он_канат(
    id int primary key
);

alter table он_канат add column карачоро_id int references карачоро(id);
alter table он_канат add column саяк_id int references саяк(id);
alter table он_канат add column монолдор_id int references монолдор(id);
alter table он_канат add column сарыбагыш_id int references сарыбагыш(id);
alter table он_канат add column солто_id int references солто(id);
alter table он_канат add column бугу_id int references бугу(id);
alter table он_канат add column азык_id int references азык(id);
alter table он_канат add column монгуш_id int references монгуш(id);
alter table он_канат add column черик_id int references черик(id);
alter table он_канат add column багыш_id int references багыш(id);
alter table он_канат add column адыгине_id int references адыгине(id);
alter table он_канат add column жедигер_id int references жедигер(id);

create table карачоро (
    id int primary key
);
create table саяк (
    id int primary key
);

create table монолдор(
    id int primary key
);
create table сарыбагыш(
    id int primary key
);
create table солто(
    id int primary key
);
create table бугу(
    id int primary key
);
create table азык(
    id int primary key
);
create table монгуш(
    id int primary key
);
create table черик(
    id int primary key
);
create table багыш(
    id int primary key
);
create table адыгине(
    id int primary key
);
create table жедигер(
    id int primary key
);
--------------------------------------------------------------------------------
                --THIRD PART
create table ичкилик(
    id int primary key
);
create table нойгут(
    id int primary key
);
create table каратейит(
    id int primary key
);
create table жоокесек(
    id int primary key
);
create table кесек(
    id int primary key
);
create table ават(
    id int primary key
);
create table бостон(
    id int primary key
);
create table кыдыршаа(
    id int primary key
);
create table доолос(
    id int primary key
);
create table найман(
    id int primary key
);
create table канды(
    id int primary key
);
alter table ичкилик add column нойгут_id int references нойгут(id);
alter table ичкилик add column каратейит_id int references каратейит(id);
alter table ичкилик add column жоокесек_id int references жоокесек(id);
alter table ичкилик add column кесек_id int references кесек(id);
alter table ичкилик add column ават_id int references ават(id);
alter table ичкилик add column бостон_id int references бостон(id);
alter table ичкилик add column кыдыршаа_id int references кыдыршаа(id);
alter table ичкилик add column доолос_id int references доолос(id);
alter table ичкилик add column найман_id int references найман(id);
alter table ичкилик add column канды_id int references канды(id);

