cmd = UI::Command.new("Make Blue") {
  sel = Sketchup.active_model.selection
  sel.each do |e|
    e.material = [200,200,255]
    if e.typename == "Face"
      e.back_material = [200,200,255]
    end
  end
}

cmd.set_validation_proc {
  sel = Sketchup.active_model.selection
  ok = sel.find { |e| e.typename == "Face" }
  ok ? MF_ENABLED : MF_GRAYED
}

cmd.status_bar_text= "Make Face Blue."
cmd.tooltip= "Make Blue"

UI.add_context_menu_handler do |menu|
  menu.add_separator
  menu.add_item cmd
end
