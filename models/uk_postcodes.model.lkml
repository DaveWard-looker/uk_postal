connection: "bigquery_personal_instance"

# include all the views
include: "/views/**/*.view"

datagroup: uk_postcodes_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "0 minutes"
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

map_layer: canadian_provinces {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.oh_canada/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "provinces"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/c98a443cfd7dc93191a3f3f6c54059b9a35a9134/canada_provinces.json"
  min_zoom_level: 2
  max_zoom_level: 10
  property_key: "PRENAME"
}

map_layer: canada_fsa {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.2ka31zfi/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "lfsa000b16a_e-as0y69"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/49062485f99a0742f44857766d6aadff1b4d5f31/canada_fsa.json"
  min_zoom_level: 5
  max_zoom_level: 11
  property_key: "CFSAUID"
}

map_layer: us_canada_postal_codes {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.8gkhpr0e/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "us_canada_postal_codesgeojson"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/9a83b018f3e9db958ccfdf34cc601baec7995448/us_canada_postal_codes.json"
  min_zoom_level: 3
  max_zoom_level: 12
  property_key: "POSTAL_CODE"
}

map_layer: us_canada_postal_codes_state {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.490z8rk0/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "na_provinces-1sin0g"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/b072977e16b4586657501a0409bf5e4ecc84bc58/na_provinces_extents.json"
  min_zoom_level: 2
  max_zoom_level: 8
  property_key: "STATE"
}

map_layer: us_zip3 {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.6w6t82a6/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "zip3-60pe24"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/e8f8cef33b776ad89cbb8772392addb1a29ea60e/zip3_extents.json"
  min_zoom_level: 5
  max_zoom_level: 11
  property_key: "ZIP3"
}


map_layer: us_cbsa {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.us_cbsa/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "us_cbsas"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/ecb8d20baa3fc2c4c77023011f2dfd26ee7a8f02/us_cbsa_geoid"
  min_zoom_level: 4
  max_zoom_level: 13
  property_key: "GEOID"
}

map_layer: us_cbsa_name {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.us_cbsa/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "us_cbsas"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/ecb8d20baa3fc2c4c77023011f2dfd26ee7a8f02/us_cbsa_name"
  min_zoom_level: 4
  max_zoom_level: 13
  property_key: "NAME"
}

map_layer: us_pumas {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.9qdtc99b/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "ipums_puma_2010-5ub0py"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/4a48ef77a012a9be8d9e1df7aa38e783f5f81e82/puma_extents.json"
  min_zoom_level: 5
  max_zoom_level: 11
  property_key: "GEOID"
}

map_layer: census_tract {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/dwmintz.3zfb3asw/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "us_tracts-6w08eq"
  extents_json_url: "https://cdn.rawgit.com/dwmintz/census_extents2/396e32db/tract_extents.json"
  min_zoom_level: 6
  max_zoom_level: 14
  property_key: "GEOID"
}

map_layer: block_group {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/dwmintz.4mqiv49l/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "us_block_groups_simple-c0qtbp"
  extents_json_url: "https://cdn.rawgit.com/dwmintz/census_extents2/59fa2cd8/bg_extents.json"
  min_zoom_level: 5
  max_zoom_level: 16
  property_key: "GEOID"
}

map_layer: codes_postaux {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.4opqm5ya/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "codes_postaux_V5_2_2-4z5c9k"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/db083551a3705d4f3e0b93ce1862f7bc25abf452/codes_postaux_france.json"
  min_zoom_level: 3
  max_zoom_level: 11
  property_key: "ID"
}


map_layer: regioni_italiani {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.61hkfosh/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "reg2011_g"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/6894c6448fb0721f93e2ce4ce9c30659e6a30c06/regioni_italiani.json"
  min_zoom_level: 3
  max_zoom_level: 11
  property_key: "NOME_REG"
}


map_layer: province_italiane {
  format: "vector_tile_region"
  url: "https://a.tiles.mapbox.com/v4/looker-maps.4ocnvk26/{z}/{x}/{y}.mvt?access_token=@{mapbox_api_key}"
  feature_key: "province_ditalia"
  extents_json_url: "https://rawcdn.githack.com/dwmintz/looker_map_layers/6894c6448fb0721f93e2ce4ce9c30659e6a30c06/province_italiane.json"
  min_zoom_level: 3
  max_zoom_level: 12
  property_key: "NOME_PRO"
}


persist_with: uk_postcodes_default_datagroup

explore: uk_postcodes {}
