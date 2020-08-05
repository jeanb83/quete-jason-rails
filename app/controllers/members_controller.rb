class MembersController < ApplicationController
  def index
    @members = Member.all
    @member = Member.new
  end

  # Methode New a utiliser en cas de formulaire en dehors de l'index
  # def new
  #  @member = Member.new
  # end

  def create
    @member = Member.new(member_params)
    @member.save
    if @member.save
      redirect_to members_path
    else render :new
    end
  end

  private

  def find
    @member = Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(:name)
  end
end
