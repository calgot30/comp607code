var preload

function init(){
    preloadAssets();
}

function preloadAssets(){
    preload = new createjs.LoadQueue();
    preload.loadFile({id:"running", src:"running.png"});
    preload.on("complete", setUpGraphics, this);
}

function setUpGraphics(){
    
    canvas = document.getElementById("slide");
    var stage = new createjs.Stage(canvas);
    canvas.style.backgroundColor = "#ffffff";

    var data = {
        images: [preload.getResult("running")],

        frames:{width:250, height:250, count:6, spacing:0, margin: 0},
        animations: {
            stand: 0,

            run:{
                frames: [1, 2, 3, 4, 5],
                speed: 0.2
            }
        }
    };



var spriteSheet = new createjs.SpriteSheet(data);
var runSprite = new createjs.Sprite(spriteSheet, "stand");

createjs.Tween.get(runSprite)
.call(function(){
    runSprite.gotoAndPlay("stand");
})
.wait(2000)
.call(function(){
    runSprite.gotoAndPlay("run");
})
.to({x:450}, 2000)
.call(function(){
    runSprite.gotoAndPlay("stand")
})

stage.addChild(runSprite);
createjs.Ticker.setFPS(60);
createjs.Ticker.addEventListener("tick", stage);

}
