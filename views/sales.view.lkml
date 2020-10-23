view: sales {
  sql_table_name: `ds_looker.sales`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: bottle_volume_ml {
    type: number
    sql: ${TABLE}.bottle_volume_ml ;;
  }

  dimension: bottles_sold {
    type: number
    sql: ${TABLE}.bottles_sold ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: county_number {
    type: string
    sql: ${TABLE}.county_number ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
    drill_fields: [date_year,date_quarter,date_month,date_date ]
  }

  dimension: invoice_and_item_number {
    type: string
    sql: ${TABLE}.invoice_and_item_number ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}.item_description ;;
  }

  dimension: item_number {
    type: string
    sql: ${TABLE}.item_number ;;
  }

  dimension: pack {
    type: number
    sql: ${TABLE}.pack ;;
  }

  dimension: sale_dollars {
    type: number
    sql: ${TABLE}.sale_dollars ;;
  }

  dimension: state_bottle_cost {
    type: number
    sql: ${TABLE}.state_bottle_cost ;;
  }

  dimension: state_bottle_retail {
    type: number
    sql: ${TABLE}.state_bottle_retail ;;
  }

  dimension: store_location {
    type: string
    sql: ${TABLE}.store_location ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: store_number {
    type: string
    sql: ${TABLE}.store_number ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}.vendor_name ;;
  }

  dimension: vendor_number {
    type: string
    sql: ${TABLE}.vendor_number ;;
  }

  dimension: volume_sold_gallons {
    type: number
    sql: ${TABLE}.volume_sold_gallons ;;
  }

  dimension: volume_sold_liters {
    type: number
    sql: ${TABLE}.volume_sold_liters ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

dimension: current_vs_previous_period_bigquery {
  description: "Use this dimension along with \"Select Timeframe\" Filter"
  type: string
  sql:
    CASE
      WHEN DATE_TRUNC(${TABLE}.date,  {% parameter parameters.select_timeframe %}) = DATE_TRUNC({% if parameters.select_reference_date._is_filtered %}${TABLE}.date {% else %} ${parameters.current_timestamp_date}{% endif %}, {% parameter parameters.select_timeframe %})
        THEN '{% if parameters.select_reference_date._is_filtered %}Reference {% else %}Current {% endif %} {% parameter parameters.select_timeframe %}'
      WHEN DATE_TRUNC(${TABLE}.date,  {% parameter parameters.select_timeframe %}) = DATE_TRUNC(DATE_SUB({% if parameters.select_reference_date._is_filtered %}${TABLE}.date {% else %} ${parameters.current_timestamp_date}{% endif %}, INTERVAL 1 {% parameter parameters.select_timeframe %}), {% parameter parameters.select_timeframe %})
        THEN "Previous {% parameter parameters.select_timeframe %}"
      ELSE NULL
    END
    ;;
  }


  measure: count {
    type: count
    drill_fields: [category_name, vendor_name, store_name]
  }

  measure: total_sale_price {
    type: sum
    value_format_name: usd
    sql: ${sale_dollars} ;;
  }

  measure: total_bottles_sold {
    type: count
    value_format_name: usd
    drill_fields: [bottles_sold]
  }




}
