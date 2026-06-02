<Cabbage>
form caption("Omniteacher") size(1140, 730), guiMode("poll"), pluginId("def1"), colour(0, 0, 0)

image bounds(0, 0, 1140, 730), file("Fondo Omniteacher.png")

; Selector de presets globales
combobox bounds(370, 102, 380, 28), channel("presetSelect"), value(1), text("Init", "Pad", "Lead", "Pluck", "Reese Bass", "Keys")

; Selector visual de wavetable
combobox bounds(395, 165, 340, 145), channel("wavetable"), value(1), text("Sine", "Saw", "Square", "Triangle"), alpha(0.001)
image bounds(395, 165, 340, 145), file("WT_Sine.png"), identChannel("wtImage1")
image bounds(395, 165, 340, 145), file("WT_Saw.png"), identChannel("wtImage2")
image bounds(395, 165, 340, 145), file("WT_Square.png"), identChannel("wtImage3")
image bounds(395, 165, 340, 145), file("WT_Triangle.png"), identChannel("wtImage4")
button bounds(401, 198, 38, 72), channel("wtPrev"), latched(0), text("", ""), colour(0,0,0,0), fontColour(0,0,0,0)
button bounds(689, 198, 38, 72), channel("wtNext"), latched(0), text("", ""), colour(0,0,0,0), fontColour(0,0,0,0)

; Control de ganancia
label   bounds(68, 278, 70, 18), text("GAIN"), fontColour("white"), align("centre"), fontSize(14)
vslider bounds(82, 305, 34, 150), channel("gain"), range(0, 1, 0.7, 1, 0.001), text(""), filmstrip("fader_vertical.png", 150, 0, 0), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)

; Envolvente de amplitud
label bounds(178, 182, 150, 20), text("ENV AMP"), fontColour("white"), align("centre"), fontSize(15)
vslider bounds(150, 214, 34, 140), channel("attack"),  range(0.001, 5, 0.005, 1, 0.001), text(""), filmstrip("fader_vertical.png", 150, 0, 0), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
vslider bounds(205, 214, 34, 140), channel("decay"),   range(0.001, 5, 0.05,  1, 0.001), text(""), filmstrip("fader_vertical.png", 150, 0, 0), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
vslider bounds(260, 214, 34, 140), channel("sustain"), range(0, 1, 0.9, 1, 0.001),       text(""), filmstrip("fader_vertical.png", 150, 0, 0), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
vslider bounds(315, 214, 34, 140), channel("release"), range(0.001, 5, 0.08, 1, 0.001),  text(""), filmstrip("fader_vertical.png", 150, 0, 0), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
label bounds(138, 362, 58, 18), text("A"), fontColour("white"), align("centre")
label bounds(193, 362, 58, 18), text("D"), fontColour("white"), align("centre")
label bounds(248, 362, 58, 18), text("S"), fontColour("white"), align("centre")
label bounds(303, 362, 58, 18), text("R"), fontColour("white"), align("centre")

; Envolvente de filtro
label bounds(168, 396, 170, 20), text("ENV FILTRO"), fontColour("white"), align("centre"), fontSize(15)
vslider bounds(150, 428, 34, 140), channel("fAttack"),  range(0.001, 5, 0.01, 1, 0.001), text(""), filmstrip("fader_vertical.png", 150, 0, 0), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
vslider bounds(205, 428, 34, 140), channel("fDecay"),   range(0.001, 5, 0.15, 1, 0.001), text(""), filmstrip("fader_vertical.png", 150, 0, 0), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
vslider bounds(260, 428, 34, 140), channel("fSustain"), range(0, 1, 0.5, 1, 0.001),      text(""), filmstrip("fader_vertical.png", 150, 0, 0), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
vslider bounds(315, 428, 34, 140), channel("fRelease"), range(0.001, 5, 0.20, 1, 0.001), text(""), filmstrip("fader_vertical.png", 150, 0, 0), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
label bounds(138, 576, 58, 18), text("A"), fontColour("white"), align("centre")
label bounds(193, 576, 58, 18), text("D"), fontColour("white"), align("centre")
label bounds(248, 576, 58, 18), text("S"), fontColour("white"), align("centre")
label bounds(303, 576, 58, 18), text("R"), fontColour("white"), align("centre")

; Panel de efectos
label bounds(463, 315, 180, 18), text("FX"), fontColour("white"), align("centre"), fontSize(15)
combobox bounds(417, 343, 170, 24), channel("fxType"), value(1), text("Reverberación", "Delay", "Flanger")
checkbox bounds(603, 345, 18, 18), channel("fxOn"), value(0), imgFile("on", "boton_on.png"), imgFile("off", "boton_off.png")
label    bounds(627, 342, 52, 20), text("On"), fontColour("white"), align("left")
rslider bounds(423, 381, 54, 54), channel("fxParam1"), range(0.1, 0.95, 0.75, 1, 0.001), text(""), filmstrip("hise_knob_small.png", 128), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
rslider bounds(497, 381, 54, 54), channel("fxParam2"), range(1000, 18000, 9000, 0.5, 1), text(""), filmstrip("hise_knob_small.png", 128), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
rslider bounds(571, 381, 54, 54), channel("fxParam3"), range(0, 1, 0.25, 1, 0.001), text(""), filmstrip("hise_knob_small.png", 128), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
rslider bounds(645, 381, 54, 54), channel("fxParam4"), range(0, 1, 0.25, 1, 0.001), text(""), filmstrip("hise_knob_small.png", 128), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0), identChannel("fxParam4Knob")
label bounds(413, 439, 74, 18), text("Size"), fontColour("white"), align("centre"), identChannel("fxLabel1")
label bounds(487, 439, 74, 18), text("Damp"), fontColour("white"), align("centre"), identChannel("fxLabel2")
label bounds(561, 439, 74, 18), text("Mix"),  fontColour("white"), align("centre"), identChannel("fxLabel3")
label bounds(635, 439, 74, 18), text(""),     fontColour("white"), align("centre"), identChannel("fxLabel4")

; Panel de filtro
label bounds(465, 500, 140, 18), text("FILTER"), fontColour("white"), align("centre"), fontSize(15)
combobox bounds(450, 520, 170, 24), channel("filterType"), value(1), text("Low-pass", "High-pass", "Band-pass")
rslider bounds(455, 553, 54, 54), channel("cutoff"), range(50, 12000, 3000, 0.5, 1), text(""), filmstrip("hise_knob_small.png", 128), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
label   bounds(442, 609, 80, 18), text("Cutoff"), fontColour("white"), align("centre")
rslider bounds(550, 553, 54, 54), channel("resonance"), range(0.01, 0.95, 0.2, 1, 0.001), text(""), filmstrip("hise_knob_small.png", 128), trackerColour(0,0,0,0), outlineColour(0,0,0,0), textBox(0)
label   bounds(497, 609, 160, 18), text("Resonancia"), fontColour("white"), align("centre"), identChannel("filterParam2Label")

; Visualizadores de señal y filtro
image bounds(820, 190, 245, 110), colour(0, 0, 0, 255), outlineColour(70, 0, 0, 180), corners(8)
signaldisplay bounds(828, 196, 229, 40), channel("osc-wave"), displayType("waveform"), signalVariable("aOscDisp"), updateRate(5), zoom(-1), colour(255, 60, 60, 255)
label         bounds(832, 238, 120, 16), text("Pre-envelope"), fontColour("white"), align("left"), fontSize(12)
signaldisplay bounds(828, 254, 229, 28), channel("out-wave"), displayType("waveform"), signalVariable("aSalida"), updateRate(5), zoom(-1), colour(255, 60, 60, 255)
label         bounds(832, 283, 130, 16), text("Post-envelope"), fontColour("white"), align("left"), fontSize(12)

image bounds(820, 320, 245, 140), colour(0, 0, 0, 255), outlineColour(70, 0, 0, 180), corners(8)
label         bounds(904, 326, 76, 16), text("Espectro"), fontColour("white"), align("centre"), fontSize(13)
signaldisplay bounds(828, 346, 229, 104), channel("out-spec"), displayType("spectroscope"), signalVariable("aSalG"), updateRate(1), zoom(-1), colour(255, 60, 60, 255)

image bounds(820, 470, 245, 140), colour(0, 0, 0, 255), outlineColour(70, 0, 0, 180), corners(8)
label    bounds(888, 476, 110, 16), text("Forma filtro"), fontColour("white"), align("centre"), fontSize(13)
gentable bounds(832, 498, 221, 96), tableNumber(20), identChannel("filterShape"), ampRange(0, 1, 1, 0), tableColour(255, 40, 40, 255), outlineColour(255,255,255,80), tableGridColour(0,0,0,0), tableBackgroundColour(0,0,0,255)

; Teclado MIDI virtual
keyboard bounds(128, 690, 924, 34)
</Cabbage>

<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d -B 512 -b 128 --midi-key-cps=4 --midi-velocity-amp=5 --displays
</CsOptions>

<CsInstruments>

; Parámetros globales del motor de audio
sr     = 44100
ksmps  = 32
nchnls = 2
0dbfs  = 1

; Asignación MIDI al instrumento principal
massign 0, 1

; Banco de wavetables
giWT1 ftgen 1, 0, 4096, 10, 1
giWT2 ftgen 2, 0, 4096, 10, 1, 0.5, 0.3333, 0.25, 0.2, 0.1667, 0.1429, 0.125
giWT3 ftgen 3, 0, 4096, 10, 1, 0, 0.3333, 0, 0.2, 0, 0.1429, 0, 0.1111
giWT4 ftgen 4, 0, 4096, 10, 1, 0, -0.1111, 0, 0.04, 0, -0.02041, 0, 0.01235

; Tablas auxiliares
giFilterGraph ftgen 20, 0, 512, 2, 0
giSine        ftgen 30, 0, 16384, 10, 1

; Variables globales de visualización y buses de audio
gkCutoffVis init 3000
gaBusL      init 0
gaBusR      init 0

; Estados de activación de efectos
gkRevOnMem init 0
gkDelOnMem init 0
gkFlgOnMem init 0

; Memoria de parámetros de reverberación
gkRevP1 init 0.75
gkRevP2 init 9000
gkRevP3 init 0.25

; Memoria de parámetros de delay
gkDelP1 init 0.35
gkDelP2 init 0.35
gkDelP3 init 0.25

; Memoria de parámetros de flanger
gkFlgP1 init 0.35
gkFlgP2 init 0.0025
gkFlgP3 init 0.2
gkFlgP4 init 0.25

; Flanger auxiliar con control estable de modulación, feedback y mezcla
opcode StableFlanger, a, akkkkk
    ain, krate, kdepth, kbaseDelay, kfback, kmix xin

    kfback limit kfback, -0.95, 0.95

    aLfo oscili (kdepth * 0.5), krate, giSine
    aDelay = kbaseDelay + (kdepth * 0.5) + aLfo
    aWet flanger ain, aDelay, kfback, 0.02
    aWet dcblock aWet
    aOut ntrpol ain, aWet, kmix

    xout aOut
endop

instr 96

    ; Lectura del selector de presets
    kPreset chnget "presetSelect"

    ; Detección de cambios en el preset seleccionado
    kPresetTrig changed kPreset

    ; Inicialización y aplicación de presets bajo demanda
    if (timeinsts() < 0.1) then
        chnset 1, "presetSelect"
        reinit APPLY_PRESET
    elseif (kPresetTrig == 1) then
        reinit APPLY_PRESET
    endif

    kgoto PRESET_DONE

    APPLY_PRESET:

        iPreset = i(kPreset)

        ; Preset Init
        if (iPreset == 1) then
            chnset 1, "wavetable"
            chnset 0.70, "gain"

            chnset 0.005, "attack"
            chnset 0.05,  "decay"
            chnset 0.90,  "sustain"
            chnset 0.08,  "release"

            chnset 0.01, "fAttack"
            chnset 0.15, "fDecay"
            chnset 0.50, "fSustain"
            chnset 0.20, "fRelease"

            chnset 1,    "filterType"
            chnset 3000, "cutoff"
            chnset 0.20, "resonance"

            gkRevOnMem = 0
            gkDelOnMem = 0
            gkFlgOnMem = 0

            gkRevP1 = 0.75
            gkRevP2 = 9000
            gkRevP3 = 0.25

            gkDelP1 = 0.35
            gkDelP2 = 0.35
            gkDelP3 = 0.25

            gkFlgP1 = 0.35
            gkFlgP2 = 0.0025
            gkFlgP3 = 0.20
            gkFlgP4 = 0.25

            chnset 1, "fxType"
            chnset gkRevOnMem, "fxOn"
            chnset gkRevP1, "fxParam1"
            chnset gkRevP2, "fxParam2"
            chnset gkRevP3, "fxParam3"

        ; Preset Pad
        elseif (iPreset == 2) then
            chnset 4, "wavetable"
            chnset 0.55, "gain"

            chnset 1.20, "attack"
            chnset 2.50, "decay"
            chnset 0.75, "sustain"
            chnset 2.80, "release"

            chnset 0.90, "fAttack"
            chnset 2.00, "fDecay"
            chnset 0.55, "fSustain"
            chnset 2.50, "fRelease"

            chnset 1,    "filterType"
            chnset 2200, "cutoff"
            chnset 0.18, "resonance"

            gkRevOnMem = 1
            gkDelOnMem = 0
            gkFlgOnMem = 0

            gkRevP1 = 0.88
            gkRevP2 = 7000
            gkRevP3 = 0.42

            gkDelP1 = 0.35
            gkDelP2 = 0.20
            gkDelP3 = 0.00

            gkFlgP1 = 0.30
            gkFlgP2 = 0.0015
            gkFlgP3 = 0.10
            gkFlgP4 = 0.00

            chnset 1, "fxType"
            chnset gkRevOnMem, "fxOn"
            chnset gkRevP1, "fxParam1"
            chnset gkRevP2, "fxParam2"
            chnset gkRevP3, "fxParam3"

        ; Preset Lead
        elseif (iPreset == 3) then
            chnset 2, "wavetable"
            chnset 0.78, "gain"

            chnset 0.01, "attack"
            chnset 0.18, "decay"
            chnset 0.82, "sustain"
            chnset 0.22, "release"

            chnset 0.02, "fAttack"
            chnset 0.20, "fDecay"
            chnset 0.65, "fSustain"
            chnset 0.18, "fRelease"

            chnset 1,    "filterType"
            chnset 4200, "cutoff"
            chnset 0.38, "resonance"

            gkRevOnMem = 0
            gkDelOnMem = 1
            gkFlgOnMem = 0

            gkRevP1 = 0.60
            gkRevP2 = 9000
            gkRevP3 = 0.00

            gkDelP1 = 0.24
            gkDelP2 = 0.28
            gkDelP3 = 0.22

            gkFlgP1 = 0.35
            gkFlgP2 = 0.0020
            gkFlgP3 = 0.12
            gkFlgP4 = 0.00

            chnset 2, "fxType"
            chnset gkDelOnMem, "fxOn"
            chnset gkDelP1, "fxParam1"
            chnset gkDelP2, "fxParam2"
            chnset gkDelP3, "fxParam3"

        ; Preset Pluck
        elseif (iPreset == 4) then
            chnset 3, "wavetable"
            chnset 0.78, "gain"

            chnset 0.001, "attack"
            chnset 0.18,  "decay"
            chnset 0.00,  "sustain"
            chnset 0.12,  "release"

            chnset 0.001, "fAttack"
            chnset 0.22,  "fDecay"
            chnset 0.00,  "fSustain"
            chnset 0.14,  "fRelease"

            chnset 1,    "filterType"
            chnset 2600, "cutoff"
            chnset 0.48, "resonance"

            gkRevOnMem = 0
            gkDelOnMem = 1
            gkFlgOnMem = 0

            gkRevP1 = 0.50
            gkRevP2 = 8000
            gkRevP3 = 0.00

            gkDelP1 = 0.18
            gkDelP2 = 0.20
            gkDelP3 = 0.16

            gkFlgP1 = 0.25
            gkFlgP2 = 0.0010
            gkFlgP3 = 0.10
            gkFlgP4 = 0.00

            chnset 2, "fxType"
            chnset gkDelOnMem, "fxOn"
            chnset gkDelP1, "fxParam1"
            chnset gkDelP2, "fxParam2"
            chnset gkDelP3, "fxParam3"

        ; Preset Reese Bass
        elseif (iPreset == 5) then
            chnset 2, "wavetable"
            chnset 0.82, "gain"

            chnset 0.003, "attack"
            chnset 0.18,  "decay"
            chnset 0.72,  "sustain"
            chnset 0.20,  "release"

            chnset 0.005, "fAttack"
            chnset 0.25,  "fDecay"
            chnset 0.28,  "fSustain"
            chnset 0.22,  "fRelease"

            chnset 1,   "filterType"
            chnset 900, "cutoff"
            chnset 0.55, "resonance"

            gkRevOnMem = 0
            gkDelOnMem = 0
            gkFlgOnMem = 1

            gkRevP1 = 0.60
            gkRevP2 = 9000
            gkRevP3 = 0.00

            gkDelP1 = 0.20
            gkDelP2 = 0.10
            gkDelP3 = 0.00

            gkFlgP1 = 0.18
            gkFlgP2 = 0.0015
            gkFlgP3 = 0.22
            gkFlgP4 = 0.30

            chnset 3, "fxType"
            chnset gkFlgOnMem, "fxOn"
            chnset gkFlgP1, "fxParam1"
            chnset gkFlgP2, "fxParam2"
            chnset gkFlgP3, "fxParam3"
            chnset gkFlgP4, "fxParam4"

        ; Preset Keys
        else
            chnset 1, "wavetable"
            chnset 0.72, "gain"

            chnset 0.004, "attack"
            chnset 0.40,  "decay"
            chnset 0.35,  "sustain"
            chnset 0.85,  "release"

            chnset 0.003, "fAttack"
            chnset 0.28,  "fDecay"
            chnset 0.25,  "fSustain"
            chnset 0.60,  "fRelease"

            chnset 1,    "filterType"
            chnset 4800, "cutoff"
            chnset 0.16, "resonance"

            gkRevOnMem = 1
            gkDelOnMem = 0
            gkFlgOnMem = 0

            gkRevP1 = 0.58
            gkRevP2 = 10500
            gkRevP3 = 0.20

            gkDelP1 = 0.22
            gkDelP2 = 0.10
            gkDelP3 = 0.00

            gkFlgP1 = 0.25
            gkFlgP2 = 0.0015
            gkFlgP3 = 0.08
            gkFlgP4 = 0.00

            chnset 1, "fxType"
            chnset gkRevOnMem, "fxOn"
            chnset gkRevP1, "fxParam1"
            chnset gkRevP2, "fxParam2"
            chnset gkRevP3, "fxParam3"
        endif

    rireturn

    PRESET_DONE:

endin

instr 97

    ; Lectura del selector de wavetable y de los botones de navegación
    kWT   chnget "wavetable"
    kPrev chnget "wtPrev"
    kNext chnget "wtNext"

    ; Detección de cambios en los controles de wavetable
    kPrevTrig changed kPrev
    kNextTrig changed kNext
    kWTTrig   changed kWT

    ; Inicialización del selector de wavetable
    if (timeinsts() < 0.1) then
        chnset 1, "wavetable"
    endif

    ; Navegación hacia la wavetable anterior
    if (kPrevTrig == 1 && kPrev == 1) then
        kNew = kWT - 1

        if (kNew < 1) then
            kNew = 4
        endif

        chnset kNew, "wavetable"
    endif

    ; Navegación hacia la wavetable siguiente
    if (kNextTrig == 1 && kNext == 1) then
        kNew = kWT + 1

        if (kNew > 4) then
            kNew = 1
        endif

        chnset kNew, "wavetable"
    endif

    ; Actualización de la imagen visible según la wavetable seleccionada
    if (timeinsts() < 0.1 || kWTTrig == 1 || kPrevTrig == 1 || kNextTrig == 1) then
        chnset "visible(0)", "wtImage1"
        chnset "visible(0)", "wtImage2"
        chnset "visible(0)", "wtImage3"
        chnset "visible(0)", "wtImage4"

        if (kWT == 1) then
            chnset "visible(1)", "wtImage1"
        elseif (kWT == 2) then
            chnset "visible(1)", "wtImage2"
        elseif (kWT == 3) then
            chnset "visible(1)", "wtImage3"
        else
            chnset "visible(1)", "wtImage4"
        endif
    endif

endin

instr 98

    ; Lectura de la interfaz de efectos
    kFxType chnget "fxType"
    kFxOn   chnget "fxOn"
    kP1     chnget "fxParam1"
    kP2     chnget "fxParam2"
    kP3     chnget "fxParam3"
    kP4     chnget "fxParam4"

    ; Detección de cambios en selector, activación y parámetros
    kFxTypeTrig changed kFxType
    kFxOnTrig   changed kFxOn
    kParamTrig  changed kP1, kP2, kP3, kP4

    ; Inicialización del panel FX
    if (timeinsts() < 0.1) then
        chnset 1, "fxType"
        chnset gkRevOnMem, "fxOn"
        chnset gkRevP1, "fxParam1"
        chnset gkRevP2, "fxParam2"
        chnset gkRevP3, "fxParam3"
    endif

    ; Guardado del estado on/off del efecto seleccionado
    if (kFxOnTrig == 1) then
        if (kFxType == 1) then
            gkRevOnMem = kFxOn
        elseif (kFxType == 2) then
            gkDelOnMem = kFxOn
        else
            gkFlgOnMem = kFxOn
        endif
    endif

    ; Guardado de parámetros del efecto actualmente seleccionado
    if (kParamTrig == 1) then
        if (kFxType == 1) then
            gkRevP1 = kP1
            gkRevP2 = kP2
            gkRevP3 = kP3
        elseif (kFxType == 2) then
            gkDelP1 = kP1
            gkDelP2 = kP2
            gkDelP3 = kP3
        else
            gkFlgP1 = kP1
            gkFlgP2 = kP2
            gkFlgP3 = kP3
            gkFlgP4 = kP4
        endif
    endif

    ; Actualización de controles visibles y etiquetas según el efecto seleccionado
    if (timeinsts() < 0.1 || kFxTypeTrig == 1) then

        if (kFxType == 1) then
            chnset gkRevOnMem, "fxOn"
            chnset gkRevP1, "fxParam1"
            chnset gkRevP2, "fxParam2"
            chnset gkRevP3, "fxParam3"

            chnset "text(\"Size\")", "fxLabel1"
            chnset "text(\"Damp\")", "fxLabel2"
            chnset "text(\"Mix\")",  "fxLabel3"
            chnset "text(\"\")",     "fxLabel4"
            chnset "visible(0)", "fxParam4Knob"

        elseif (kFxType == 2) then
            chnset gkDelOnMem, "fxOn"
            chnset gkDelP1, "fxParam1"
            chnset gkDelP2, "fxParam2"
            chnset gkDelP3, "fxParam3"

            chnset "text(\"Time\")",     "fxLabel1"
            chnset "text(\"Feedback\")", "fxLabel2"
            chnset "text(\"Mix\")",      "fxLabel3"
            chnset "text(\"\")",         "fxLabel4"
            chnset "visible(0)", "fxParam4Knob"

        else
            chnset gkFlgOnMem, "fxOn"
            chnset gkFlgP1, "fxParam1"
            chnset gkFlgP2, "fxParam2"
            chnset gkFlgP3, "fxParam3"
            chnset gkFlgP4, "fxParam4"

            chnset "text(\"Rate\")",     "fxLabel1"
            chnset "text(\"Depth\")",    "fxLabel2"
            chnset "text(\"Feedback\")", "fxLabel3"
            chnset "text(\"Mix\")",      "fxLabel4"
            chnset "visible(1)", "fxParam4Knob"
        endif
    endif

endin

instr 99

    ; Lectura de los parámetros del filtro para actualizar la gráfica
    kFilterType chnget "filterType"
    kCutoff     chnget "cutoff"
    kRes        chnget "resonance"

    ; Si hay voces activas, la gráfica sigue el cutoff dinámico del filtro
    kVoices active 1

    if (kVoices > 0) then
        kGraphCutoff = gkCutoffVis
    else
        kGraphCutoff = kCutoff
    endif

    ; Actualización periódica de etiqueta y representación del filtro
    kTrig metro 20

    if (kTrig == 1) then
        if (kFilterType == 3) then
            chnset "text(\"Ancho de banda\")", "filterParam2Label"
        else
            chnset "text(\"Resonancia\")", "filterParam2Label"
        endif

        reinit UPDATE_FILTER_GRAPH
    endif

    UPDATE_FILTER_GRAPH:

        iType = i(kFilterType)
        iCut  = i(kGraphCutoff)
        iRes  = i(kRes)

        iMinF = 20.0
        iMaxF = 20000.0
        iLen  = ftlen(giFilterGraph)

        iNormCut = log(iCut / iMinF) / log(iMaxF / iMinF)

        if (iNormCut < 0.02) then
            iNormCut = 0.02
        elseif (iNormCut > 0.98) then
            iNormCut = 0.98
        endif

        iSlope     = 12 + (iRes * 26)
        iBumpWidth = 0.02 + (1 - iRes) * 0.08

        indx = 0

        while (indx < iLen) do
            iX = indx / (iLen - 1.0)

            if (iType == 1) then
                iBase = 1 / (1 + exp((iX - iNormCut) * iSlope))
                iBump = iRes * 0.30 * exp(-pow((iX - iNormCut) / iBumpWidth, 2))
                iY = iBase + iBump
            elseif (iType == 2) then
                iBase = 1 - (1 / (1 + exp((iX - iNormCut) * iSlope)))
                iBump = iRes * 0.30 * exp(-pow((iX - iNormCut) / iBumpWidth, 2))
                iY = iBase + iBump
            else
                iBW = 0.025 + (1 - iRes) * 0.20
                iY  = (0.55 + iRes * 0.35) * exp(-pow((iX - iNormCut) / iBW, 2))
            endif

            iY = iY * 0.95

            if (iY > 1.0) then
                iY = 1.0
            elseif (iY < 0.0) then
                iY = 0.0
            endif

            tableiw iY, indx, giFilterGraph
            indx += 1
        od

    rireturn

    chnset "tableNumber(20)", "filterShape"

endin

instr 1

    ; Lectura de parámetros de síntesis, envolventes y filtro
    kWT         chnget "wavetable"
    kGain       chnget "gain"

    kAttack     chnget "attack"
    kDecay      chnget "decay"
    kSustain    chnget "sustain"
    kRelease    chnget "release"

    kFAttack    chnget "fAttack"
    kFDecay     chnget "fDecay"
    kFSustain   chnget "fSustain"
    kFRelease   chnget "fRelease"

    kFilterType chnget "filterType"
    kCutoff     chnget "cutoff"
    kRes        chnget "resonance"

    ; Recepción de la nota y la amplitud desde MIDI
    iFreq = p4
    iAmp  = p5

    ; Selección de la wavetable válida
    iTable = int(i(kWT))

    if (iTable < 1) then
        iTable = 1
    elseif (iTable > 4) then
        iTable = 4
    endif

    ; Generación de envolventes de amplitud y de filtro
    kEnv     madsr i(kAttack),  i(kDecay),  i(kSustain),  i(kRelease)
    kFiltEnv madsr i(kFAttack), i(kFDecay), i(kFSustain), i(kFRelease)

    ; Generación de la señal del oscilador wavetable
    aOscDisp oscili (iAmp * kGain), iFreq, iTable

    ; Cálculo del cutoff dinámico controlado por la envolvente del filtro
    kCutoffDyn = kCutoff * (0.20 + 1.80 * kFiltEnv)
    kCutoffDyn limit kCutoffDyn, 20, 20000
    gkCutoffVis = kCutoffDyn

    ; Aplicación del filtro seleccionado
    if (kFilterType == 1) then
        aFilt moogladder aOscDisp, kCutoffDyn, kRes
    elseif (kFilterType == 2) then
        aFilt bqrez aOscDisp, kCutoffDyn, kRes, 1
    else
        kBandwidth = 100 + (1 - kRes) * 5000
        aFilt butbp aOscDisp, kCutoffDyn, kBandwidth
    endif

    ; Aplicación de la envolvente de amplitud a la señal filtrada
    aSalida = aFilt * kEnv
    aSalG   = aSalida * 8

    ; Alimentación de los visualizadores temporales y espectrales
    display aOscDisp, 0.1, 1
    display aSalida,  0.1, 1
    dispfft aSalG, 0.1, 1024

    ; Envío de la señal al bus global para procesado de efectos
    gaBusL = gaBusL + aSalida
    gaBusR = gaBusR + aSalida

endin

instr 100

    ; Lectura de la señal acumulada en el bus global
    aInL = gaBusL
    aInR = gaBusR

    ; Inicialización de la señal que recorrerá la cadena de efectos
    aOutL = aInL
    aOutR = aInR

    ; Delay con control de tiempo, feedback y mezcla
    if (gkDelOnMem == 1) then
        kDelTime limit gkDelP1, 0.05, 1.5
        kDelFb   limit gkDelP2, 0.0, 0.75
        kDelMix  limit gkDelP3, 0.0, 1.0

        abufL delayr 2
        aTapL deltapi kDelTime
        aFbL  tone aTapL, 6000
              delayw aInL + (aFbL * kDelFb)

        abufR delayr 2
        aTapR deltapi kDelTime
        aFbR  tone aTapR, 6000
              delayw aInR + (aFbR * kDelFb)

        aWetL dcblock aTapL
        aWetR dcblock aTapR

        aOutL ntrpol aOutL, aWetL, kDelMix
        aOutR ntrpol aOutR, aWetR, kDelMix
    endif

    ; Flanger con control de velocidad, profundidad, feedback y mezcla
    if (gkFlgOnMem == 1) then
        kRate  limit gkFlgP1, 0.05, 5.0
        kDepth limit gkFlgP2, 0.0001, 0.008
        kFb    limit gkFlgP3, -0.95, 0.95
        kMix   limit gkFlgP4, 0.0, 1.0

        aOutL StableFlanger aOutL, kRate, kDepth, 0.003, kFb, kMix
        aOutR StableFlanger aOutR, kRate, kDepth, 0.003, kFb, kMix
    endif

    ; Reverberación con control de tamaño, damping y mezcla
    if (gkRevOnMem == 1) then
        aRevL, aRevR reverbsc aOutL, aOutR, gkRevP1, gkRevP2
        aOutL ntrpol aOutL, aRevL, gkRevP3
        aOutR ntrpol aOutR, aRevR, gkRevP3
    endif

    ; Salida final y limpieza del bus para el siguiente ciclo
    outs aOutL, aOutR
    gaBusL = 0
    gaBusR = 0

endin

</CsInstruments>

<CsScore>
; Ejecución continua e instrumentos auxiliares permanentes
f0 z
i 96 0 86400
i 97 0 86400
i 98 0 86400
i 99 0 86400
i 100 0 86400
</CsScore>

</CsoundSynthesizer>