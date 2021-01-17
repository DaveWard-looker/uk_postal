view: uk_postcodes {
  sql_table_name: `daveward_demodataset.uk_postcodes`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: easting {
    type: string
    sql: ${TABLE}.easting ;;
  }

  dimension: incode {
    type: string
    sql: ${TABLE}.incode ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: northing {
    type: string
    sql: ${TABLE}.northing ;;
  }

  dimension: outcode {
    type: string
    sql: ${TABLE}.outcode ;;
  }

  dimension: positional_quality_indicator {
    type: string
    sql: ${TABLE}.positional_quality_indicator ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: postcode_area {
    type: string
    sql: ${TABLE}.postcode_area ;;
  }

  dimension: postcode_district {
    type: string
    sql: ${TABLE}.postcode_district ;;
  }

  dimension: postcode_fixed_width_eight {
    type: string
    sql: ${TABLE}.postcode_fixed_width_eight ;;
  }

  dimension: postcode_fixed_width_seven {
    type: string
    sql: ${TABLE}.postcode_fixed_width_seven ;;
  }

  dimension: postcode_no_space {
    type: string
    sql: ${TABLE}.postcode_no_space ;;
  }

  dimension: postcode_sector {
    type: string
    sql: ${TABLE}.postcode_sector ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: usertype {
    type: string
    sql: ${TABLE}.usertype ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
