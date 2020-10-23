view: flights {
  sql_table_name: `ds_looker.Flights`
    ;;

  dimension: airline {
    type: string
    sql: ${TABLE}.airline ;;
  }

  dimension: airline_code {
    type: number
    sql: ${TABLE}.airline_code ;;
  }

  dimension: arrival_actual {
    type: number
    sql: ${TABLE}.arrival_actual ;;
  }

  dimension: arrival_airport {
    type: string
    sql: ${TABLE}.arrival_airport ;;
  }

  dimension: arrival_delay {
    type: number
    sql: ${TABLE}.arrival_delay ;;
  }

  dimension: arrival_lat {
    type: number
    sql: ${TABLE}.arrival_lat ;;
  }

  dimension: arrival_lon {
    type: number
    sql: ${TABLE}.arrival_lon ;;
  }

  dimension: arrival_schedule {
    type: number
    sql: ${TABLE}.arrival_schedule ;;
  }

  dimension: arrival_state {
    type: string
    sql: ${TABLE}.arrival_state ;;
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
  }

  dimension: departure_actual {
    type: number
    sql: ${TABLE}.departure_actual ;;
  }

  dimension: departure_airport {
    type: string
    sql: ${TABLE}.departure_airport ;;
  }

  dimension: departure_delay {
    type: number
    sql: ${TABLE}.departure_delay ;;
  }

  dimension: departure_lat {
    type: number
    sql: ${TABLE}.departure_lat ;;
  }

  dimension: departure_lon {
    type: number
    sql: ${TABLE}.departure_lon ;;
  }

  dimension: departure_schedule {
    type: number
    sql: ${TABLE}.departure_schedule ;;
  }

  dimension: departure_state {
    type: string
    sql: ${TABLE}.departure_state ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
