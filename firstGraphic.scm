(define (circleText)
  (let*
    (
      (img (car (gimp-image-new 800 600 RGB)))
	  (Layer1 (car (gimp-layer-new img 800 600 RGB "Layer1" 100 NORMAL)))	  
	)
	(gimp-context-set-background '(255 255 255))
    (gimp-image-add-layer img Layer1 1)
	(gimp-edit-bucket-fill Layer1 BG-BUCKET-FILL NORMAL-MODE
		100
		255
		FALSE
		400
		300
	)
	(gimp-image-select-ellipse img
		CHANNEL-OP-ADD
		300	
		200
		200
		200
	)
	
	(gimp-context-set-foreground '(255 0 0))
	(gimp-edit-bucket-fill Layer1 FG-BUCKET-FILL NORMAL-MODE
				100
				255
				FALSE
				400
				300
	)
	
	(gimp-text-fontname img
						Layer1
						350	
						160
						"Callum"
						1
						TRUE
						30
						0
						"Arial"
	)
	
	(gimp-selection-none img)
	(gimp-image-flatten img)
	(gimp-display-new img)

   )
)

(script-fu-register "circleText"
					"circleText"
					"circle text script"
					"mark nikora"
					"copyright 2019"
					"Created today"
					""
)
(script-fu-menu-register "circleText" "<Toolbox>/MyScripts")

					