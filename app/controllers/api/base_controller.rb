module Api
    class BaseController < ApplicationController
        def index
            head 403
        end
    end
end