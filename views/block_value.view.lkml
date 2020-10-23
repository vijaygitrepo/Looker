view: block_value {
  sql_table_name: `ds_looker.block_value`
    ;;

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}.fips ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }

  dimension: msa {
    type: string
    sql: ${TABLE}.msa ;;
  }

  dimension: property_type {
    type: string
    sql: ${TABLE}.property_type ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: value_25 {
    type: number
    sql: ${TABLE}.value_25 ;;
  }

  dimension: value_5 {
    type: number
    sql: ${TABLE}.value_5 ;;
  }

  dimension: value_50 {
    type: number
    sql: ${TABLE}.value_50 ;;
  }

  dimension: value_75 {
    type: number
    sql: ${TABLE}.value_75 ;;
  }

  dimension: value_95 {
    type: number
    sql: ${TABLE}.value_95 ;;
  }

  dimension: value_average {
    type: number
    sql: ${TABLE}.value_average ;;
  }

  dimension: value_count {
    type: number
    sql: ${TABLE}.value_count ;;
  }

  dimension: value_max {
    type: number
    sql: ${TABLE}.value_max ;;
  }

  dimension: value_min {
    type: number
    sql: ${TABLE}.value_min ;;
  }

  dimension: value_pctchg_1_yr {
    type: number
    sql: ${TABLE}.value_pctchg_1_yr ;;
  }

  dimension: value_pctchg_5_yr {
    type: number
    sql: ${TABLE}.value_pctchg_5_yr ;;
  }

  dimension: value_sd {
    type: number
    sql: ${TABLE}.value_sd ;;
  }

  dimension: value_sqft_25 {
    type: number
    sql: ${TABLE}.value_sqft_25 ;;
  }

  dimension: value_sqft_5 {
    type: number
    sql: ${TABLE}.value_sqft_5 ;;
  }

  dimension: value_sqft_50 {
    type: number
    sql: ${TABLE}.value_sqft_50 ;;
  }

  dimension: value_sqft_75 {
    type: number
    sql: ${TABLE}.value_sqft_75 ;;
  }

  dimension: value_sqft_95 {
    type: number
    sql: ${TABLE}.value_sqft_95 ;;
  }

  dimension: value_sqft_average {
    type: number
    sql: ${TABLE}.value_sqft_average ;;
  }

  dimension: value_sqft_count {
    type: number
    sql: ${TABLE}.value_sqft_count ;;
  }

  dimension: value_sqft_max {
    type: number
    sql: ${TABLE}.value_sqft_max ;;
  }

  dimension: value_sqft_min {
    type: number
    sql: ${TABLE}.value_sqft_min ;;
  }

  dimension: value_sqft_pctchg_1_yr {
    type: number
    sql: ${TABLE}.value_sqft_pctchg_1_yr ;;
  }

  dimension: value_sqft_pctchg_5_yr {
    type: number
    sql: ${TABLE}.value_sqft_pctchg_5_yr ;;
  }

  dimension: value_sqft_sd {
    type: number
    sql: ${TABLE}.value_sqft_sd ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
