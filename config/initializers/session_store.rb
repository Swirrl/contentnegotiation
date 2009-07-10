# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_conneg_session',
  :secret      => 'e815a50b0787e725ba41e9239ba7c9eb4e1bc810930dcbe1f102f393358e8c394ff927f7e6d56495c7a2919607fcd1786b1b3a9b840975b2b7c6ff797a3b6a7b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
