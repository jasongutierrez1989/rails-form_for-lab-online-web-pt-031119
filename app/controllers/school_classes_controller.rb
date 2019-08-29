class SchoolClassController < ActionController::Base
  def index
    @schoolclasses = SchoolClass.all
  end
  def new
    @schoolclass = SchoolClass.new
  end
  def create
    @schoolclass = SchoolClass.new(post_params())
  end
  def show
  end
  def edit
  end
  def update
  end
  def schoolclass_params(*args)
    params.require(:schoolclass).permit(*args)
  end
end
