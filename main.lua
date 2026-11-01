require("L5")

--loading imgs
imgbg = loadImage('assets/bg-ccp2.png')
overlays = loadImage('assets/overlays-ccp2.png')
stag = loadImage('assets/stag-ccp2.png')
sblood = loadImage('assets/stagblood-ccp2.png')
ground = loadImage('assets/ground-ccp2.png')
--reticle loads
reticle = loadImage('assets/scope/reticle-ccp2.png')
north = loadImage('assets/scope/north-ccp2.png')
east = loadImage('assets/scope/east-ccp2.png')
south = loadImage('assets/scope/south-ccp2.png')
west = loadImage('assets/scope/west-ccp2.png')
scope = loadImage('assets/scope/fullscope-ccp2.png')
blank = loadImage('assets/scope/mooncover-ccp2.png')
--fawn 1 loads
fawn1 = loadImage('assets/f1/fawn1-ccp2.png')
f1spark = loadImage('assets/f1/spark-ccp2.png')
--fawn 1.5 loads
fawn15 = loadImage('assets/f1.5/fawn1.5-ccp2.png')
f15spark = loadImage('assets/f1.5/spark-ccp2.png')
--fawn 2 loads
fawn2 = loadImage('assets/f2/fawn2-ccp2.png')
f2spark = loadImage('assets/f2/spark-ccp2.png')

test = loadImage('assets/stagwbgtest.png')


--img showing tables
--sparkleSpin = {"plus", "x", "15deg"}

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

--draw constants (stag, fawn1)


--does fawn turn?

--fawn animations
function draw()
    background(test, 0)
push()
frameRate(12)
function fawnAnimation()
    if frameCount < 10 then
        image(fawn1, 0,0,width)
    end
    if frameCount > 14 then
        image(fawn15,0,0,width)
    end
    if frameCount > 16 then
        image(fawn2,0,0,width)
    end
end
pop()
end

function draw()
push()
frameRate(2)
    image(stag, 0,0, width)
    image(fawn1,0,0,width)

--is stag bloody?
sBloodShow = true
sBloodHide = false
sBloodVis = random({"sBloodShow", "sBloodHide"})
if sBloodVis == "sBloodShow" then
    image(sblood, 0,0, width)
else
    noStroke()
    fill(0,0,0,0)
    rect(0,0,200,200)
end
pop()

--scope animation
        push()
        function scopeAnimation()
            if frameCount > 0 then
                image(blank, 0,0,width)
            end
            if frameCount > 12 then
            image(reticle, 0,0, width)
            end
            if frameCount > 16 then
            image(north, 0,0,width)
            end
            if frameCount > 20 then
            image(east,0,0, width)
            end
            if frameCount > 24 then
            image(south,0,0,width)
            end
            if frameCount > 28 then
            image(west,0,0,width)
            end
            if frameCount > 32 then
            image(scope,0,0,width)
            end
        end
        pop()

--scope show/hide
  scopeShow = true
  scopeHide = false
  scopeVis = random({"scopeHide", "scopeShow"})
  if scopeVis == "scopeShow" then
    scopeAnimation()
  else
    image(blank, 0,0,width)
    end
end

function mousePressed()
    fawnAnimation()
end