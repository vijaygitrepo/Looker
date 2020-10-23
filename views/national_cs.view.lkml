view: national_cs {
  sql_table_name: `ds_looker.national_cs`
    ;;

  dimension: beta {
    type: number
    sql: ${TABLE}.beta ;;
  }

  dimension: cagr {
    type: number
    sql: ${TABLE}.cagr ;;
  }

  dimension: cagr_1 {
    type: number
    sql: ${TABLE}.cagr_1 ;;
  }

  dimension: cagr_10 {
    type: number
    sql: ${TABLE}.cagr_10 ;;
  }

  dimension: cagr_12mo_f {
    type: number
    sql: ${TABLE}.cagr_12mo_f ;;
  }

  dimension: cagr_24mo_f {
    type: number
    sql: ${TABLE}.cagr_24mo_f ;;
  }

  dimension: cagr_36mo_f {
    type: number
    sql: ${TABLE}.cagr_36mo_f ;;
  }

  dimension: cagr_5 {
    type: number
    sql: ${TABLE}.cagr_5 ;;
  }

  dimension: m2 {
    type: number
    sql: ${TABLE}.m2 ;;
  }

  dimension: returns_1 {
    type: number
    sql: ${TABLE}.returns_1 ;;
  }

  dimension: returns_10 {
    type: number
    sql: ${TABLE}.returns_10 ;;
  }

  dimension: returns_12mo_f {
    type: number
    sql: ${TABLE}.returns_12mo_f ;;
  }

  dimension: returns_24mo_f {
    type: number
    sql: ${TABLE}.returns_24mo_f ;;
  }

  dimension: returns_36mo_f {
    type: number
    sql: ${TABLE}.returns_36mo_f ;;
  }

  dimension: returns_5 {
    type: number
    sql: ${TABLE}.returns_5 ;;
  }

  dimension: sharpe {
    type: number
    sql: ${TABLE}.sharpe ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
