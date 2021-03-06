view: zip_ts {
  sql_table_name: `ds_looker.zip_ts`
    ;;

  dimension: acceleration_value {
    type: number
    sql: ${TABLE}.acceleration_value ;;
  }

  dimension: afford_detrended {
    type: number
    sql: ${TABLE}.afford_detrended ;;
  }

  dimension: afford_pmt {
    type: number
    sql: ${TABLE}.afford_pmt ;;
  }

  dimension: hpi_distance {
    type: number
    sql: ${TABLE}.hpi_distance ;;
  }

  dimension: hpi_real {
    type: number
    sql: ${TABLE}.hpi_real ;;
  }

  dimension: hpi_returns {
    type: number
    sql: ${TABLE}.hpi_returns ;;
  }

  dimension: hpi_trend {
    type: number
    sql: ${TABLE}.hpi_trend ;;
  }

  dimension: hpi_value {
    type: number
    sql: ${TABLE}.hpi_value ;;
  }

  dimension: hpi_yoy_pct_chg {
    type: number
    sql: ${TABLE}.hpi_yoy_pct_chg ;;
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

  dimension: msa {
    type: string
    sql: ${TABLE}.msa ;;
  }

  dimension: velocity_value {
    type: number
    sql: ${TABLE}.velocity_value ;;
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
