view: block_value_ts {
  sql_table_name: `ds_looker.block_value_ts`
    ;;

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}.month ;;
  }

  dimension: property_type {
    type: string
    sql: ${TABLE}.property_type ;;
  }

  dimension: value_50 {
    type: number
    sql: ${TABLE}.value_50 ;;
  }

  dimension: value_sqft_50 {
    type: number
    sql: ${TABLE}.value_sqft_50 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
