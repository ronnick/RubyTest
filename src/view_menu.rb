# Procedure called by the first menu item
def item1
  UI.messagebox "Hooray! It's June!"
end

# Procedure called by the second menu item

def item2
  UI.messagebox "It's not June."
end

# Validation procedure for the first menu item

def validate1
  (Time.new.month == 7) ? MF_ENABLED : MF_GRAYED
end

# Validation procedure for the second menu item

def validate2
  (Time.new.month == 7) ? MF_GRAYED : MF_ENABLED
end

# Access the main View menu
view_menu = UI.menu "View"
# Add a separator and a submenu
view_menu.add_separator
sub_menu = view_menu.add_submenu("June Check")
# Add two menu items to the submenu
it1 = sub_menu.add_item("Item 1") {item1}
it2 = sub_menu.add_item("Item 2") {item2}
# Validate the two menu items
sub_menu.set_validation_proc(it1) {validate1}
sub_menu.set_validation_proc(it2) {validate2}