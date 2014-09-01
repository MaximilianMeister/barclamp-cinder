name "cinder-controller_remove"
description "Deactivate Cinder Controller Role"
run_list(
  "recipe[cinder::remove_controller]"
)
default_attributes()
override_attributes()
