OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '129342267374-3g9fpkh1uh753mn4gg2qstvbrn9k4ncg.apps.googleusercontent.com', 'FN-3P4kOLaYtVeFs1s614RWZ', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end