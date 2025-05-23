{% snapshot snapshot__distribution_centers %}

{{
    config(
      target_schema='snapshot_answers',
      unique_key='id',
      strategy='check',
      check_cols=['name', 'latitude', 'longitude']
    )
}}

SELECT * FROM {{ source('thelook_ecommerce', 'distribution_centers') }}

{% endsnapshot %}