extends Node2D

func _process(delta):
	var plp = $prison.to_local($Player.global_position);
	var mpos = $prison.local_to_map($prison.get_local_mouse_position());
	var ppos = $prison.local_to_map(plp);
	var can_access : bool = player_access(ppos,mpos);
	if Input.is_action_just_pressed("switch") && can_access:
		var sid = $prison.get_cell_source_id(1,mpos);
		if sid == 1:
			$prison.set_cell(1,mpos,2,Vector2i(0,0),0);
		else :
			$prison.set_cell(1,mpos,1,Vector2i(0,0),0);
			
	
	

func player_access(ppos : Vector2i,mpos : Vector2i) -> bool:
	pass
	var access : Vector2i = abs(ppos - mpos);
	if access == Vector2i(1,0) || access == Vector2i(0,1) || access == Vector2i(1,1):
		return true;
	return false;
