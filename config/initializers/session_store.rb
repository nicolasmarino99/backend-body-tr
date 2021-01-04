if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_backend-body-tr', domain: 'https://backend-body-tr.herokuapp.com/api/v1/logged_in'
else
  Rails.application.config.session_store :cookie_store, key: '_backend-body-tr'
end