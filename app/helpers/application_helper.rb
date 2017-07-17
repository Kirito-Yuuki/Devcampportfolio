module ApplicationHelper
  
  def copyright_generator
    KrieterViewTool::Renderer.copyright 'Jacob Krieter', 'All rights reserved'
  end
end
