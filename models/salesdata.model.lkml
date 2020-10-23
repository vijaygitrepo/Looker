connection: "conn_looker"

# include all the views
include: "/views/**/*.view"

datagroup: salesdata_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: salesdata_default_datagroup


explore: sales {
  join: parameters{}
}
