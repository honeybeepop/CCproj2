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

    --fawn is there?
    function fawn1Spark()
    fawn1Show = true
    fawn1Hide = false
    fawn1Vis = random({"fawn1Show","fawn1Hide"})
    if fawn1Vis == "fawn1Show" then
        for i = 1, 5 do
       if i%3 == 0 and "fawn1Vis" == true then
            if frameCount > 12 then
                image(f1spark,0,0,width)
            end
            if frameCount >14 then
                image(f1spark,0,0,width*1.5, height*1.5)
            end
            if frameCount >16 then
                image(f1spark,0,0,width)
            end
        end
        --elseif 1%3 == 0 and fawn15 true then
        --sparkle changes on fawn15
        --elseif 1%3 == 0 and fawn2 true then
        --sparkle changes on fawn2
        end
    end
    end
end

function mousePressed()
    fawn1Spark()
end

--hi chelsea!
--im aware there are some things that don't work. i dont know why. id love to be able to make them work but ive tried everything i can think of.
--ill put a video into my repository of what its supposed to look like and if i could get some troubleshooting feedback that would be awesome
--i hate to turn in something that isnt what i need it to be but i genuinely cannot get this to work how i need it to & its driving me insane i think.