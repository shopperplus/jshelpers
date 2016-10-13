module ShopperplusJshelpers
  class Engine < ::Rails::Engine
    initializer 'shopperplus_jshelpers.initialize' do |app|
      app.config.assets.paths << root.join('assets', 'javascripts').to_s

      ActionController::Base.class_eval do
        def script_data
          @script_data ||= {}
        end
        helper_method :script_data
      end
    end
  end
end