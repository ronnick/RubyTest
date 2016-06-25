require "sketchup.rb"

filename = File.basename(__FILE__)
unless file_loaded?(filename)
  file_loaded filename
end

def delete_selection
  sel = Sketchup.active_model.selection
  sel.each do |e|
    e.delete
  end
end

UI.add_context_menu_handler do |menu|
  menu.add_separator
  sub_menu
end
