module HomeHelper
  def t2p_widget_header
    html = <<_HTLM
<div style='text-align: center; background: #fff;'>
  <a href="http://time2play.mobi"><img alt="Time2Play" src="http://time2play.mobi/assets/time2play/logo_api.gif" /></a>
</div>
_HTLM
    html.html_safe
  end

  def t2p_widget_footer
    html = <<_HTML
<div style='text-align: center;'>
  <a href="http://time2play.mobi">Другие игры</a>
  <br />
  © Nravo. Все права защищены.
</div>
_HTML
    html.html_safe
  end

  def t2p_notice
    content_tag(:p, flash[:notice], :class => "notice") if flash[:notice].present?
  end

  def t2p_error
    content_tag(:p, flash[:error], :class => "error") if flash[:error].present?
  end

  # login form
  def t2p_form_login
    html = <<_HTML
<form accept-charset="UTF-8" action="/login_from_game?game=#{GAME}" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bKFV7AOw+HMbE8fQfpAzP5aIifYDribKewinyy8DugQ=" /></div>
  <label for="session_login">Логин / Телефон</label>
  <input id="session_login" name="session[login]" type="text" />
  <label for="session_password">Пароль</label>
  <input id="session_password" name="session[password]" type="text" />
  Код подтверждения
  <br />
  <img src='#{image_path('simple_captcha.jpeg')}' alt='captcha' />
  <input autocomplete="off" id="captcha" name="captcha" type="text" />
  <input name="commit" type="submit" value="Войти" />
  <p class='sample'>Пример: 380ХХХХХХХХХ&nbsp;(Украина), 7ХХХХХХХХХХ&nbsp;(Россия), 375ХХХХХХХХХ&nbsp;(Белоруссия)</p>
</form>
_HTML
    html.html_safe
  end

  def t2p_login_description
    html = <<_HTML
    <p>Понравилась игра? Дальше будет еще интересние.</p><p>Для продолжения войди или <a href="/register_from_game?game=#{GAME}">регистрируйся</a> если первый раз.</p>
_HTML
    html.html_safe
  end

  # register by phone
  def t2p_form_register_by_phone
    if @error
      html = <<_HTML
<form accept-charset="UTF-8" action="/register_from_game?game=#{GAME}" class="new_user" id="new_user" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="3cSO4xStxrUBE7E0aMqw/CkaPYvCSvdJE5KiqsppPxg=" /></div>
  <div class='form_error'>Телефон 380631111111 уже существует</div>
  <div class="field_with_errors"><label for="user_phone">Телефон</label></div>
  <div class="field_with_errors"><input id="user_phone" name="user[phone]" type="text" value="380631111111" /></div>
  Код подтверждения
  <br />
  <img src='#{image_path('simple_captcha.jpeg')}' alt='captcha' />
  <input autocomplete="off" id="captcha" name="captcha" type="text" />
  <input name="commit" type="submit" value="Зарегистрироваться" />
  <p class='sample'>Пример: 380ХХХХХХХХХ&nbsp;(Украина), 7ХХХХХХХХХХ&nbsp;(Россия), 375ХХХХХХХХХ&nbsp;(Белоруссия)</p>
  <br />
</form>
_HTML
    else
      html = <<_HTML
<form accept-charset="UTF-8" action="/register_from_game?game=#{GAME}" class="new_user" id="new_user" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bKFV7AOw+HMbE8fQfpAzP5aIifYDribKewinyy8DugQ=" /></div>
  <label for="user_phone">Телефон</label>
  <input id="user_phone" name="user[phone]" type="text" />
  <input name="commit" type="submit" value="Зарегистрироваться" />
  <p class='sample'>Пример: 380ХХХХХХХХХ&nbsp;(Украина), 7ХХХХХХХХХХ&nbsp;(Россия), 375ХХХХХХХХХ&nbsp;(Белоруссия)</p>
  <br />
</form>
_HTML
    end

    html.html_safe
  end

  def t2p_register_by_phone_description
    html = <<_HTML
<p>Понравилась игра? Дальше будет еще интересние.</p><p>Для продолжения зарегистрируйся или <a href="/login_from_game?game=#{GAME}">Войти</a> если уже регистрировался на портале.</p>
_HTML
    html.html_safe
  end

  def t2p_register_by_phone_notice
    html = <<_HTML
<p>Регистрация бесплатная. Пароль вы получите на указанный номер. Зачем нам ваш номер телефона? <ul><li>Вы сможете легко восстановить потерянный пароль.</li></ul></p>
_HTML
    html.html_safe
  end

  def t2p_form_register_wo_phone
    if @error
      html = <<_HTML
<form accept-charset="UTF-8" action="/user?game=#{GAME}" class="new_user" id="new_user" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="dQjInD1pdzsElnnyA5VObdCuAgsyOauLB9jJPjLsfD0=" /></div>
  <div class='form_error'>Логин введите минимум 3 символов, Желаемый пароль введите минимум 3 символов</div>
  <div class="field_with_errors"><label for="user_login">Логин</label></div>
  <div class="field_with_errors"><input id="user_login" name="user[login]" type="text" value="a" /></div>
  <div class="field_with_errors"><label for="user_password">Желаемый пароль</label></div>
  <div class="field_with_errors"><input id="user_password" name="user[password]" type="text" value="a" /></div>
  Код подтверждения
  <br />
  <img src='#{image_path('simple_captcha.jpeg')}' alt='captcha' />
  <input autocomplete="off" id="captcha" name="captcha" type="text" />
  <input name="commit" type="submit" value="Зарегистрироваться" />
</form>
_HTML
    else
      html = <<_HTML
<form accept-charset="UTF-8" action="/user?game=#{GAME}" class="new_user" id="new_user" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bKFV7AOw+HMbE8fQfpAzP5aIifYDribKewinyy8DugQ=" /></div>
  <label for="user_login">Логин</label>
  <input id="user_login" name="user[login]" type="text" />
  <label for="user_password">Желаемый пароль</label>
  <input id="user_password" name="user[password]" type="text" />
  <input name="commit" type="submit" value="Зарегистрироваться" />
</form>
_HTML
    end

    html.html_safe
  end

  def t2p_register_wo_phone_description
    "<p>Внимание! При потери пароля, вы не можете его восстановить!</p>".html_safe
  end

  def t2p_form_restore
    if @error
      html = <<_HTML
<form accept-charset="UTF-8" action="/user/restore?game=#{GAME}" class="new_user" id="new_user" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="QkYFmouw1LEwpvLKdpD/t6RHVegHg06ybZmc+qCPVX4=" /></div>
  <div class='form_error'>Телефон введите минимум 11 символов</div>
  <div class="field_with_errors"><label for="user_phone">Телефон</label></div>
  <div class="field_with_errors"><input id="user_phone" name="user[phone]" type="text" value="0632228298" /></div>
  Код подтверждения
  <br />
  <img src='#{image_path('simple_captcha.jpeg')}' alt='captcha' />
  <input autocomplete="off" id="captcha" name="captcha" type="text" />
  <input name="commit" type="submit" value="Восстановить" />
  <p class='sample'>Пример: 380ХХХХХХХХХ&nbsp;(Украина), 7ХХХХХХХХХХ&nbsp;(Россия), 375ХХХХХХХХХ&nbsp;(Белоруссия)</p>
</form>
_HTML
    else
      html = <<_HTML
<form accept-charset="UTF-8" action="/user/restore?game=#{GAME}" class="new_user" id="new_user" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="bKFV7AOw+HMbE8fQfpAzP5aIifYDribKewinyy8DugQ=" /></div>
  <label for="user_phone">Телефон</label>
  <input id="user_phone" name="user[phone]" type="text" />
  <input name="commit" type="submit" value="Восстановить" />
  <p class='sample'>Пример: 380ХХХХХХХХХ&nbsp;(Украина), 7ХХХХХХХХХХ&nbsp;(Россия), 375ХХХХХХХХХ&nbsp;(Белоруссия)</p>
</form>
_HTML
    end

    html.html_safe
  end

  # link register by phone
  def t2p_register_by_phone_path
    user_register_from_game_path(:game => params[:game])
  end

  def t2p_register_wo_phone_path
    register_user_path(:game => params[:game])
  end

  def t2p_login_path
    user_login_from_game_path(:game => params[:game])
  end

  def t2p_restore_path
    restore_user_path(:game => params[:game])
  end
end
