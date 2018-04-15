module ApplicationHelper
  APP_NAME = 'AnaLive'.freeze
  def page_title
    base_title = APP_NAME
    return base_title if @title.blank?
    "#{base_title} | #{@title}"
  end

  def flash_message(message, klass)
    content_tag(:div, class: "alert alert-#{klass}") do
      concat content_tag(:button, 'x', class: 'close', data: { dismiss: 'alert' })
      concat h(message)
    end
  end

  def movie(opts)
    iframe = content_tag(
      :iframe,
      '', # empty body
      src: "https://www.youtube.com/embed/#{opts[:movie_id]}",
      frameborder: 0,
      allowfullscreen: true
    )
    content_tag(:div, iframe, class: 'youtube-container')
  end
end
