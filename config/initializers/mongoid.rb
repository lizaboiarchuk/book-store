require 'mongoid'

Mongoid.configure do |config|
  config.clients.default = {
    uri: "mongodb+srv://default:defaultpass@user.mwy6myh.mongodb.net/books_db?retryWrites=true&w=majority",
    options: {
      server_selection_timeout: 5000
    }
  }
end