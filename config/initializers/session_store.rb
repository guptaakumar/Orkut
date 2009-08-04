# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_orkut_session',
  :secret      => 'ffc6d18edab8e4cd8ad3a0006cb206c89f67301fb0354a32f52987b43c01e85fb193a16be1dbfd934b35faf478045d7f3ce05cf0de4bdf19ac570f5bca37bf70'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
