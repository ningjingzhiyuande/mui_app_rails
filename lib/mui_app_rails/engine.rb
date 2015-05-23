module MuiAppRails
  class Engine < ::Rails::Engine
    isolate_namespace MuiAppRails
    initializer 'font.assets.precompile' do |app|
        app.config.assets.paths << root.join('assets', "fonts").to_s
        app.config.assets.precompile << /\.(?:svg|eot|woff|woff2|ttf)\z/
    end

  end
end
