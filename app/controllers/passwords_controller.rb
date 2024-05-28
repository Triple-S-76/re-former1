class PasswordsController < ApplicationController

  def index
    p 'PASSWORD INDEX HAS RUN'
  end

  def new
    p 'NEW HAS RUN'
  end

  def create
    @password = Password.new(password_params)
    p @password.valid?
    p password_params

    if @password.save
      redirect_to passwords_path, notice: 'Password was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    p 'EDIT HAS RUN'
  end

  private

  def password_params
    params.require(:password).permit(:name, :password, :password_confirmation)
  end

end
