Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://coursework-frontend-hqri.vercel.app',  # Frontend URLs
            'http://localhost:3000',                      # Local development
            'https://ideahub-frontend.onrender.com',
            'https://idea-hub-front-end.vercel.app',
            'https://idea-hub-front-end-git-main-mtshakirs-projects.vercel.app',
            'https://idea-hub-front-df9sqg2w1-mtshakirs-projects.vercel.app'

    resource '*',                                      # Allow all resources
      headers: :any,                                     # Allow all headers
      methods: [:get, :post, :put, :patch, :delete, :options],  # Allowed methods
      credentials: true                                  # Allow cookies or Authorization headers
  end
end
