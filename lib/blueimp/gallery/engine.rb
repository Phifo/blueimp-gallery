module StaticAssets
  class Engine < ::Rails::Engine
    initializer 'blueimp-gallery.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/vendor"
    end
  end
end