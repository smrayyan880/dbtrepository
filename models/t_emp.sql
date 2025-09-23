{{
    config(
        materialized='table',
        transient=false
    )
}}
select empno,ename sal, nvl(commission,0) as commission,nvl(sal,0)+nvl(commission,0) as net_salary 
from {{ source('s1', 'employees') }}