if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_backend-body-tr', domain: 'backend-body-tr-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_backend-body-tr'
  end