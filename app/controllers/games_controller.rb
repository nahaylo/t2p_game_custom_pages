class GamesController < ApplicationController
  def login_from_game
  end

  def login_from_game_error
    flash.now[:error] = 'Неверный логин и/или парол'
    render :login_from_game
  end

  def register_from_game
  end

  def register_from_game_error
    @error = true
    render :register_from_game
  end

  def register_wo_phone
  end

  def register_wo_phone_error
    @error = true
    render :register_wo_phone
  end

  def restore
  end

  def restore_error
    @error = true
    render :restore
  end
end