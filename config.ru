require './config/environment'


use Rack::MethodOverride
use ArtistsController
use ComicsController
use UsersController
use WritersController
run ApplicationController
