# Create the input box
prompts = ["Title", "Message"]
defaults = ["Dialog Title", "World peace"]
results = inputbox prompts, defaults, "Inputbox Example"
# Create the message box
UI.messagebox results[1], MB_MULTILINE, results[0]