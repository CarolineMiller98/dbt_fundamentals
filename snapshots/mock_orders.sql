{% snapshot mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
      target_database='dbt-tutorial-332813',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from dbt-tutorial-332813.{{target.schema}}.mock_orders

{% endsnapshot %}