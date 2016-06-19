require "sketchup.rb"

def change_face_color(color_name)
  sel = Sketchup.active_model.selection
  sel.each do |e|
    e.material = color_name
    if e.typename == "Face"
      e.back_material = color_name      
    end
  end
end

def check_face
  sel = Sketchup.active_model.selection
  ok = sel.find { |e| e.typename == "Face" }
  ok ? MF_ENABLED : MF_GRAYED
end

UI.add_context_menu_handler do |menu|
  menu.add_separator
  sub_menu = menu.add_submenu("Change Color")
  sm1 = sub_menu.add_item("Make Blue") { change_face_color "Blue" }
  sm2 = sub_menu.add_item("Make Red") { change_face_color "Red" }
  
  sub_menu.set_validation_proc(sm1) { check_face }
  sub_menu.set_validation_proc(sm2) { check_face }
end
