select c_name,c_address,n_name from DB_SALES.SCH_SAMPLE.tbl_customer c
inner join DB_SALES.SCH_SAMPLE.tbl_nation n where c_nationkey=n_nationkey
and n_name='INDIA'