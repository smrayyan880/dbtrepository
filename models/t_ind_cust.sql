select c_name,c_address,n_name from tbl_customer c
inner join tbl_nation n where c_nationkey=n_nationkey
and n_name='INDIA'