Protoadmin.setup do |config|

  # Set the theme
  # can be dark, light, or bootstrap or one that you provide.
  config.theme = :dark

  # Specify the layout order
  # You can reorder the default, include additional layout modules or remove unused/unsupported ones.
  config.layout  = [:user_nav, :main_nav, :search, :content]

  # Specify the devise model
  # You can provide an alternate devise model if you're using something other than admin.
  config.devise_model = :admin

  # Parent controller
  # You can set the parent controller to something if ActionController::Base doesn't do everything you want.
  config.parent_controller = 'ActionController::Base'

  Devise.setup do |c|
    require 'devise/orm/active_record'

    c.router_name = :protoadmin
    c.parent_controller = 'Protoadmin::ApplicationController'
    c.mailer_sender = "admin@protoadmin.com"
    c.case_insensitive_keys = [:email]
    c.strip_whitespace_keys = [:email]
    c.skip_session_storage = [:http_auth]
    c.stretches = Rails.env.test? ? 1 : 10
    c.http_authenticatable = true
    c.scoped_views = true
    c.reconfirmable = true
    c.reset_password_within = 6.hours
    c.sign_out_via = :get
  end

  Navigasmic.setup do |c|
    c.semantic_navigation :protoadmin_main_nav do |n|
      n.item n.t('protoadmin.main_nav.dashboard'), proc{ protoadmin.root_path }, icon: 'home'
      n.group n.t('protoadmin.main_nav.style_guide'), icon: 'info-sign', label: 1 do
        n.item n.t('protoadmin.main_nav.icons'), proc{ protoadmin.styleguide_path('icons') }, icon: 'list-ul'
      end
    end

    c.semantic_navigation :protoadmin_user_nav do |n|
      n.item n.t('protoadmin.user_nav.profile'), proc{ protoadmin.edit_registration_path }, icon: 'user'
      n.item n.t('protoadmin.user_nav.settings'), '#', icon: 'cog'
      n.item n.t('protoadmin.user_nav.sign_out'), proc{ protoadmin.destroy_admin_session_path }, icon: 'share-alt'
    end
  end

  SimpleForm.setup do |c|
    # There are more configuration options, but for brevity they're kept in a
    # different initializer -- which you can tweak here.

    c.default_wrapper = :bootstrap
    c.boolean_style = :nested
    c.button_class = 'btn'
    c.error_notification_tag = :div
    c.error_notification_class = 'alert alert-error'
    c.label_class = 'control-label'
    c.browser_validations = false
  end

end
