--liquibase formatted sql
--changeset CHG011U:01

create user t93r0qp password 'Ice&crm40' in group ${redshift_group_off};
create user t93ruq8 password 'Pls@ql600' in group ${redshift_group_off};
create user t93r14q password 'L!ly@1254' in group ${redshift_group_off};
create user t93rw5q password 'Unic0@rn4' in group ${redshift_group_off};
create user t93rw5t password 'C0nfig@403' in group ${redshift_group_off};
create user t93r98n password 'Axbyc@z13' in group ${redshift_group_off};
create user t93q6d2 password 'Edm@etl44' in group ${redshift_group_off};
create user t93r98p password 'Aur0ra@77' in group ${redshift_group_off};
create user t93sfqa password 'Redsft&99' in group ${redshift_group_off};
create user t93r8yn password 'Shift@red3' in group ${redshift_group_off};
create user t93sfp1 password 'Passw0r&6' in group ${redshift_group_off};
create user t93sfqn password 'Red@shift2' in group ${redshift_group_off};
create user t93sfql password 'Auro&ra6' in group ${redshift_group_off};
create user t93sfp0 password 'Db@Auro23' in group ${redshift_group_off};
create user t93sfqf password 'S!lk2@200' in group ${redshift_group_off};

--changeset CHG011U:02

grant create on database edm to group ${redshift_group_adm};

--changeset CHG011U:03

grant usage on schema public to group ${redshift_group_ro};
grant select on all tables in schema public to group ${redshift_group_ro};
alter default privileges in schema public grant select on tables to group ${redshift_group_ro};

grant usage on schema public to group ${redshift_group_rw};
grant select on all tables in schema public to group ${redshift_group_rw};
alter default privileges in schema public grant select on tables to group ${redshift_group_rw};

grant usage on schema public to group ${redshift_group_off};
grant select on all tables in schema public to group ${redshift_group_off};
alter default privileges in schema public grant select on tables to group ${redshift_group_off};

grant usage on schema public to group ${redshift_group_adm};
grant select on all tables in schema public to group ${redshift_group_adm};
alter default privileges in schema public grant select on tables to group ${redshift_group_adm};