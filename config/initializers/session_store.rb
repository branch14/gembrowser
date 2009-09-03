# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gembrowser_session',
  :secret      => '79d92b7e144c581430d7efd4ed52f4eebe210795bd534d67c59d7cecdf1d2fe1978a30f2aa945578bb0eb16d009c02bbf1735b96cd83efd0c1ca62543f78c17a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
