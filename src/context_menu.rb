def make_blue
  sel = Sketchup.active_model.selection
  sel.each do |e|
    e.material = [200,200,255]
    if e.typename == "Face"
      e.back_material = [200,200,255]
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
  item = menu.add_item("Make Blue") { make_blue }
  
  menu.set_validation_proc(item) { check_face }
end
