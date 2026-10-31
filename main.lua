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
--sparkleSpin = {"plus", "x", "15deg"}

--scope aniamtion

--fawn turn animation

--setup
function setup()
    size(697, 935)
    angleMode(DEGREES)
    colorMode(RGB)
    windowTitle("bee larson, fury of Jane")
    background(imgbg, 0)
    --overlay for loop
                    for i = 1,5,1 do
                    fill(47,39,51,5)
                    rect(0,0,697,935)
                    end
    --sparkle for loop:
 --for i = 1, 5 do
 --if i%3 == 0 and fawn1 position true then
 --sparkle changes size on fawn1
 --elseif 1%3 == 0 and fawn15 true then
 --sparkle changes on fawn15
 --elseif 1%3 == 0 and fawn2 true then
 --sparkle changes on fawn2
 --end
end

--draw constants (stag)
function draw()
    image(stag, 0,0, width)
--is stag bloody?
sBloodShow = true
sBloodHide = false
sBloodVis = random({"sBloodShow", "sBloodHide"})
if sBloodVis == "sBloodShow" then
    image(sblood, 0,0, width)
end
--scope show/hide
    frameRate(12)
  scopeShow = true
  scopeHide = false
  scopeVis = random({"scopeHide", "scopeShow"})
  if scopeVis == "scopeShow" then
    fill(100,100,100)
    rect(100,100,200,200)
  else
    fill(200,200,200)
    rect(0,0,10,10)
end
end


--bee notes:
--for loop for sparkle sizing
--scope construction and doe turn animates, dependent on random value to kickstart it
--randomness is just simple on or off values (stag blood, reticle appearance or wether the doe turns or not)