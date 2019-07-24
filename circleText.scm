(define (circleText)
	(let*
		(
			
			(img (car(gimp-image-new 800 600 RGB)))
			(layer1 (car (gimp-layer-new img 800 600 RGB "layer 1" 100 NORMAL)))
		)
		
		(gimp-image-add-layer img layer1 1)
		(gimp-palette-set-foreground '(0 0 0))
	    (gimp-context-set-background '(255 255 255))
		(gimp-drawable-fill layer1 BACKGROUND-FILL)
		(gimp-text-fontname
			img
			layer1
			30
			90
			"Callum Gott"
			0
			TRUE
			60
			PIXELS
			"Arial Bold"
		)
		(gimp-display-new img)
	)	
)

(script-fu-register "circleText"
					"circleText"
					"circle text script"
					"Callum"
					
					
)
(script-fu-menu-register "circleText" "<Toolbox>/MyScripts")