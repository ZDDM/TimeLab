extends 'res://src/obj/machine/machine.gd'

export(bool) var can_be_provided = false
export(int) var generated_output = 0
var providing_list = []

func _ready():
	rpc("_set_powered", true)
	if not can_be_provided:
		provider = self

func _on_providing_range_body_enter(body):
	if body extends preload("res://src/obj/machine/machine.gd"):
		if body.get_provider() == null or not body.is_powered():
			body.set_provider(self)
			providing_list.append(body)

func _on_providing_range_body_exit(body):
	if body extends preload("res://src/obj/machine/machine.gd"):
		if body.get_provider() == self and providing_list.has(body):
			body.set_provider(null)
			providing_list.remove(providing_list.find(body))

func generate_electricity():
	if is_network_master():
		print(stored_joules, "J (", generated_output, "J/s)")
		print(providing_list)
		if is_powered():
			rpc_unreliable("set_stored_joules", get_stored_joules() + generated_output)
