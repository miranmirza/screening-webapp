class StaticPagesController < ApplicationController
  skip_before_action :authorize!, only: [:landing, :thanks]
end
