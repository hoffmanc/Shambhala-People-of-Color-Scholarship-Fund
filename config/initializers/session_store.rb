# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_spocsf_session',
  :secret      => 'f62feae82c710fb2d7c64cd6f29570c00b4d6c615f19910ee582becaad59880d2012a328f7c64516f844c03342575309fb86b6816ac5c7efe0a672eb0bda8f50'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
