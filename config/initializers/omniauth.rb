Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '532402472055-h7ippqt90e8v54584uhej2vfvi3umuef.apps.googleusercontent.com', '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'
  # config.omniauth :google_oauth2, '532402472055-h7ippqt90e8v54584uhej2vfvi3umuef.apps.googleusercontent.com', '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', { access_type: 'offline', prompt: 'consent', scope: 'email profile' }
end
OmniAuth.config.allowed_request_methods = %i[get]