module ApplicationHelper
  
  def copyright_generator
    KrieterViewTool::Renderer.copyright 'Jacob Krieter', 'All rights reserved'
  end
end

  def login_helper
      if current_user.is_a?(User)
        link_to "Logout", destroy_user_session_path, method: :delete
      else
        (link_to "Sign up", new_user_registration_path) +
        "<br>".html_safe +
        (link_to "login", new_user_session_path)
      end
  end
  
    def source_helper(layout_name)
      if session[:source]
        greeting = "Thanks for visting me from #{session[:source]} and you are on the #{layout_name} layout"
        content_tag(:p, greeting, class: "source-greeting")
      end 
    end