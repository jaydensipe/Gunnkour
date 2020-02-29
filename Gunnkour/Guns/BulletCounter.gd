extends Control


func _process(delta):
	
	match ($"/root/global".equippedWeapon):
		1:
			$Pistol/pistolcounter.set_text(str($"/root/global".pistol.bulletCounter))
			$Pistol/pistolcounter.visible = true
			$Pistol/pistolammo.visible = true
			$SMG/SMGcounter.hide()
			$SMG/SMGammo.hide()
			$Shotgun/shotguncounter.hide()
			$Shotgun/shotgunammo.hide()
		2:
			$Shotgun/shotguncounter.set_text(str($"/root/global".shotgun.bulletCounter))
			$Pistol/pistolcounter.hide()
			$Pistol/pistolammo.hide()
			$SMG/SMGcounter.hide()
			$SMG/SMGammo.hide()
			$Shotgun/shotguncounter.visible = true
			$Shotgun/shotgunammo.visible = true
		3:
			$SMG/SMGcounter.set_text(str($"/root/global".smg.bulletCounter))
			$Pistol/pistolcounter.hide()
			$Pistol/pistolammo.hide()
			$SMG/SMGcounter.visible = true
			$SMG/SMGammo.visible = true
			$Shotgun/shotguncounter.hide()
			$Shotgun/shotgunammo.hide()
