view: msa_cs {
  sql_table_name: `ds_looker.msa_cs`
    ;;

  dimension: beta {
    type: number
    sql: ${TABLE}.beta ;;
  }

  dimension: beta_zscore {
    type: number
    sql: ${TABLE}.beta_zscore ;;
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

  dimension: cagr_10_zscore {
    type: number
    sql: ${TABLE}.cagr_10_zscore ;;
  }

  dimension: cagr_12mo_f {
    type: number
    sql: ${TABLE}.cagr_12mo_f ;;
  }

  dimension: cagr_1_zscore {
    type: number
    sql: ${TABLE}.cagr_1_zscore ;;
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

  dimension: cagr_5_zscore {
    type: number
    sql: ${TABLE}.cagr_5_zscore ;;
  }

  dimension: cagr_zscore {
    type: number
    sql: ${TABLE}.cagr_zscore ;;
  }

  dimension: m2 {
    type: number
    sql: ${TABLE}.m2 ;;
  }

  dimension: m2_zscore {
    type: number
    sql: ${TABLE}.m2_zscore ;;
  }

  dimension: msa {
    type: string
    sql: ${TABLE}.msa ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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

  dimension: sharpe_zscore {
    type: number
    sql: ${TABLE}.sharpe_zscore ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
