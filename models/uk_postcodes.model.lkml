connection: "bigquery_personal_instance"

# include all the views
include: "/views/**/*.view"

datagroup: uk_postcodes_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}


map_layer: uk_postal_districts {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.63tiis35/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "PostalDistrict-5b1t0d"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/6b7c7cff6d193189cca4f73b314f558e8ee58f85/uk_postal_districts.json"
  min_zoom_level: 8
  max_zoom_level: 13
  property_key: "PostDist"
}

map_layer: uk_postal_sectors {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.cq6lxp6d/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "PostalSector-2trpb4"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/6b7c7cff6d193189cca4f73b314f558e8ee58f85/uk_postal_sectors.json"
  min_zoom_level: 8
  max_zoom_level: 14
  property_key: "RMSect"
}


persist_with: uk_postcodes_default_datagroup

explore: uk_postcodes {}
