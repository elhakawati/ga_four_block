connection: "alarabiya-ga4"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: alarabiya_ga4_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: alarabiya_ga4_default_datagroup

explore: pseudonymous_users_20240805 {
    join: pseudonymous_users_20240805__audiences {
      view_label: "Pseudonymous Users 20240805: Audiences"
      sql: LEFT JOIN UNNEST(${pseudonymous_users_20240805.audiences}) as pseudonymous_users_20240805__audiences ;;
      relationship: one_to_many
    }
    join: pseudonymous_users_20240805__user_properties {
      view_label: "Pseudonymous Users 20240805: User Properties"
      sql: LEFT JOIN UNNEST(${pseudonymous_users_20240805.user_properties}) as pseudonymous_users_20240805__user_properties ;;
      relationship: one_to_many
    }
}

explore: pseudonymous_users_20240806 {
    join: pseudonymous_users_20240806__audiences {
      view_label: "Pseudonymous Users 20240806: Audiences"
      sql: LEFT JOIN UNNEST(${pseudonymous_users_20240806.audiences}) as pseudonymous_users_20240806__audiences ;;
      relationship: one_to_many
    }
    join: pseudonymous_users_20240806__user_properties {
      view_label: "Pseudonymous Users 20240806: User Properties"
      sql: LEFT JOIN UNNEST(${pseudonymous_users_20240806.user_properties}) as pseudonymous_users_20240806__user_properties ;;
      relationship: one_to_many
    }
}

explore: pseudonymous_users_20240804 {
    join: pseudonymous_users_20240804__audiences {
      view_label: "Pseudonymous Users 20240804: Audiences"
      sql: LEFT JOIN UNNEST(${pseudonymous_users_20240804.audiences}) as pseudonymous_users_20240804__audiences ;;
      relationship: one_to_many
    }
    join: pseudonymous_users_20240804__user_properties {
      view_label: "Pseudonymous Users 20240804: User Properties"
      sql: LEFT JOIN UNNEST(${pseudonymous_users_20240804.user_properties}) as pseudonymous_users_20240804__user_properties ;;
      relationship: one_to_many
    }
}

explore: events_intraday_20240807 {
    join: events_intraday_20240807__items {
      view_label: "Events Intraday 20240807: Items"
      sql: LEFT JOIN UNNEST(${events_intraday_20240807.items}) as events_intraday_20240807__items ;;
      relationship: one_to_many
    }
    join: events_intraday_20240807__event_params {
      view_label: "Events Intraday 20240807: Event Params"
      sql: LEFT JOIN UNNEST(${events_intraday_20240807.event_params}) as events_intraday_20240807__event_params ;;
      relationship: one_to_many
    }
    join: events_intraday_20240807__user_properties {
      view_label: "Events Intraday 20240807: User Properties"
      sql: LEFT JOIN UNNEST(${events_intraday_20240807.user_properties}) as events_intraday_20240807__user_properties ;;
      relationship: one_to_many
    }
    join: events_intraday_20240807__items__item_params {
      view_label: "Events Intraday 20240807: Items Item Params"
      sql: LEFT JOIN UNNEST(${events_intraday_20240807__items.item_params}) as events_intraday_20240807__items__item_params ;;
      relationship: one_to_many
    }
}

explore: events_intraday_20240806 {
    join: events_intraday_20240806__items {
      view_label: "Events Intraday 20240806: Items"
      sql: LEFT JOIN UNNEST(${events_intraday_20240806.items}) as events_intraday_20240806__items ;;
      relationship: one_to_many
    }
    join: events_intraday_20240806__event_params {
      view_label: "Events Intraday 20240806: Event Params"
      sql: LEFT JOIN UNNEST(${events_intraday_20240806.event_params}) as events_intraday_20240806__event_params ;;
      relationship: one_to_many
    }
    join: events_intraday_20240806__user_properties {
      view_label: "Events Intraday 20240806: User Properties"
      sql: LEFT JOIN UNNEST(${events_intraday_20240806.user_properties}) as events_intraday_20240806__user_properties ;;
      relationship: one_to_many
    }
    join: events_intraday_20240806__items__item_params {
      view_label: "Events Intraday 20240806: Items Item Params"
      sql: LEFT JOIN UNNEST(${events_intraday_20240806__items.item_params}) as events_intraday_20240806__items__item_params ;;
      relationship: one_to_many
    }
}

