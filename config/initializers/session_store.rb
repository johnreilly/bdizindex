# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bdiz_index_session',
  :secret      => '1018c5f76a786fd24119bba3ed49c70a4e517ada8107729718610429693fa32be64c67fef16b39eca5d6a46aab64719e7602c45fe48c7b47cff34ebf59c83a65'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
