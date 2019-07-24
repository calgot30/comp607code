(define (transformText)
	(let*
		(
		  (img (car (gimp-image-new 800 600 RGB)))
		  (Layer1 (car (gimp-layer-new img 800 600 RGB "Layer1" 100 NORMAL)))	  
		)
		
		(gimp-context-set-background '(255 0 255))
		(gimp-image-add-layer img Layer1 1)
		(gimp-edit-bucket-fill Layer1 BG-BUCKET-FILL NORMAL-MODE
			100
			255
			FALSE
			400
			300
		)
		
		(gimp-context-set-foreground '(0 0 0))
			
		(gimp-text-fontname 
							img
							Layer1
							400
							300
							"Hello World"
							1
							TRUE
							30
							0
							"Arial"
		)
		(gimp-display-new img)
	)
)

(script-fu-register "transformText"
					"transformText"
					"circle text script"
					"mark nikora"
					"copyright 2019"
					"Created today"
					""
)
(script-fu-menu-register "transformText" "<Toolbox>/MyScripts")