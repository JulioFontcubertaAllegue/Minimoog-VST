<Cabbage> bounds(0, 0, 0, 0)
form caption("MINIMOOG") size(1100, 500), colour(10, 20, 30), pluginId("def1")
keyboard bounds(8, 366, 1087, 125) middleC(4)
label bounds(0, 5, 184, 31) text("MINIMOOG") fontColour(255, 255, 255, 255) 

;En esta sección se definen las características de la interfaz gráfica y de los elementos interactivos del sinteitzador.

;Esto incluye tanto su posición, tamaño y aspecto como su rango y "canal" asociado.

;Cada elemento posee una etiqueta única empleada para obtener y operar los valores establecidos por el usuario.

;Los nombres que encabezan cada agrupación hacen referencia a la sección del sintetizador donde se encuentran esos elementos. 

;BOXES 
groupbox bounds(184, 0, 271, 360) colour(255, 255, 255, 0)  fontColour(255, 255, 255, 255) text("OSCILLATOR BANK") outlineColour(255, 255, 255, 255) 
groupbox bounds(0, 45, 185, 180) colour(35, 35, 35, 0) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255) text("CONTROLLERS")
groupbox bounds(454, 0, 237, 360) colour(35, 35, 35, 0) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255) text("MIXER") 
groupbox bounds(690, 0, 410, 360) colour(35, 35, 35, 0) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255) text("MODIFIERS") 
groupbox bounds(690, 192, 317, 168) colour(35, 35, 35, 0) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255) text("LOUDNESS CONTOUR")  
groupbox bounds(0, 224, 185, 136) colour(35, 35, 35, 0) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255) text("LFO") 
groupbox bounds(1006, 192, 93, 168) colour(35, 35, 35, 0) fontColour(255, 255, 255, 255) outlineColour(255, 255, 255, 255) text("OUTPUT") 

;OUTPUT
rslider bounds(1026, 230, 50, 55) range(0, 1, 1, 1, 0.001) text("Volume") channel("globalgain") fontColour(0, 0, 0, 255) textColour(255, 255, 255, 255) trackerColour(102, 255, 255, 255) markerColour(0, 0, 0, 255) automatable(0)
checkbox bounds(1038, 292, 26, 27) channel("440hz") shape("circle") colour:1(102, 255, 255, 255) automatable(1)
label bounds(1022, 326, 59, 13) text("440 Hz") fontColour(255, 255, 255, 255)

;CONTROLLERS
rslider bounds(18, 78, 55, 55) range(0, 10, 2, 1, 0.1) text("Glide") channel("glide") textColour(255, 255, 255, 255) trackerColour(102, 255, 255, 255)
rslider bounds(68, 156, 55, 55) range(0, 1, 0.2, 1, 0.01) text("Mod_Mix") channel("modMix") textColour(255, 255, 255, 255) trackerColour(102, 255, 255, 255)
hslider bounds(282, 58, 54, 35) range(0, 1, 0, 1, 1) channel("enableOscMod") trackerColour(102, 255, 255, 255)
hslider bounds(100, 80, 54, 32) range(0, 1, 0, 1, 1) channel("enableGlide") trackerColour(102, 255, 255, 255) 
label bounds(252, 94, 113, 11) text("Osc Modulation") fontColour(255, 255, 255, 255)
label bounds(86, 116, 83, 12) fontColour(255, 255, 255, 255) text("Enable Glide") 

;LFO
rslider bounds(106, 252, 58, 58) range(0, 10, 3.5, 1, 0.01) channel("lfoRate") text("Rate") textColour(255, 255, 255, 255) trackerColour(102, 255, 255, 255)
rslider bounds(22, 252, 58, 58) range(0, 1, 1, 1, 0.01) channel("lfoIntensity") text("Intensity") textColour(255, 255, 255, 255) trackerColour(102, 255, 255, 255)
combobox bounds(42, 318, 103, 30) channel("lfowaveform") text("Sine", "Triangle", "Bipolar Sq.", "Unipolar Sq.", "Sawtooth") 

;OSCILLATOR BANK
rslider bounds(208, 138, 55, 55) range(-2, 2, 1, 1, 1) text("Tune") channel("tune2") textColour(255, 255, 255, 255) trackerColour(102, 255, 255, 255)
rslider bounds(208, 232, 55, 55) range(-2, 2, 1, 1, 1) text("Tune") channel("tune3") textColour(255, 255, 255, 255) trackerColour(102, 255, 255, 255)
rslider bounds(208, 48, 55, 55) range(-2, 2, 1, 1, 1) text("Tune") channel("tune1") textColour(255, 255, 255, 255) trackerColour(102, 255, 255, 255)
combobox bounds(352, 60, 94, 30) channel("waveform1") text("Triangle", "Tri/Saw", "Sawtooth", "Square", "Wide", "Narrow")
combobox bounds(352, 152, 94, 30) channel("waveform2") text("Triangle", "Tri/Saw", "Sawtooth", "Square", "Wide", "Narrow")
combobox bounds(352, 244, 94, 30) channel("waveform3") text("Triangle", "Tri/Saw", "Sawtooth", "Square", "Wide", "Narrow")
vslider bounds(208, 292, 32, 52) range(0, 1, 0, 1, 1) channel("enableOSC3mod") trackerColour(102, 255, 255, 255)
rslider bounds(282, 138, 55, 55) range(-12, 12, 0, 1, 1) text("Freq.") textColour(255, 255, 255, 255) channel("freq2") trackerColour(102, 255, 255, 255)
rslider bounds(284, 232, 55, 55) range(-12, 12, 0, 1, 1) text("Freq.") textColour(255, 255, 255, 255) channel("freq3") trackerColour(102, 255, 255, 255)
label bounds(214, 326, 132, 13) text("Osc 3 Control") fontColour(255, 255, 255, 255)
label bounds(194, 32, 80, 14) fontColour(255, 255, 255, 255) text("OSC 1")
label bounds(194, 122, 80, 14) fontColour(255, 255, 255, 255) text("OSC 2")
label bounds(194, 216, 80, 14) fontColour(255, 255, 255, 255) text("OSC 3")

;MIXER
rslider bounds(484, 52, 55, 55) range(0, 1, 0.7, 1, 0.01) text("Gain") textColour(255, 255, 255, 255) channel("osc1Gain") trackerColour(102, 255, 255, 255)
rslider bounds(484, 164, 55, 55) range(0, 1, 0.7, 1, 0.01) text("Gain") textColour(255, 255, 255, 255) channel("osc2Gain") trackerColour(102, 255, 255, 255)
rslider bounds(484, 278, 55, 55) range(0, 1, 0.7, 1, 0.01) text("Gain") textColour(255, 255, 255, 255) channel("osc3Gain") trackerColour(102, 255, 255, 255)
rslider bounds(616, 164, 55, 55) range(0, 1, 0.1, 1, 0.01) text("Noise") textColour(255, 255, 255, 255) channel("noiseGain") trackerColour(102, 255, 255, 255)
checkbox bounds(546, 66, 25, 25) value(1) channel("enableOsc1") shape("circle") colour:1(102, 255, 255, 255)
checkbox bounds(546, 176, 25, 25)  channel("enableOsc2") shape("circle") colour:1(102, 255, 255, 255)
checkbox bounds(546, 296, 25, 25)  channel("enableOsc3") shape("circle") colour:1(102, 255, 255, 255)
checkbox bounds(632, 232, 25, 25)  channel("enableNoise") shape("circle") colour:1(102, 255, 255, 255)
hslider bounds(618, 120, 55, 47) range(0, 1, 0, 1, 1) channel("noiseType") trackerColour(102, 255, 255, 255) 
label bounds(472, 32, 80, 14) fontColour(255, 255, 255, 255) text("OSC 1")
label bounds(472, 144, 80, 14) fontColour(255, 255, 255, 255) text("OSC 2")
label bounds(472, 258, 80, 14) fontColour(255, 255, 255, 255) text("OSC 3")

;MODIFIERS
rslider bounds(712, 280, 60, 60) range(0.01, 1, 0.4, 1, 0.01) text("Attack") textColour(255, 255, 255, 255) channel("loudnessAtt") trackerColour(102, 255, 255, 255)
rslider bounds(784, 280, 60, 60) range(0.01, 1, 0.2, 1, 0.01) text("Decay") textColour(255, 255, 255, 255) channel("loudnessDec") trackerColour(102, 255, 255, 255)
rslider bounds(856, 280, 60, 60) range(0.01, 1, 0.7, 1, 0.01) text("Sustain") textColour(255, 255, 255, 255) channel("loudnessSus") trackerColour(102, 255, 255, 255)
rslider bounds(928, 280, 60, 60) range(0.01, 1, 0.2, 1, 0.01) text("Release") textColour(255, 255, 255, 255) channel("loudnessRel") trackerColour(102, 255, 255, 255)
hslider bounds(822, 218, 56, 29) range(0, 1, 0, 1, 1) channel("vcaMod") trackerColour(102, 255, 255, 255)
label bounds(796, 250, 110, 12) fontColour(255, 255, 255, 255) text("Contour Modulation")
rslider bounds(808, 38, 55, 55) range(10, 22000, 7500, 1, 1) text("Cutoff") textColour(255, 255, 255, 255) channel("filterCutoff") trackerColour(102, 255, 255, 255)
rslider bounds(868, 38, 55, 55) range(0, 1, 0, 1, 0.01) text("Resonance") textColour(255, 255, 255, 255) channel("filterResonance") trackerColour(102, 255, 255, 255)
rslider bounds(722, 116, 55, 55) range(0.01, 1, 0.75, 1, 0.01) text("Amount") textColour(255, 255, 255, 255) channel("amount") trackerColour(102, 255, 255, 255)
rslider bounds(806, 116, 55, 55) range(0.01, 1, 0.4, 1, 0.01) text("Attack") textColour(255, 255, 255, 255) channel("filterAtt") trackerColour(102, 255, 255, 255)
rslider bounds(868, 116, 55, 55) range(0.01, 1, 0.2, 1, 0.01) text("Decay") textColour(255, 255, 255, 255) channel("filterDec") trackerColour(102, 255, 255, 255)
rslider bounds(930, 116, 55, 55) range(0.01, 1, 0.7, 1, 0.001) text("Sustain") textColour(255, 255, 255, 255) channel("filterSus") trackerColour(102, 255, 255, 255)
rslider bounds(992, 116, 55, 55) range(0.01, 1, 0.2, 1, 0.001) text("Release") textColour(255, 255, 255, 255) channel("filterRel") trackerColour(102, 255, 255, 255)
hslider bounds(724, 44, 51, 35) range(0, 1, 0, 1, 1) channel("enableFilterMod") trackerColour(102, 255, 255, 255)
hslider bounds(946, 46, 51, 36) range(0, 1, 0, 1, 1) channel("keytrack1") trackerColour(102, 255, 255, 255)
hslider bounds(1018, 44, 51, 36) range(0, 1, 0, 1, 1) channel("keytrack2") trackerColour(102, 255, 255, 255)
label bounds(704, 82, 98, 12) text("Filter Modulation") fontColour(255, 255, 255, 255)
label bounds(966, 78, 85, 13) text("key tracking") fontColour(255, 255, 255, 255)
label bounds(958, 46, 29, 12) text("1/3") fontColour(255, 255, 255, 255)
label bounds(1032, 44, 25, 12) text("2/3") fontColour(255, 255, 255, 255)
label bounds(616, 120, 20, 15) text("W") fontColour(255, 255, 255, 255)
label bounds(660, 120, 16, 15) text("P") fontColour(255, 255, 255, 255)


</Cabbage>

<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>

<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1

;Inicialización de varibles globales utilizadas en el Glide
giStore [] fillarray 0, 0
giControl = 0

;A partir de aquí comienza la ejecución del instrumento cuando una tecla es pulsada
instr 1
;Inicializaciones y asignación de valores
aOsc1 init 0
aOsc2 init 0
aOSc3 init 0
aMix init 0
kWave1 chnget "waveform1"   ;Forma de onda del oscilador 1
kWave2 chnget "waveform2"   ;Forma de onda del oscilador 2
kWave3 chnget "waveform3"   ;Forma de onda del oscilador 3
kTune1 chnget "tune1"       ;Modificador de la octava del oscilador 1
kTune2 chnget "tune2"       ;Modificador de la octava del oscilador 2
kTune3 chnget "tune3"       ;Modificador de la octava del oscilador 3
kFreq2 chnget "freq2"       ;Diferencia tonal entre oscilador 1 y 2
kFreq3 chnget "freq3"       ;Diferencia tonal entre oscilador 1 y 3
kMix chnget "modMix"        ;Factor aplicado en la distribución de las modulaciones


;GLIDE
;Utilizando las variables globales definidas previamente, la ejecución del efecto glide se basa en el almacenamiento alterno de frecuencias.

;El sistema funciona utilizando un array de dos elementos en los que se almacenan los valores de frecuencia de las teclas pulsadas.

;El hecho de que haya dos espacios de almacenamiento se debe a que de esta manera siempre hay hueco para el valor almacenado, al sustituir la frecuencia que
;sonó hace dos iteraciones.

;El valor que no se actualiza en una iteración es interpretado como el que ya estaba ahí, es decir, el de la nota pulsada anteriormente del cual hay que partir.

;Una variable de control se encarga de ir organizando los valores en la casilla del array que le corresponde.

iNote cpsmidi
if giStore[0]==0 then 
    giStore[0] = iNote
    giControl = 1
elseif giStore[1]==0 && giControl==1 then
    giStore[1] = iNote
    giControl = 2
elseif giControl==2 then
    giStore[0] = iNote
    giControl = 3
elseif giControl==3 then
    giStore[1] = iNote
    giControl = 2
endif


;LFO
;Generación de la señal de baja frecuencia utilizada en la modulación
;La señal se crea en función de la intensidad, el ratio y la forma de onda seleccionadas 

if chnget:k("lfowaveform")==1 then
    kLfo lfo chnget:k("lfoIntensity"), chnget:k("lfoRate"), 1
elseif chnget:k("lfowaveform")==2 then
    kLfo lfo chnget:k("lfoIntensity"), chnget:k("lfoRate"), 2
elseif chnget:k("lfowaveform")==3 then
    kLfo lfo chnget:k("lfoIntensity"), chnget:k("lfoRate"), 3
elseif chnget:k("lfowaveform")==4 then
    kLfo lfo chnget:k("lfoIntensity"), chnget:k("lfoRate"), 4
endif


;NOISE
;Generación de la señal de ruido del tipo elegido (blanco o rosa)

if chnget:k("noiseType")==0 then
        aNoise noise chnget:k("noiseGain"), 0
    else
        aNoise pinkish chnget:k("noiseGain")
endif
kNoise = aNoise



;MODULACION
;A lo largo del código aparace múltiples veces el factor de modulación, por cada combinación posible de modulaciones.

;El factor ((kMix*kNoise)+((1-kMix)*kLfo)) hace referencia a la ponderación seleccionada por el usuario entre modulación LFO y ruido

;Dicha ponderación sigue la expresión K*b+(1-K)*a, de manera que cuanto mayor sea la contribución de una fuente, menor será la de la otra.



;OSC 1
;Aquí comienza la generación de las señales de audio principales del sintetizador.

;Los 3 osciladores funcionan de manera análoga con el mismo esquema, a excepción de dos diferencias explicadas en la sección del oscilador correspondiente.

;El audio se forma después de comprobar de manera encadenada cada una de las posibles combinaciones que el usuario puede elegir.

;Primero se comprueba la forma de la onda, seguido de la octava a la que está la nota pulsada, la modulación escogida y, finalmente, si el glide está activado.

;Una vez comprobadas todas las condiciones, se genera el audio con el operador correspondiente. 

;En el caso del Glide, una comprobación adicional de la variable de control hace saber al programa dónde debe conseguir el valor necesario para crear el efecto.

;El código se organiza en forma de "bloques", de manera que cuando una condicion no se cumple, se salta al siguiente tramo directamente.

;Dada la estructura redundante del código, se ha añadido comentarios explicativos solo en el primer bloque de cada sección.

;Aquellas partes no comentadas siguen el mismo proceso idéntico, pero para resultados alternativos de las condiciones.


    ;Comprobación de forma de onda
    if kWave1==1 then 
        
        ;Comprobación de la octava seleccionada
        if kTune1>=1 then
            ;Comprobación del interruptor de modulación de los osciladores
            if chnget:k("enableOscMod")==0 then
                ;Comprobación del estado del glide
                if chnget:k("enableGlide")==0 then
                    ;Cuando la octava es la pulsada o una superior, 
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1, 4, 0.5 ;Los dos últimos números definen la forma de onda empleada
                else
                    ;El valor de la variable de control indica al osiclador de qué elemento del array debe obtener el valor de frecuencia de la nota anterior
                    if giControl==1 then
                            ;Generación de la trayectoria lineal que seguirá el glide, en función del tiempo seleccionado
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 4, 0.5
                    endif
                endif        
            else 
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                else
                     if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    endif
                endif              
            endif
            
        elseif kTune1==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    ;En caso de querer reducir una octava al sonido, se resta a la frecuencia la mitad de su valor (lo que equivale a dividir entre 2)
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 4, 0.5
                    endif
                endif    
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    endif
                endif
            endif      
              
        elseif kTune1==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                ;En caso de querer reducir dos octavas, la operación de resta se realiza dos veces, primero con la mitad y luego con la mitad de la mitad
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2)-((p4/2)/2), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 4, 0.5
                    endif
                endif            
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    endif
                endif            
            endif            
        endif  
        
              
    elseif kWave1==2 then
     
        if kTune1>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1, 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 4, 0.75
                    endif
                endif        
            else 
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                else
                     if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    endif
                endif              
            endif
            
        elseif kTune1==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2), 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 4, 0.75
                    endif
                endif    
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    endif
                endif
            endif      
              
        elseif kTune1==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2)-((p4/2)/2), 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 4, 0.75
                    endif
                endif            
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    endif
                endif            
            endif            
        endif 
        
        
    elseif kWave1==3 then
     
        if kTune1>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1, 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 0
                    endif
                endif        
            else 
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                else
                     if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    endif
                endif              
            endif
            
        elseif kTune1==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 0
                    endif
                endif    
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    endif
                endif
            endif      
              
        elseif kTune1==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2)-((p4/2)/2), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 0
                    endif
                endif            
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    endif
                endif            
            endif            
        endif  
        
        
    elseif kWave1==4 then
     
        if kTune1>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1, 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 2, 0.5
                    endif
                endif        
            else 
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                else
                     if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    endif
                endif              
            endif
            
        elseif kTune1==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 2, 0.5
                    endif
                endif    
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    endif
                endif
            endif      
              
        elseif kTune1==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2)-((p4/2)/2), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 2, 0.5
                    endif
                endif            
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    endif
                endif            
            endif            
        endif 
        
         
    elseif kWave1==5 then
     
        if kTune1>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1, 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 2, 0.75
                    endif
                endif        
            else 
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                else
                     if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    endif
                endif              
            endif
            
        elseif kTune1==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 2, 0.75
                    endif
                endif    
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    endif
                endif
            endif      
              
        elseif kTune1==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2)-((p4/2)/2), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 2, 0.75
                    endif
                endif            
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    endif
                endif            
            endif            
        endif 
        
        
    elseif kWave1==6 then
     
       if kTune1>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1, 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kTune1*kLine, 2, 0.1
                    endif
                endif        
            else 
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                else
                     if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine*kTune1*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    endif
                endif              
            endif
            
        elseif kTune1==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2), 2, 0.1
                    endif
                endif    
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    endif
                endif
            endif      
              
        elseif kTune1==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), p4-(p4/2)-((p4/2)/2), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), kLine-(p4/2)-((p4/2)/2), 2, 0.1
                    endif
                endif            
            else
                if chnget:k("enableGlide")==0 then
                    aOsc1 vco2 p5*chnget:k("osc1Gain"), (p4-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc1 vco2 p5*chnget:k("osc1Gain"), (kLine-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    endif
                endif            
            endif            
        endif
    endif

;OSC2
;La única diferencia respecto al primer oscilador está en la inclusión de un parámetro adicional que representa la diferencia en semitonos respecto 
;a la frecuencia fundamental de la nota pulsada.

;La diferencia se lleva a cabo aplicando la fórmula de la afinación bien temperada 2^(freq/12)
  
;Este cambio solo afecta a la operación final en la que se genera el audio, el esquema de condiciones es el mismo.
    if kWave2==1 then
    
        if kTune2>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"),(p4*kTune2*(2^(kFreq2/12))), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 4, 0.5
                    endif
                endif
                
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    endif
                endif        
            endif
            
        elseif kTune2==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), p4*(2^(kFreq2/12))-(p4/2), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 4, 0.5
                    endif
                endif             
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    endif
                endif
                
            endif      
              
        elseif kTune2==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                    endif
                endif    
            else
                 if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    endif
                endif
            endif            
        endif  
        
              
    elseif kWave2==2 then
     
        if kTune2>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"),(p4*kTune2*(2^(kFreq2/12))), 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 4, 0.75
                    endif
                endif
                
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    endif
                endif        
            endif
            
        elseif kTune2==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), p4*(2^(kFreq2/12))-(p4/2), 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 4, 0.75
                    endif
                endif             
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    endif
                endif
                
            endif      
              
        elseif kTune2==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                    endif
                endif    
            else
                 if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                 else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    endif
                 endif
            endif            
        endif 
        
        
    elseif kWave2==3 then
     
        if kTune2>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"),(p4*kTune2*(2^(kFreq2/12))), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 0
                    endif
                endif
                
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    endif
                endif        
            endif
            
        elseif kTune2==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), p4*(2^(kFreq2/12))-(p4/2), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 0
                    endif
                endif             
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    endif
                endif
                
            endif      
              
        elseif kTune2==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 0
                    endif
                endif    
            else
                 if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    endif
                endif
            endif            
        endif 
        
        
    elseif kWave2==4 then
     
        if kTune2>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"),(p4*kTune2*(2^(kFreq2/12))), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 2, 0.5
                    endif
                endif
                
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    endif
                endif        
            endif
            
        elseif kTune2==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), p4*(2^(kFreq2/12))-(p4/2), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 2, 0.5
                    endif
                endif             
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    endif
                endif
                
            endif      
              
        elseif kTune2==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                    endif
                endif    
            else
                 if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    endif
                endif
            endif            
        endif 
        
         
    elseif kWave2==5 then
     
       if kTune2>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"),(p4*kTune2*(2^(kFreq2/12))), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 2, 0.75
                    endif
                endif
                
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    endif
                endif        
            endif
            
        elseif kTune2==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), p4*(2^(kFreq2/12))-(p4/2), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 2, 0.75
                    endif
                endif             
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    endif
                endif
                
            endif      
              
        elseif kTune2==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                    endif
                endif    
            else
                 if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    endif
                endif
            endif            
        endif 
        
        
    elseif kWave2==6 then
     
        if kTune2>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"),(p4*kTune2*(2^(kFreq2/12))), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"),(kLine*kTune2*(2^(kFreq2/12))), 2, 0.1
                    endif
                endif
                
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*kTune2*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    endif
                endif        
            endif
            
        elseif kTune2==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), p4*(2^(kFreq2/12))-(p4/2), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), kLine*(2^(kFreq2/12))-(p4/2), 2, 0.1
                    endif
                endif             
            else
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    endif
                endif
                
            endif      
              
        elseif kTune2==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), (p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), (kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                    endif
                endif    
            else
                 if chnget:k("enableGlide")==0 then
                    aOsc2 vco2 p5*chnget:k("osc2Gain"), ((p4*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                else
                    if giControl==1 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==2 then
                            kLine linseg giStore[0], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    elseif giControl==3 then
                            kLine linseg giStore[1], chnget:i("glide"), iNote
                            aOsc2 vco2 p5*chnget:k("osc2Gain"), ((kLine*(2^(kFreq2/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    endif
                endif
            endif            
        endif
    endif
    
    
    
;OSC3
;Además del parámetro de diferencia tonal, en este oscilador se comprueba una condición adicional que no poseen los otros dos, debido a la posibilidad de 
;ampliar el rango máximo al que puede llegar dicha diferencia.

;Con la opción activada, la cantidad de semitonos que puede desplazarse se multiplica por 3).
  if kWave3==1 then
    
        if kTune3>=1 then 
            if chnget:k("enableOscMod")==0 then
                ;Comprobación de la opción que amplía el rango
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(kFreq3/12))), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 4, 0.5
                        endif
                    endif
                else
                     if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(3*kFreq3/12))), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 4, 0.5
                        endif
                    endif        
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        endif
                    endif
                    
                endif    
            endif
            
        elseif kTune3==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(kFreq3/12))-(p4/2), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 4, 0.5
                        endif
                    endif                   
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(3*kFreq3/12))-(p4/2), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 4, 0.5
                        endif
                    endif     
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        endif
                    endif     
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        endif
                    endif
                        
                endif
            endif      
              
        elseif kTune3==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.5
                        endif
                    endif      
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.5
                        endif
                    endif
                endif        
            endif            
        endif  
        
              
    elseif kWave3==2 then
     
        if kTune3>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(kFreq3/12))), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 4, 0.75
                        endif
                    endif
                else
                     if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(3*kFreq3/12))), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 4, 0.75
                        endif
                    endif        
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        endif
                    endif
                    
                endif    
            endif
            
        elseif kTune3==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(kFreq3/12))-(p4/2), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 4, 0.75
                        endif
                    endif                   
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(3*kFreq3/12))-(p4/2), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 4, 0.75
                        endif
                    endif     
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        endif
                    endif     
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        endif
                    endif
                        
                endif
            endif      
              
        elseif kTune3==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 4, 0.75
                        endif
                    endif      
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 4, 0.75
                        endif
                    endif
                endif        
            endif            
        endif 
        
        
    elseif kWave3==3 then
     
        if kTune3>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(kFreq3/12))), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 0
                        endif
                    endif
                else
                     if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(3*kFreq3/12))), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 0
                        endif
                    endif        
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        endif
                    endif
                    
                endif    
            endif
            
        elseif kTune3==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(kFreq3/12))-(p4/2), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 0
                        endif
                    endif                   
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(3*kFreq3/12))-(p4/2), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 0
                        endif
                    endif     
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        endif
                    endif     
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        endif
                    endif
                        
                endif
            endif      
              
        elseif kTune3==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 0
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 0
                        endif
                    endif      
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 0
                        endif
                    endif
                endif        
            endif            
        endif 
        
        
    elseif kWave3==4 then
     
       if kTune3>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(kFreq3/12))), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 2, 0.5
                        endif
                    endif
                else
                     if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(3*kFreq3/12))), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 2, 0.5
                        endif
                    endif        
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        endif
                    endif
                    
                endif    
            endif
            
        elseif kTune3==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(kFreq3/12))-(p4/2), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 2, 0.5
                        endif
                    endif                   
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(3*kFreq3/12))-(p4/2), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 2, 0.5
                        endif
                    endif     
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        endif
                    endif     
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        endif
                    endif
                        
                endif
            endif      
              
        elseif kTune3==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.5
                        endif
                    endif      
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.5
                        endif
                    endif
                endif        
            endif            
        endif 
        
    elseif kWave3==5 then
     
       if kTune3>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(kFreq3/12))), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 2, 0.75
                        endif
                    endif
                else
                     if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(3*kFreq3/12))), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 2, 0.75
                        endif
                    endif        
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        endif
                    endif
                    
                endif    
            endif
            
        elseif kTune3==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(kFreq3/12))-(p4/2), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 2, 0.75
                        endif
                    endif                   
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(3*kFreq3/12))-(p4/2), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 2, 0.75
                        endif
                    endif     
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        endif
                    endif     
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        endif
                    endif
                        
                endif
            endif      
              
        elseif kTune3==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.75
                        endif
                    endif      
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.75
                        endif
                    endif
                endif        
            endif            
        endif
            
    elseif kWave3==6 then
     
        if kTune3>=1 then 
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(kFreq3/12))), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(kFreq3/12))), 2, 0.1
                        endif
                    endif
                else
                     if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"),(p4*kTune3*(2^(3*kFreq3/12))), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"),(kLine*kTune3*(2^(3*kFreq3/12))), 2, 0.1
                        endif
                    endif        
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*kTune3*(2^(3*kFreq2/12))))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        endif
                    endif
                    
                endif    
            endif
            
        elseif kTune3==-1 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(kFreq3/12))-(p4/2), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(kFreq3/12))-(p4/2), 2, 0.1
                        endif
                    endif                   
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), p4*(2^(3*kFreq3/12))-(p4/2), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), kLine*(2^(3*kFreq3/12))-(p4/2), 2, 0.1
                        endif
                    endif     
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        endif
                    endif     
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12))-(p4/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        endif
                    endif
                        
                endif
            endif      
              
        elseif kTune3==-2 then
            if chnget:k("enableOscMod")==0 then
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                         aOsc3 vco2 p5*chnget:k("osc3Gain"), (p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), (kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2), 2, 0.1
                        endif
                    endif      
                endif        
            else
                if chnget:k("enableOSC3mod")==0 then
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        endif
                    endif
                else
                    if chnget:k("enableGlide")==0 then
                        aOsc3 vco2 p5*chnget:k("osc3Gain"), ((p4*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                    else
                        if giControl==1 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==2 then
                                kLine linseg giStore[0], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        elseif giControl==3 then
                                kLine linseg giStore[1], chnget:i("glide"), iNote
                                aOsc3 vco2 p5*chnget:k("osc3Gain"), ((kLine*(2^(3*kFreq3/12)))-(p4/2)-((p4/2)/2))*((kMix*kNoise)+((1-kMix)*kLfo)), 2, 0.1
                        endif
                    endif
                endif        
            endif            
        endif
    endif     
                                                                                                                                                                                                                                                                   
;MIXER
;Una vez generadas todas las señales de audio, estas se combinan en una única señal de salida en fución de qué osciladores están encendidos.
;También se comprueba si la señal de ruido está habilitada y debe incluirse.
if chnget:k("enableOsc1")==1 && chnget:k("enableOsc2")==1 && chnget:k("enableOsc3")==1  then
        aMix = aOsc1+aOsc2+aOsc3
elseif chnget:k("enableOsc1")==1 && chnget:k("enableOsc2")==1 && chnget:k("enableOsc3")==0  then 
        aMix = aOsc1+aOsc2
elseif chnget:k("enableOsc1")==1 && chnget:k("enableOsc2")==0 && chnget:k("enableOsc3")==1  then  
        aMix = aOsc1+aOsc3
elseif chnget:k("enableOsc1")==0 && chnget:k("enableOsc2")==1 && chnget:k("enableOsc3")==1  then
        aMix = aOsc2+aOsc3
elseif chnget:k("enableOsc1")==1 && chnget:k("enableOsc2")==0 && chnget:k("enableOsc3")==0  then
        aMix = aOsc1
elseif chnget:k("enableOsc1")==0 && chnget:k("enableOsc2")==1 && chnget:k("enableOsc3")==0  then
        aMix = aOsc2
elseif chnget:k("enableOsc1")==0 && chnget:k("enableOsc2")==0 && chnget:k("enableOsc3")==1  then
        aMix = aOsc3                      
endif

if chnget:k("enableNoise")==1 then
       aMix = aMix+aNoise        
endif 


;LADDER FILTER
;En esta sección se filtra la señal mezclada en función de los valores seleccionados de frecuencia de corte, resonancia y envolvente.

;Primero se genera la envolvente que multiplicará a la frecuencia de corte del filtro.

;Posteriormente comprueba si la modulación de la frecuencia de corte está habilitada o no y aplica el factor de modulación en caso afirmativo.

;Esté o no habilitada, se comprueba finalmente el key tracking y se aplica el factor correspondiente dependiendo de la combinación seleccionada.

kCountour madsr chnget:i("filterAtt"), chnget:i("filterDec"), chnget:i("filterSus"), chnget:i("filterRel")
 
if chnget:k("enableFilterMod")==1 then

    if chnget:k("keytrack1")==1 && chnget:k("keytrack2")==0 then
        aFiltered moogladder aMix*((kMix*kNoise)+((1-kMix)*kLfo)), (chnget:k("filterCutoff")+(0.33*p4))*kCountour*chnget:k("amount"), chnget("filterResonance")
    elseif chnget:k("keytrack1")==0 && chnget:k("keytrack2")==1 then
        aFiltered moogladder aMix*((kMix*kNoise)+((1-kMix)*kLfo)), (chnget:k("filterCutoff")+(0.66*p4))*kCountour*chnget:k("amount"), chnget("filterResonance")
    elseif chnget:k("keytrack1")==1 && chnget:k("keytrack2")==1 then
        aFiltered moogladder aMix*((kMix*kNoise)+((1-kMix)*kLfo)), (chnget:k("filterCutoff")+p4)*kCountour*chnget:k("amount"), chnget("filterResonance")
    else
        aFiltered moogladder aMix*((kMix*kNoise)+((1-kMix)*kLfo)), chnget:k("filterCutoff")*kCountour*chnget:k("amount"), chnget("filterResonance")
    endif
    
else

    if chnget:k("keytrack1")==1 && chnget:k("keytrack2")==0 then
        aFiltered moogladder aMix, (chnget:k("filterCutoff")+(0.33*p4))*kCountour*chnget:k("amount"), chnget("filterResonance")
    elseif chnget:k("keytrack1")==0 && chnget:k("keytrack2")==1 then
        aFiltered moogladder aMix, (chnget:k("filterCutoff")+(0.66*p4))*kCountour*chnget:k("amount"), chnget("filterResonance")
    elseif chnget:k("keytrack1")==1 && chnget:k("keytrack2")==1 then
        aFiltered moogladder aMix, (chnget:k("filterCutoff")+p4)*kCountour*chnget:k("amount")+p4, chnget("filterResonance")
    else
        aFiltered moogladder aMix, chnget:k("filterCutoff")*kCountour*chnget:k("amount"), chnget("filterResonance")
    endif
    
endif
                              
;OUT
;En la última sección se aplica la envolvente de la amplitud a la onda filtrada y se modula si la opción está seleccionada.

;También se añade una señal de referencia a 440 Hz en caso de estar activada.

;Generación de la envolvente
kLoudness madsr chnget:i("loudnessAtt"), chnget:i("loudnessDec"), chnget:i("loudnessSus"), chnget:i("loudnessRel")                
;Señal de referencia
aRef vco2 1, 440

;Comprobación de señal de referencia
if chnget:k("440hz")==0 then
    ;Comprobación del estado de la modulación
    if chnget:k("vcaMod")==0 then
        outs aFiltered*kLoudness*chnget:k("globalgain"), aFiltered*kLoudness*chnget:k("globalgain")
    else
        outs aFiltered*(kLoudness*((kMix*kNoise)+((1-kMix)*kLfo)))*chnget:k("globalgain"), aFiltered*kLoudness*chnget:k("globalgain")
    endif
else
    if chnget:k("vcaMod")==0 then
        outs (aFiltered+aRef)*kLoudness*chnget:k("globalgain"), (aFiltered+aRef)*kLoudness*chnget:k("globalgain")
    else
        outs (aFiltered+aRef)*(kLoudness*((kMix*kNoise)+((1-kMix)*kLfo)))*chnget:k("globalgain"), (aFiltered+aRef)*kLoudness*chnget:k("globalgain")
    endif    
endif

endin
    
</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
</CsScore>
</CsoundSynthesizer>
