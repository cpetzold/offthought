# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_offthought_session',
  :secret      => 'a6ca9b31bac0ffadef8b173a2a7f0aecb6471efbdd835b0f094e64b350ab83d3368e6b989096d76b5833aa00b062835d20ae9b443b8211e484516496cc5bf4a1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
