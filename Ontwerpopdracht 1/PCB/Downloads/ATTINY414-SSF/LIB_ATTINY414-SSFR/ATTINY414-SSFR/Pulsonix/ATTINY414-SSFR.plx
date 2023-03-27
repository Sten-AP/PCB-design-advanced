PULSONIX_LIBRARY_ASCII "SamacSys ECAD Model"
//948795/1100420/2.50/14/3/Integrated Circuit

(asciiHeader
	(fileUnits MM)
)
(library Library_1
	(padStyleDef "r152.5_70"
		(holeDiam 0)
		(padShape (layerNumRef 1) (padShapeType Rect)  (shapeWidth 0.7) (shapeHeight 1.525))
		(padShape (layerNumRef 16) (padShapeType Ellipse)  (shapeWidth 0) (shapeHeight 0))
	)
	(textStyleDef "Normal"
		(font
			(fontType Stroke)
			(fontFace "Helvetica")
			(fontHeight 1.27)
			(strokeWidth 0.127)
		)
	)
	(patternDef "SOIC127P600X175-14N" (originalName "SOIC127P600X175-14N")
		(multiLayer
			(pad (padNum 1) (padStyleRef r152.5_70) (pt -2.712, 3.81) (rotation 90))
			(pad (padNum 2) (padStyleRef r152.5_70) (pt -2.712, 2.54) (rotation 90))
			(pad (padNum 3) (padStyleRef r152.5_70) (pt -2.712, 1.27) (rotation 90))
			(pad (padNum 4) (padStyleRef r152.5_70) (pt -2.712, 0) (rotation 90))
			(pad (padNum 5) (padStyleRef r152.5_70) (pt -2.712, -1.27) (rotation 90))
			(pad (padNum 6) (padStyleRef r152.5_70) (pt -2.712, -2.54) (rotation 90))
			(pad (padNum 7) (padStyleRef r152.5_70) (pt -2.712, -3.81) (rotation 90))
			(pad (padNum 8) (padStyleRef r152.5_70) (pt 2.712, -3.81) (rotation 90))
			(pad (padNum 9) (padStyleRef r152.5_70) (pt 2.712, -2.54) (rotation 90))
			(pad (padNum 10) (padStyleRef r152.5_70) (pt 2.712, -1.27) (rotation 90))
			(pad (padNum 11) (padStyleRef r152.5_70) (pt 2.712, 0) (rotation 90))
			(pad (padNum 12) (padStyleRef r152.5_70) (pt 2.712, 1.27) (rotation 90))
			(pad (padNum 13) (padStyleRef r152.5_70) (pt 2.712, 2.54) (rotation 90))
			(pad (padNum 14) (padStyleRef r152.5_70) (pt 2.712, 3.81) (rotation 90))
		)
		(layerContents (layerNumRef 18)
			(attr "RefDes" "RefDes" (pt 0, 0) (textStyleRef "Normal") (isVisible True))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -3.725 4.625) (pt 3.725 4.625) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 3.725 4.625) (pt 3.725 -4.625) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt 3.725 -4.625) (pt -3.725 -4.625) (width 0.05))
		)
		(layerContents (layerNumRef Courtyard_Top)
			(line (pt -3.725 -4.625) (pt -3.725 4.625) (width 0.05))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.95 4.325) (pt 1.95 4.325) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.95 4.325) (pt 1.95 -4.325) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt 1.95 -4.325) (pt -1.95 -4.325) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.95 -4.325) (pt -1.95 4.325) (width 0.025))
		)
		(layerContents (layerNumRef 28)
			(line (pt -1.95 3.055) (pt -0.68 4.325) (width 0.025))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.6 4.325) (pt 1.6 4.325) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1.6 4.325) (pt 1.6 -4.325) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt 1.6 -4.325) (pt -1.6 -4.325) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -1.6 -4.325) (pt -1.6 4.325) (width 0.2))
		)
		(layerContents (layerNumRef 18)
			(line (pt -3.475 4.51) (pt -1.95 4.51) (width 0.2))
		)
	)
	(symbolDef "ATTINY414-SSFR" (originalName "ATTINY414-SSFR")

		(pin (pinNum 1) (pt 0 mils 0 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -25 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 2) (pt 0 mils -100 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -125 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 3) (pt 0 mils -200 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -225 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 4) (pt 0 mils -300 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -325 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 5) (pt 0 mils -400 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -425 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 6) (pt 0 mils -500 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -525 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 7) (pt 0 mils -600 mils) (rotation 0) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 230 mils -625 mils) (rotation 0]) (justify "Left") (textStyleRef "Normal"))
		))
		(pin (pinNum 8) (pt 1900 mils 0 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1670 mils -25 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 9) (pt 1900 mils -100 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1670 mils -125 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 10) (pt 1900 mils -200 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1670 mils -225 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 11) (pt 1900 mils -300 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1670 mils -325 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 12) (pt 1900 mils -400 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1670 mils -425 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 13) (pt 1900 mils -500 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1670 mils -525 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(pin (pinNum 14) (pt 1900 mils -600 mils) (rotation 180) (pinLength 200 mils) (pinDisplay (dispPinName true)) (pinName (text (pt 1670 mils -625 mils) (rotation 0]) (justify "Right") (textStyleRef "Normal"))
		))
		(line (pt 200 mils 100 mils) (pt 1700 mils 100 mils) (width 6 mils))
		(line (pt 1700 mils 100 mils) (pt 1700 mils -700 mils) (width 6 mils))
		(line (pt 1700 mils -700 mils) (pt 200 mils -700 mils) (width 6 mils))
		(line (pt 200 mils -700 mils) (pt 200 mils 100 mils) (width 6 mils))
		(attr "RefDes" "RefDes" (pt 1750 mils 300 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))
		(attr "Type" "Type" (pt 1750 mils 200 mils) (justify Left) (isVisible True) (textStyleRef "Normal"))

	)
	(compDef "ATTINY414-SSFR" (originalName "ATTINY414-SSFR") (compHeader (numPins 14) (numParts 1) (refDesPrefix IC)
		)
		(compPin "1" (pinName "VDD") (partNum 1) (symPinNum 1) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "2" (pinName "PA4") (partNum 1) (symPinNum 2) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "3" (pinName "PA5") (partNum 1) (symPinNum 3) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "4" (pinName "PA6") (partNum 1) (symPinNum 4) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "5" (pinName "PA7") (partNum 1) (symPinNum 5) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "6" (pinName "TOSC1/PB3") (partNum 1) (symPinNum 6) (gateEq 0) (pinEq 0) (pinType Unknown))
		(compPin "7" (pinName "TOSC2/PB2") (partNum 1) (symPinNum 7) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "14" (pinName "GND") (partNum 1) (symPinNum 8) (gateEq 0) (pinEq 0) (pinType Power))
		(compPin "13" (pinName "PA3/EXTCLK") (partNum 1) (symPinNum 9) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "12" (pinName "PA2") (partNum 1) (symPinNum 10) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "11" (pinName "PA1") (partNum 1) (symPinNum 11) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "10" (pinName "PA0/__RESET__/UPDI") (partNum 1) (symPinNum 12) (gateEq 0) (pinEq 0) (pinType Input))
		(compPin "9" (pinName "PB0") (partNum 1) (symPinNum 13) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(compPin "8" (pinName "PB1") (partNum 1) (symPinNum 14) (gateEq 0) (pinEq 0) (pinType Bidirectional))
		(attachedSymbol (partNum 1) (altType Normal) (symbolName "ATTINY414-SSFR"))
		(attachedPattern (patternNum 1) (patternName "SOIC127P600X175-14N")
			(numPads 14)
			(padPinMap
				(padNum 1) (compPinRef "1")
				(padNum 2) (compPinRef "2")
				(padNum 3) (compPinRef "3")
				(padNum 4) (compPinRef "4")
				(padNum 5) (compPinRef "5")
				(padNum 6) (compPinRef "6")
				(padNum 7) (compPinRef "7")
				(padNum 8) (compPinRef "8")
				(padNum 9) (compPinRef "9")
				(padNum 10) (compPinRef "10")
				(padNum 11) (compPinRef "11")
				(padNum 12) (compPinRef "12")
				(padNum 13) (compPinRef "13")
				(padNum 14) (compPinRef "14")
			)
		)
		(attr "Mouser Part Number" "556-ATTINY414-SSFR")
		(attr "Mouser Price/Stock" "https://www.mouser.co.uk/ProductDetail/Microchip-Technology-Atmel/ATTINY414-SSFR?qs=1mbolxNpo8d5mqJnKklqow%3D%3D")
		(attr "Manufacturer_Name" "Microchip")
		(attr "Manufacturer_Part_Number" "ATTINY414-SSFR")
		(attr "Description" "MICROCHIP - ATTINY414-SSFR - MCU, 8BIT, AVR, 20MHZ, SOIC-14")
		(attr "<Hyperlink>" "https://componentsearchengine.com/Datasheets/2/ATTINY414-SSFR.pdf")
		(attr "<Component Height>" "1.75")
		(attr "<STEP Filename>" "ATTINY414-SSFR.stp")
		(attr "<STEP Offsets>" "X=0;Y=0;Z=0")
		(attr "<STEP Rotation>" "X=0;Y=0;Z=0")
	)

)
