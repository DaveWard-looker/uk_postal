view: uk_postcodes {
  sql_table_name: `daveward_demodataset.uk_postcodes`
    ;;

parameter: map_type {
  type: string
  allowed_value: {
    label: "Postal District"
    value: "postal_district"
  }
  allowed_value: {
    label: "Postal Sector"
    value: "postal_sector"
  }
  allowed_value: {
    label: "Postal Area"
    value: "postal_area"
  }
  allowed_value: {
    label: "Post Code"
    value: "post_code"
  }

}


dimension: post_map {
type: string
sql:
case
when {% parameter map_type %} = 'postal_area' then ${postcode_area}
when {% parameter map_type %} = 'postal_sector' then ${postcode_sector}
when {% parameter map_type %} = 'postal_district' then ${postcode_district}
else ${postcode}
end
;;

}

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

  dimension: location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
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
    map_layer_name: uk_postcode_areas
    link: {
      label: "Postcode Sector Dashboard"
      url: "/dashboards-next/4?Postcode+Area={{ value }}"
    }
  }

  dimension: postcode_district {
    type: string
    sql: ${TABLE}.postcode_district ;;
    map_layer_name: uk_postal_districts
    link: {
      label: "Postcode Sector Dashboard"
      url: "/dashboards-next/4?Postcode+District={{ value }}"
    }
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
    map_layer_name: uk_postal_sectors
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
    label: "Count Postcode"
    type: count
    drill_fields: []
  }

  measure: count_area {
    type: count_distinct
    sql: ${postcode_area} ;;
    value_format_name: decimal_0
  }

  measure: count_district {
    type: count_distinct
    sql: ${postcode_district} ;;
    value_format_name: decimal_0
  }

  measure: count_sector {
    type: count_distinct
    sql: ${postcode_sector} ;;
    value_format_name: decimal_0
  }
}
