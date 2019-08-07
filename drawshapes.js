var stage;
var screen;

function init(){

    stage = new createjs.Stage("stageCanvas");
    createjs.Ticker.setFPS(60);
    createjs.Ticker.addEventListener("tick", stage);        
    setUpScreen();
}

function setUpScreen(){
screen = new createjs.Container();

    var shape1 = new createjs.Shape();
    shape1.graphics.beginFill("#ff0000").drawRect(0, 0, 40, 40);
    shape1.x = 600;
    shape1.y = 400;

    var shape2 = new createjs.Shape();
    shape2.graphics.beginFill("#115768").drawRect(0, 0, 20, 60);
    shape2.x = 70;
    shape2.y = 500;

    var shape3 = new createjs.Shape();
    shape3.graphics.beginFill("DeepSkyBlue").drawCircle(0, 0, 50);
    shape3.x = 100;
    shape3.y = 50;

    var shape4 = new createjs.Shape();
    shape4.graphics.beginFill("Red").drawPolyStar(100, 100, 50, 5, 0.6, -90);
    shape4.x = 200;
    shape4.y = 250;

    screen.moveShape1 = function(event){
       if(shape1.x > 200){
        shape1.x = shape1.x - 1;
       }
    }

    screen.rotateShape4 = function(event){
        shape4.regX = 100;
        shape4.regY = 100;
        if(shape4.rotation < 360)
        shape4.rotation = shape4.rotation + 1;
    }

    screen.addEventListener('tick', screen.moveShape1);
    screen.addEventListener('tick', screen.rotateShape4)

    screen.addChild(shape1);
    screen.addChild(shape2);
    screen.addChild(shape3);
    screen.addChild(shape4);
    stage.addChild(screen);
    

}