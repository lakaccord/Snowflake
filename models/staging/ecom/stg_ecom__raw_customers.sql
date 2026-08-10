with 

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select
         id,
         TRIM(name) as name

    from source

)

select * from renamed