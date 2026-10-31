require("L5")

--loading imgs
imgbg = loadImage('assets/bg-ccp2.png')
overlays = loadImage('assets/overlays-ccp2.png')
stag = loadImage('assets/stag-ccp2.png')
sblood = loadImage('assets/stagblood-ccp2.png')
--reticle loads
reticle = loadImage('assets/scope/scopereticle-ccp2.png')
north = loadImage('assets/scope/scopeN-ccp2.png')
east = loadImage('assets/scope/scopeE-ccp2.png')
south = loadImage('assets/scope/scopeS-ccp2.png')
west = loadImage('assets/scope/scopeW-ccp2.png')
dot = loadImage('assets/scope/scopedot-ccp2.png')
--fawn 1 loads
fawn1 = loadImage('assets/f1/fawn1-ccp2.png')
f1blood = loadImage('assets/f1/blood-ccp2.png')
f1spark = loadImage('assets/f1/spark-ccp2.png')
--fawn 1.5 loads
fawn15 = loadImage('assets/f1.5/fawn1.5-ccp2.png')
f15blood = loadImage('assets/f1.5/blood-ccp2.png')
f15spark = loadImage('assets/f1.5/spark-ccp2.png')
--fawn 2 loads
fawn2 = loadImage('assets/f2/fawn2-ccp2.png')
f2blood = loadImage('assets/f2/blood-ccp2.png')
f2spark = loadImage('assets/f2/spark-ccp2.png')

--image will automatically set to height if you JUST put the "width" value in the img call

--img showing tables
stagBlood = {"yes", "no"}

--randomization
--stag blood, one of 2
--fawnturn, one of 3
--scope, one of two options

--setup
function setup()
    size(697, 935)
    angleMode(DEGREES)
    windowTitle("bee larson, fury of Jane")
    background(imgbg, 0)
                    for i = 1,10,1 do
                    fill(47,39,51,7)
                    rect(0,0,697,935)
                    end
end

function draw()
end

function mousePressed()
    background(imgbg,0)
        for i = 1,10,1 do
            fill(47,39,51,7)
            rect(0,0,697,935)
        end
end