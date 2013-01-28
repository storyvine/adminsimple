Dummy::Application.routes.draw do

  root to: 'application#welcome'

  mount Adminsimple::Engine => '/admin'

end
