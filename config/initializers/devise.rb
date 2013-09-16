module Devise
  module Controllers
    module UrlHelpers

      def self.generate_helpers!(routes=nil)
        routes ||= begin
          mappings = Devise.mappings.values.map(&:used_helpers).flatten.uniq
          Devise::URL_HELPERS.slice(*mappings)
        end

        routes.each do |module_name, actions|
          [:path, :url].each do |path_or_url|
            actions.each do |action|
              action = action ? "#{action}_" : ""
              method = "#{action}#{module_name}_#{path_or_url}"

              class_eval <<-URL_HELPERS, __FILE__, __LINE__ + 1
                def #{method}(resource_or_scope, *args)
                  scope = Devise::Mapping.find_scope!(resource_or_scope)
                  if scope == Adminsimple.configuration.devise_model
                    adminsimple.send("#{action}\#{scope}_#{module_name}_#{path_or_url}", *args)
                  else
                    _devise_route_context.send("#{action}\#{scope}_#{module_name}_#{path_or_url}", *args)
                  end
                end
              URL_HELPERS
            end
          end
        end
      end

      remove_helpers!
      generate_helpers!(Devise::URL_HELPERS)

    end
  end
end
