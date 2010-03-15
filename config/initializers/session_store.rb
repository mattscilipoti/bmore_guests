# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bmore_guest_session',
  :secret      => 'd10c91b0985aede98165dab9706d38c910cc1810c5c3eda11dbd0fa4d470ec309aca4a9640584a738e877f037c5cdf2a301f1fa6444d9de863de2c7295d9cf79'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
