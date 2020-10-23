view: property_data {
  sql_table_name: `ds_looker.property_data`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: address_slug {
    type: string
    sql: ${TABLE}.address_slug ;;
  }

  dimension: apn {
    type: string
    sql: ${TABLE}.apn ;;
  }

  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: fips {
    type: string
    sql: ${TABLE}.fips ;;
  }

  dimension: geo_precision {
    type: string
    sql: ${TABLE}.geo_precision ;;
  }

  dimension: hc_rental_value_fsd {
    type: number
    sql: ${TABLE}.hc_rental_value_fsd ;;
  }

  dimension: hc_rental_value_lwr {
    type: number
    sql: ${TABLE}.hc_rental_value_lwr ;;
  }

  dimension: hc_rental_value_mean {
    type: number
    sql: ${TABLE}.hc_rental_value_mean ;;
  }

  dimension: hc_rental_value_upr {
    type: number
    sql: ${TABLE}.hc_rental_value_upr ;;
  }

  dimension: hc_value_fsd {
    type: number
    sql: ${TABLE}.hc_value_fsd ;;
  }

  dimension: hc_value_lwr {
    type: number
    sql: ${TABLE}.hc_value_lwr ;;
  }

  dimension: hc_value_mean {
    type: number
    sql: ${TABLE}.hc_value_mean ;;
  }

  dimension: hc_value_upr {
    type: number
    sql: ${TABLE}.hc_value_upr ;;
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

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
