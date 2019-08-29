class SchoolClassController < ActionController::Base
  def index
    @schoolclasses = SchoolClass.all
  end
  def new
    @schoolclass = SchoolClass.new
  end
  def create
    @schoolclass = SchoolClass.new(schoolclass_params(:title, :room_number))
    @schoolclass.save
    redirect_to school_classes_path(@schoolclass)
  end
  def show
    @schoolclass = SchoolClass.find(params[:id])
  end
  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end
  def update
  end
  def schoolclass_params(*args)
    params.require(:school_classes).permit(*args)
  end
end
