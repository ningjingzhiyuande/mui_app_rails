module MuiAppRails
  class Engine < ::Rails::Engine
    isolate_namespace MuiAppRails
    initializer 'mui_app_rails.setup' do |app|
       
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('app','assets', sub).to_s
        end

        # app.config.assets.precompile << %r(fonts/\.(?:eot|svg|ttf|woff2?)$)
        

       # app.config.assets.precompile << /\.(?:svg|eot|woff|woff2|ttf)\z/
    end

  end
end
