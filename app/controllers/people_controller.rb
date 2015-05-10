class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    @person = Person.new(person_params)
    @person.save
    redirect_to people_path
  end

  def show
    @person = Person.find(params[:id])
  end

  private
  def person_params
      params.required(:person).permit(allowed_params)
  end

  def allowed_params
   [:name]
  end
end
