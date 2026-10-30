require("L5")

--load the image, tell it where it is
imgbg = loadImage('assets/background.jpeg')
--image will automatically set to height if you JUST put the "width" value in the img call

--setup
function setup()
    size(1000, 750)
    angleMode(DEGREES)
    windowTitle("bee larson proj 2")
    background(imgbg, 0,0)
end

function draw()
end