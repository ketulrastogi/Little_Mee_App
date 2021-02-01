(function (cjs, an) {

var p; // shortcut to reference prototypes
var lib={};var ss={};var img={};
lib.ssMetadata = [];


// symbols:



(lib.Nursery = function() {
	this.initialize(img.Nursery);
}).prototype = p = new cjs.Bitmap();
p.nominalBounds = new cjs.Rectangle(0,0,1024,768);// helper functions:

function mc_symbol_clone() {
	var clone = this._cloneProps(new this.constructor(this.mode, this.startPosition, this.loop));
	clone.gotoAndStop(this.currentFrame);
	clone.paused = this.paused;
	clone.framerate = this.framerate;
	return clone;
}

function getMCSymbolPrototype(symbol, nominalBounds, frameBounds) {
	var prototype = cjs.extend(symbol, cjs.MovieClip);
	prototype.clone = mc_symbol_clone;
	prototype.nominalBounds = nominalBounds;
	prototype.frameBounds = frameBounds;
	return prototype;
	}


(lib.title = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}
	this.frame_1 = function() {
		playSound("inst");
	}
	this.frame_191 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(1).call(this.frame_1).wait(190).call(this.frame_191).wait(1));

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill("#000000").beginStroke().moveTo(-1.2,1.2).curveTo(-1.7,0.7,-1.6,0).curveTo(-1.6,-0.6,-1.3,-1.1).curveTo(-0.8,-1.6,-0,-1.7).lineTo(0.1,-1.7).curveTo(0.6,-1.7,1,-1.4).curveTo(1.3,-1.1,1.5,-0.7).curveTo(1.6,-0.4,1.6,0).curveTo(1.6,0.7,1.2,1.1).curveTo(0.8,1.6,0.1,1.7).curveTo(-0.8,1.6,-1.2,1.2).closePath();
	this.shape.setTransform(191.8,6.925);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#000000").beginStroke().moveTo(-2.9,6.4).lineTo(-4.4,6).lineTo(-4.6,4.3).lineTo(-4.8,2.6).lineTo(-4,2.4).lineTo(-3.2,2.3).lineTo(-2.9,4.2).lineTo(-2.8,4.5).lineTo(-2.6,4.6).curveTo(-2.3,4.9,-1.7,5).lineTo(-0.5,5.3).lineTo(0.7,5.1).curveTo(1.3,5,1.7,4.8).curveTo(2.1,4.5,2.3,4.1).curveTo(2.6,3.7,2.6,3).curveTo(2.6,2.3,2.3,1.9).curveTo(1.9,1.5,1.2,1.2).lineTo(-0.8,0.5).curveTo(-2.6,0,-3.4,-0.7).curveTo(-4.2,-1.6,-4.2,-2.8).curveTo(-4.2,-3.9,-3.6,-4.6).curveTo(-3.1,-5.4,-2.3,-5.9).curveTo(-1.6,-6.2,-0.7,-6.4).curveTo(0.2,-6.6,1.3,-6.6).curveTo(2.5,-6.6,3.2,-6.4).lineTo(4.2,-6.1).lineTo(4.4,-4.4).lineTo(4.5,-2.7).lineTo(3.8,-2.6).lineTo(3,-2.5).lineTo(2.6,-4.4).lineTo(2.5,-4.6).lineTo(2.4,-4.8).curveTo(2.1,-5,1.6,-5.1).curveTo(1.1,-5.3,0.6,-5.2).curveTo(0,-5.2,-0.5,-5.1).lineTo(-1.3,-4.6).curveTo(-1.6,-4.4,-1.8,-4.1).curveTo(-2,-3.7,-2,-3.1).curveTo(-2,-2.5,-1.8,-2.2).curveTo(-1.5,-1.8,-0.9,-1.6).curveTo(-0.2,-1.3,1,-0.9).lineTo(2.9,-0.3).curveTo(3.8,0.2,4.3,0.9).curveTo(4.8,1.5,4.8,2.7).curveTo(4.8,3.7,4.3,4.5).curveTo(3.8,5.3,2.9,5.8).curveTo(2.3,6.3,1.3,6.4).curveTo(0.4,6.6,-0.7,6.6).curveTo(-2,6.6,-2.9,6.4).closePath();
	this.shape_1.setTransform(181.825,2);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#000000").beginStroke().moveTo(-4.8,5.8).lineTo(-4.8,5.2).lineTo(-3.1,5.1).lineTo(-3,5).lineTo(-3,5).lineTo(-3,1.9).lineTo(-3,-1.4).lineTo(-3,-4.4).lineTo(-5.1,-4.4).lineTo(-5.1,-5.1).lineTo(-5.1,-5.7).lineTo(-4,-5.9).lineTo(-2.7,-6.1).lineTo(-1.5,-6.4).lineTo(-1,-6.5).lineTo(-1,-6.4).lineTo(-1,-6.4).lineTo(-0.9,-4.7).lineTo(-0.8,-2.3).lineTo(-0.6,-2.3).curveTo(0.2,-4,0.8,-4.9).curveTo(1.5,-5.8,2.2,-6.2).curveTo(2.7,-6.5,3.4,-6.5).lineTo(4.3,-6.4).lineTo(5.1,-6.1).lineTo(5,-5.3).lineTo(4.7,-4.5).lineTo(4.3,-3.9).lineTo(3.6,-4.1).lineTo(2.8,-4.2).lineTo(2.4,-4.1).lineTo(1.7,-3.7).lineTo(0.8,-2.7).curveTo(0.4,-2,-0.2,-0.9).curveTo(-0.5,-0.4,-0.6,0.4).lineTo(-0.7,1.8).lineTo(-0.8,3.5).lineTo(-0.8,5.1).lineTo(2.1,5.1).lineTo(2.1,5.8).lineTo(2.1,6.4).lineTo(0.3,6.4).lineTo(-1.8,6.4).lineTo(-3.3,6.4).lineTo(-4.8,6.5).lineTo(-4.8,5.8).closePath();
	this.shape_2.setTransform(170.8,1.875);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#000000").beginStroke().moveTo(-2.8,5.8).curveTo(-4.2,5,-4.8,3.7).curveTo(-5.6,2.4,-5.6,0.5).curveTo(-5.6,-1.4,-4.8,-3.1).curveTo(-3.9,-4.6,-2.6,-5.6).curveTo(-1.1,-6.6,0.8,-6.6).curveTo(2,-6.6,2.9,-6.2).curveTo(3.8,-5.8,4.4,-5.1).curveTo(5,-4.3,5.3,-3.2).curveTo(5.5,-2.2,5.5,-1.2).lineTo(5.1,-0.5).curveTo(4.8,-0.1,4.5,-0).lineTo(2.8,-0).lineTo(0.7,-0).lineTo(-1.3,0.1).lineTo(-3.1,0.1).curveTo(-3.1,2.5,-2.1,3.7).curveTo(-1.5,4.5,-0.7,4.8).curveTo(0.1,5,0.9,4.9).curveTo(2,4.9,3.1,4.7).lineTo(5,4).lineTo(5.1,4.7).lineTo(5.3,5.4).curveTo(4,5.9,2.7,6.3).curveTo(1.5,6.6,0.5,6.6).curveTo(-1.4,6.6,-2.8,5.8).closePath().moveTo(-0.8,-5).curveTo(-1.4,-4.7,-1.8,-4.3).lineTo(-2.5,-3.2).curveTo(-2.9,-2.5,-3,-1.4).lineTo(-1.1,-1.4).lineTo(0.9,-1.4).lineTo(2.8,-1.5).lineTo(3.2,-1.5).lineTo(3.3,-1.7).curveTo(3.2,-2.6,3,-3.2).curveTo(2.7,-3.9,2.4,-4.3).curveTo(2.1,-4.7,1.6,-5).curveTo(1.2,-5.2,0.5,-5.2).curveTo(-0.3,-5.2,-0.8,-5).closePath();
	this.shape_3.setTransform(158.2,2);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#000000").beginStroke().moveTo(-0.6,8.3).curveTo(-1.2,8.1,-1.9,7.6).curveTo(-2.4,7,-2.5,6.5).curveTo(-2.7,5.9,-2.7,5.3).lineTo(-2.6,3.6).lineTo(-2.6,1.8).lineTo(-2.6,0.6).lineTo(-2.6,-0.6).lineTo(-2.6,-1.8).lineTo(-2.6,-2.8).lineTo(-3.6,-2.8).lineTo(-4.7,-2.8).lineTo(-4.7,-3.6).lineTo(-4.6,-4.3).lineTo(-3.7,-4.3).lineTo(-2.7,-4.4).lineTo(-2.6,-4.4).lineTo(-2.5,-4.6).lineTo(-2.5,-6).lineTo(-2.4,-7.4).lineTo(-1.5,-7.9).lineTo(-0.7,-8.2).lineTo(-0.3,-8.4).lineTo(-0.2,-8.4).lineTo(-0.3,-6.5).lineTo(-0.3,-4.4).lineTo(2.1,-4.4).lineTo(4.4,-4.4).lineTo(4.4,-3.6).lineTo(4.4,-2.9).lineTo(2.2,-2.9).lineTo(-0.3,-2.9).lineTo(-0.3,-2.1).lineTo(-0.3,-0.7).lineTo(-0.3,0.4).lineTo(-0.3,2.6).lineTo(-0.3,4.9).curveTo(-0.3,5.8,0.2,6.3).curveTo(0.8,6.8,1.6,6.7).lineTo(2.9,6.6).lineTo(4.5,6.3).lineTo(4.6,6.9).lineTo(4.7,7.6).curveTo(3.6,8,2.5,8.2).curveTo(1.3,8.4,0.5,8.4).lineTo(-0.6,8.3).closePath();
	this.shape_4.setTransform(146.475,0.2);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#000000").beginStroke().moveTo(-0.6,8.3).curveTo(-1.2,8.1,-1.9,7.6).curveTo(-2.4,7,-2.5,6.5).curveTo(-2.7,5.9,-2.7,5.3).lineTo(-2.6,3.6).lineTo(-2.6,1.8).lineTo(-2.6,0.6).lineTo(-2.6,-0.6).lineTo(-2.6,-1.8).lineTo(-2.6,-2.8).lineTo(-3.6,-2.8).lineTo(-4.7,-2.8).lineTo(-4.7,-3.6).lineTo(-4.6,-4.3).lineTo(-3.7,-4.3).lineTo(-2.7,-4.4).lineTo(-2.6,-4.4).lineTo(-2.5,-4.6).lineTo(-2.5,-6).lineTo(-2.4,-7.4).lineTo(-1.5,-7.9).lineTo(-0.7,-8.2).lineTo(-0.3,-8.4).lineTo(-0.2,-8.4).lineTo(-0.3,-6.5).lineTo(-0.3,-4.4).lineTo(2.1,-4.4).lineTo(4.4,-4.4).lineTo(4.4,-3.6).lineTo(4.4,-2.9).lineTo(2.2,-2.9).lineTo(-0.3,-2.9).lineTo(-0.3,-2.1).lineTo(-0.3,-0.7).lineTo(-0.3,0.4).lineTo(-0.3,2.6).lineTo(-0.3,4.9).curveTo(-0.3,5.8,0.2,6.3).curveTo(0.8,6.8,1.6,6.7).lineTo(2.9,6.6).lineTo(4.5,6.3).lineTo(4.6,6.9).lineTo(4.7,7.6).curveTo(3.6,8,2.5,8.2).curveTo(1.3,8.4,0.5,8.4).lineTo(-0.6,8.3).closePath();
	this.shape_5.setTransform(135.775,0.2);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#000000").beginStroke().moveTo(-2.8,5.8).curveTo(-4.2,5,-4.8,3.7).curveTo(-5.6,2.4,-5.5,0.5).curveTo(-5.6,-1.4,-4.7,-3.1).curveTo(-4,-4.6,-2.6,-5.6).curveTo(-1.1,-6.6,0.8,-6.6).curveTo(2,-6.6,2.9,-6.2).curveTo(3.8,-5.8,4.4,-5.1).curveTo(5,-4.3,5.3,-3.2).curveTo(5.5,-2.2,5.5,-1.2).lineTo(5.1,-0.5).curveTo(4.8,-0.1,4.5,-0).lineTo(2.8,-0).lineTo(0.7,-0).lineTo(-1.3,0.1).lineTo(-3.1,0.1).curveTo(-3.1,2.5,-2.1,3.7).curveTo(-1.5,4.5,-0.7,4.8).curveTo(0.1,5,0.9,4.9).curveTo(2,4.9,3.1,4.7).lineTo(5,4).lineTo(5.2,4.7).lineTo(5.3,5.4).curveTo(4,5.9,2.7,6.3).curveTo(1.5,6.6,0.5,6.6).curveTo(-1.4,6.6,-2.8,5.8).closePath().moveTo(-0.8,-5).curveTo(-1.3,-4.7,-1.8,-4.3).lineTo(-2.5,-3.2).curveTo(-2.9,-2.5,-3,-1.4).lineTo(-1.1,-1.4).lineTo(0.9,-1.4).lineTo(2.8,-1.5).lineTo(3.2,-1.5).lineTo(3.3,-1.7).curveTo(3.2,-2.6,3,-3.2).curveTo(2.8,-3.9,2.5,-4.3).curveTo(2.1,-4.7,1.6,-5).curveTo(1.2,-5.2,0.5,-5.2).curveTo(-0.3,-5.2,-0.8,-5).closePath();
	this.shape_6.setTransform(123.45,2);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.beginFill("#000000").beginStroke().moveTo(-3.2,9.9).lineTo(-3.2,9.2).lineTo(-1.2,9.1).lineTo(-1.2,9.1).lineTo(-1.2,9).lineTo(-1.1,3.3).lineTo(-1.1,-2.8).lineTo(-1.1,-8.5).lineTo(-3.5,-8.5).lineTo(-3.5,-9.2).lineTo(-3.5,-9.9).lineTo(-2.2,-10).lineTo(-0.7,-10.2).lineTo(0.6,-10.5).lineTo(1.2,-10.6).lineTo(1.3,-10.5).lineTo(1.3,-10.4).lineTo(1.3,-5.9).lineTo(1.2,-0.9).lineTo(1.2,4.3).lineTo(1.2,9.1).lineTo(3.5,9.2).lineTo(3.5,9.9).lineTo(3.4,10.5).lineTo(1.8,10.5).lineTo(0,10.5).lineTo(-1.7,10.5).lineTo(-3.2,10.6).lineTo(-3.2,9.9).closePath();
	this.shape_7.setTransform(112.85,-2.2);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.beginFill("#000000").beginStroke().moveTo(-2.8,5.8).curveTo(-4.1,5,-4.9,3.7).curveTo(-5.5,2.4,-5.6,0.5).curveTo(-5.5,-1.4,-4.8,-3.1).curveTo(-3.9,-4.6,-2.5,-5.6).curveTo(-1.1,-6.6,0.8,-6.6).curveTo(2,-6.6,2.9,-6.2).curveTo(3.8,-5.8,4.4,-5.1).curveTo(5,-4.3,5.3,-3.2).curveTo(5.6,-2.2,5.6,-1.2).lineTo(5,-0.5).curveTo(4.7,-0.1,4.5,-0).lineTo(2.9,-0).lineTo(0.7,-0).lineTo(-1.3,0.1).lineTo(-3.1,0.1).curveTo(-3.1,2.5,-2.1,3.7).curveTo(-1.4,4.5,-0.7,4.8).curveTo(0.1,5,1,4.9).curveTo(2,4.9,3.1,4.7).lineTo(4.9,4).lineTo(5.1,4.7).lineTo(5.3,5.4).curveTo(4,5.9,2.8,6.3).curveTo(1.5,6.6,0.5,6.6).curveTo(-1.5,6.6,-2.8,5.8).closePath().moveTo(-0.8,-5).curveTo(-1.3,-4.7,-1.7,-4.3).lineTo(-2.5,-3.2).curveTo(-2.9,-2.5,-3,-1.4).lineTo(-1.1,-1.4).lineTo(1,-1.4).lineTo(2.9,-1.5).lineTo(3.2,-1.5).lineTo(3.2,-1.7).curveTo(3.3,-2.6,3,-3.2).curveTo(2.7,-3.9,2.4,-4.3).curveTo(2.1,-4.7,1.6,-5).curveTo(1.1,-5.2,0.5,-5.2).curveTo(-0.3,-5.2,-0.8,-5).closePath();
	this.shape_8.setTransform(95.85,2);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.beginFill("#000000").beginStroke().moveTo(1.5,9.9).lineTo(1.5,9.2).lineTo(3.3,9.1).lineTo(3.3,9.1).lineTo(3.4,9).lineTo(3.4,7.2).lineTo(3.4,5.3).lineTo(3.4,3.6).lineTo(3.3,1.7).curveTo(3.3,0.9,2.9,0.3).curveTo(2.5,-0.2,2,-0.4).lineTo(1,-0.6).curveTo(0.1,-0.6,-1,-0.1).curveTo(-2.1,0.4,-3.1,1).lineTo(-3.1,3.7).lineTo(-3.1,6.5).lineTo(-3.1,9.1).lineTo(-0.8,9.2).lineTo(-0.8,9.9).lineTo(-0.9,10.5).lineTo(-2.5,10.5).lineTo(-4.3,10.5).lineTo(-5.8,10.5).lineTo(-7.2,10.6).lineTo(-7.2,9.9).lineTo(-7.2,9.2).lineTo(-5.5,9.1).lineTo(-5.4,9.1).lineTo(-5.4,9).lineTo(-5.4,3.3).lineTo(-5.4,-2.8).lineTo(-5.4,-8.5).lineTo(-7.6,-8.5).lineTo(-7.6,-9.2).lineTo(-7.6,-9.8).lineTo(-6.4,-10).lineTo(-5,-10.2).lineTo(-3.7,-10.5).lineTo(-3.1,-10.6).lineTo(-3,-10.5).lineTo(-3,-10.4).lineTo(-3,-7.3).lineTo(-3.1,-4).lineTo(-3.1,-0.7).lineTo(-3,-0.6).lineTo(-0.5,-1.9).curveTo(0.3,-2.2,0.9,-2.3).lineTo(1.9,-2.4).curveTo(3.1,-2.4,3.9,-1.8).curveTo(4.8,-1.1,5.3,-0.2).curveTo(5.5,0.2,5.6,0.8).lineTo(5.7,2).lineTo(5.7,5.5).lineTo(5.6,9.1).lineTo(7.6,9.2).lineTo(7.6,9.9).lineTo(7.6,10.5).lineTo(6.1,10.5).lineTo(4.5,10.5).lineTo(3,10.5).lineTo(1.5,10.6).lineTo(1.5,9.9).closePath();
	this.shape_9.setTransform(80.8125,-2.2);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.beginFill("#000000").beginStroke().moveTo(-0.6,8.3).curveTo(-1.2,8.1,-1.9,7.6).curveTo(-2.4,7,-2.5,6.5).curveTo(-2.7,5.9,-2.7,5.3).lineTo(-2.6,3.6).lineTo(-2.6,1.8).lineTo(-2.6,0.6).lineTo(-2.6,-0.6).lineTo(-2.6,-1.8).lineTo(-2.6,-2.8).lineTo(-3.6,-2.8).lineTo(-4.7,-2.8).lineTo(-4.7,-3.6).lineTo(-4.6,-4.3).lineTo(-3.7,-4.3).lineTo(-2.7,-4.4).lineTo(-2.6,-4.4).lineTo(-2.5,-4.6).lineTo(-2.5,-6).lineTo(-2.4,-7.4).lineTo(-1.5,-7.9).lineTo(-0.7,-8.2).lineTo(-0.3,-8.4).lineTo(-0.2,-8.4).lineTo(-0.3,-6.5).lineTo(-0.3,-4.4).lineTo(2.1,-4.4).lineTo(4.4,-4.4).lineTo(4.4,-3.6).lineTo(4.4,-2.9).lineTo(2.2,-2.9).lineTo(-0.3,-2.9).lineTo(-0.3,-2.1).lineTo(-0.3,-0.7).lineTo(-0.3,0.4).lineTo(-0.3,2.6).lineTo(-0.3,4.9).curveTo(-0.3,5.8,0.2,6.3).curveTo(0.8,6.8,1.6,6.7).lineTo(2.9,6.6).lineTo(4.5,6.3).lineTo(4.6,6.9).lineTo(4.7,7.6).curveTo(3.6,8,2.5,8.2).curveTo(1.3,8.4,0.5,8.4).lineTo(-0.6,8.3).closePath();
	this.shape_10.setTransform(67.675,0.2);

	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.beginFill("#000000").beginStroke().moveTo(3.1,10.2).lineTo(2.7,9.3).lineTo(2.5,9.3).curveTo(1.3,10,0.5,10.2).lineTo(-0.7,10.6).lineTo(-1.7,10.7).curveTo(-2.7,10.7,-3.7,10.3).curveTo(-4.6,9.9,-5.3,9.2).curveTo(-6.2,8.4,-6.6,7.2).curveTo(-7.1,6.1,-7.1,4.6).curveTo(-7.1,3.2,-6.5,1.8).curveTo(-6,0.5,-5.1,-0.6).curveTo(-4.3,-1.5,-3.2,-2).curveTo(-2,-2.5,-0.6,-2.5).curveTo(0.2,-2.5,1,-2.4).lineTo(2.4,-1.9).lineTo(2.5,-2).lineTo(2.5,-5.3).lineTo(2.4,-8.6).lineTo(-0.1,-8.6).lineTo(-0.1,-9.3).lineTo(-0,-9.9).lineTo(1.3,-10.1).lineTo(2.8,-10.4).lineTo(4.1,-10.6).lineTo(4.7,-10.7).lineTo(4.8,-10.6).lineTo(4.8,-10.5).lineTo(4.8,-6.1).lineTo(4.8,-1.3).lineTo(4.7,3.7).lineTo(4.7,8.4).lineTo(4.8,8.8).curveTo(4.8,8.9,4.8,8.9).curveTo(4.9,8.9,4.9,8.9).curveTo(4.9,9,5,9).curveTo(5,9,5,9).lineTo(7.1,8.9).lineTo(7.1,9.5).lineTo(7.1,10.2).lineTo(6.2,10.4).lineTo(4.9,10.6).lineTo(3.6,10.7).lineTo(3.1,10.2).closePath().moveTo(-2.2,-0.6).curveTo(-3,-0.3,-3.5,0.5).curveTo(-4,1.2,-4.3,2.1).curveTo(-4.6,3.1,-4.6,4.4).curveTo(-4.6,5.5,-4.4,6.3).curveTo(-4.1,7.2,-3.6,7.9).curveTo(-3.1,8.5,-2.5,8.8).curveTo(-1.8,9.1,-1.1,9.1).curveTo(-0.1,9.1,0.7,8.8).curveTo(1.5,8.4,2.3,7.9).lineTo(2.4,7.8).lineTo(2.4,7.5).lineTo(2.4,3.5).lineTo(2.4,-0.2).curveTo(1.8,-0.6,1,-0.8).curveTo(0.3,-1,-0.5,-1).curveTo(-1.4,-1,-2.2,-0.6).closePath();
	this.shape_11.setTransform(48.125,-2.075);

	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.beginFill("#000000").beginStroke().moveTo(1.6,5.8).lineTo(1.6,5.2).lineTo(3.3,5.1).lineTo(3.4,5).lineTo(3.4,5).lineTo(3.5,2.3).lineTo(3.5,-0.5).lineTo(3.4,-2.2).curveTo(3.4,-3,3.1,-3.5).curveTo(2.6,-4.3,2.1,-4.5).curveTo(1.6,-4.7,1,-4.7).curveTo(0.2,-4.7,-0.9,-4.2).curveTo(-2,-3.7,-2.9,-2.9).lineTo(-3,-0.3).lineTo(-3,2.5).lineTo(-3,5).lineTo(-0.9,5.1).lineTo(-0.9,5.8).lineTo(-0.9,6.4).lineTo(-2.5,6.4).lineTo(-4.3,6.4).lineTo(-5.7,6.4).lineTo(-7.2,6.5).lineTo(-7.2,5.8).lineTo(-7.2,5.1).lineTo(-5.4,5).lineTo(-5.3,5).lineTo(-5.3,4.9).lineTo(-5.3,-4.4).lineTo(-7.6,-4.4).lineTo(-7.6,-5).lineTo(-7.6,-5.7).lineTo(-6.4,-5.9).lineTo(-5.1,-6.1).lineTo(-4,-6.4).lineTo(-3.4,-6.5).lineTo(-3.4,-6.4).lineTo(-3.4,-6.4).lineTo(-3.2,-5.4).lineTo(-3,-4.6).lineTo(-2.9,-4.6).lineTo(-0.6,-5.9).curveTo(0.3,-6.3,0.8,-6.4).lineTo(2,-6.5).curveTo(2.8,-6.5,3.4,-6.2).curveTo(4,-5.9,4.5,-5.4).lineTo(5.2,-4.5).curveTo(5.5,-3.9,5.7,-3.3).lineTo(5.8,-2.2).lineTo(5.8,0.1).lineTo(5.8,2.6).lineTo(5.7,5).lineTo(7.6,5.1).lineTo(7.6,5.8).lineTo(7.6,6.4).lineTo(6.1,6.4).lineTo(4.5,6.4).lineTo(3,6.4).lineTo(1.6,6.5).lineTo(1.6,5.8).closePath();
	this.shape_12.setTransform(31.475,1.875);

	this.shape_13 = new cjs.Shape();
	this.shape_13.graphics.beginFill("#000000").beginStroke().moveTo(-3.1,8.8).lineTo(-3.1,8.2).lineTo(-1.1,8.1).lineTo(-1,8.1).lineTo(-1,8).lineTo(-1,-1.4).lineTo(-3.3,-1.5).lineTo(-3.3,-2.1).lineTo(-3.3,-2.7).lineTo(-2.1,-2.9).lineTo(-0.6,-3.2).lineTo(0.6,-3.4).lineTo(1.2,-3.4).lineTo(1.3,-3.4).lineTo(1.3,-3.4).lineTo(1.3,0.3).lineTo(1.3,4.5).lineTo(1.2,8.1).lineTo(3.3,8.2).lineTo(3.3,8.8).lineTo(3.3,9.4).lineTo(1.7,9.4).lineTo(-0,9.4).lineTo(-1.6,9.4).lineTo(-3.1,9.5).lineTo(-3.1,8.8).closePath().moveTo(-1.2,-6.8).curveTo(-1.7,-7.3,-1.7,-7.9).curveTo(-1.7,-8.5,-1.3,-9).curveTo(-0.8,-9.5,-0,-9.5).lineTo(0,-9.5).curveTo(0.8,-9.5,1.2,-9).curveTo(1.5,-8.5,1.5,-7.9).curveTo(1.5,-7.3,1.1,-6.8).curveTo(0.6,-6.3,-0.1,-6.3).curveTo(-0.8,-6.3,-1.2,-6.8).closePath();
	this.shape_13.setTransform(19.225,-1.15);

	this.shape_14 = new cjs.Shape();
	this.shape_14.graphics.beginFill("#000000").beginStroke().moveTo(-4.8,9.6).lineTo(-4.8,8.9).lineTo(-3,8.8).lineTo(-3,8.8).lineTo(-2.9,8.7).lineTo(-2.9,3.9).lineTo(-2.9,-0.8).lineTo(-4,-0.8).lineTo(-5.2,-0.8).lineTo(-5.2,-1.6).lineTo(-5.2,-2.3).lineTo(-4.1,-2.3).lineTo(-3.1,-2.3).lineTo(-3,-2.4).lineTo(-2.9,-2.5).curveTo(-2.9,-4.1,-2.8,-5.1).curveTo(-2.6,-6.2,-2.3,-6.8).curveTo(-1.9,-7.5,-1.3,-8.1).curveTo(-0.1,-9.4,1,-9.8).curveTo(2.2,-10.3,3.2,-10.3).lineTo(4.3,-10.2).lineTo(5.2,-9.9).curveTo(5.2,-9.6,5,-9.2).lineTo(4.6,-8.5).lineTo(4.2,-8).lineTo(3.4,-8.2).lineTo(2.2,-8.4).curveTo(1.7,-8.4,1.2,-8.2).curveTo(0.6,-8,0.3,-7.5).curveTo(-0.1,-7.1,-0.3,-6.5).curveTo(-0.5,-6,-0.5,-5).curveTo(-0.6,-4,-0.6,-2.3).lineTo(1.6,-2.3).lineTo(3.7,-2.3).lineTo(3.7,-1.6).lineTo(3.7,-0.8).lineTo(2.3,-0.8).lineTo(0.8,-0.8).lineTo(-0.6,-0.8).lineTo(-0.6,2.3).lineTo(-0.6,5.6).lineTo(-0.7,8.8).lineTo(2.3,8.9).lineTo(2.3,9.6).lineTo(2.2,10.2).lineTo(0.3,10.2).lineTo(-1.8,10.2).lineTo(-3.3,10.2).lineTo(-4.8,10.3).lineTo(-4.8,9.6).closePath();
	this.shape_14.setTransform(10.975,-1.925);

	this.shape_15 = new cjs.Shape();
	this.shape_15.graphics.beginFill("#000000").beginStroke().moveTo(-0.3,6.6).curveTo(-1.5,6.6,-2.6,6.3).curveTo(-3.6,5.9,-4.4,5.2).curveTo(-5.3,4.3,-5.8,3.1).curveTo(-6.3,1.8,-6.3,0.3).curveTo(-6.3,-1.3,-5.7,-2.7).curveTo(-5.1,-4.2,-3.8,-5.2).curveTo(-3,-6,-1.9,-6.3).curveTo(-0.8,-6.6,0.3,-6.6).curveTo(1.3,-6.6,2.3,-6.3).curveTo(3.2,-6.1,4,-5.5).curveTo(5.1,-4.6,5.7,-3.4).curveTo(6.3,-2.1,6.3,-0.3).curveTo(6.3,1.5,5.6,2.9).curveTo(4.9,4.4,3.8,5.4).curveTo(2.9,6,1.9,6.3).curveTo(1,6.6,-0.2,6.6).closePath().moveTo(-1.2,-5.1).curveTo(-1.9,-4.8,-2.4,-4.3).curveTo(-3.2,-3.5,-3.5,-2.5).curveTo(-3.8,-1.3,-3.8,0.1).curveTo(-3.8,1.5,-3.5,2.5).curveTo(-3.2,3.5,-2.4,4.3).curveTo(-2,4.8,-1.4,5).curveTo(-0.8,5.3,-0,5.3).curveTo(0.7,5.3,1.3,5).curveTo(1.9,4.8,2.5,4.3).curveTo(3.2,3.5,3.5,2.4).curveTo(3.8,1.4,3.8,-0.1).curveTo(3.8,-1.4,3.5,-2.5).curveTo(3.2,-3.4,2.6,-4.2).curveTo(2.1,-4.7,1.4,-5.1).curveTo(0.8,-5.3,0.1,-5.3).curveTo(-0.6,-5.3,-1.2,-5.1).closePath();
	this.shape_15.setTransform(-9.175,2);

	this.shape_16 = new cjs.Shape();
	this.shape_16.graphics.beginFill("#000000").beginStroke().moveTo(-0.6,8.3).curveTo(-1.2,8.1,-1.9,7.6).curveTo(-2.4,7,-2.5,6.5).curveTo(-2.7,5.9,-2.7,5.3).lineTo(-2.6,3.6).lineTo(-2.6,1.8).lineTo(-2.6,0.6).lineTo(-2.6,-0.6).lineTo(-2.6,-1.8).lineTo(-2.6,-2.8).lineTo(-3.6,-2.8).lineTo(-4.7,-2.8).lineTo(-4.7,-3.6).lineTo(-4.6,-4.3).lineTo(-3.7,-4.3).lineTo(-2.7,-4.4).lineTo(-2.6,-4.4).lineTo(-2.5,-4.6).lineTo(-2.5,-6).lineTo(-2.4,-7.4).lineTo(-1.5,-7.9).lineTo(-0.7,-8.2).lineTo(-0.3,-8.4).lineTo(-0.2,-8.4).lineTo(-0.3,-6.5).lineTo(-0.3,-4.4).lineTo(2.1,-4.4).lineTo(4.4,-4.4).lineTo(4.4,-3.6).lineTo(4.4,-2.9).lineTo(2.2,-2.9).lineTo(-0.3,-2.9).lineTo(-0.3,-2.1).lineTo(-0.3,-0.7).lineTo(-0.3,0.4).lineTo(-0.3,2.6).lineTo(-0.3,4.9).curveTo(-0.3,5.8,0.2,6.3).curveTo(0.8,6.8,1.6,6.7).lineTo(2.9,6.6).lineTo(4.5,6.3).lineTo(4.6,6.9).lineTo(4.7,7.6).curveTo(3.6,8,2.5,8.2).curveTo(1.3,8.4,0.5,8.4).lineTo(-0.6,8.3).closePath();
	this.shape_16.setTransform(-21.725,0.2);

	this.shape_17 = new cjs.Shape();
	this.shape_17.graphics.beginFill("#000000").beginStroke().moveTo(-2.9,6.4).lineTo(-4.4,6).lineTo(-4.6,4.3).lineTo(-4.8,2.6).lineTo(-4,2.4).lineTo(-3.2,2.3).lineTo(-2.9,4.2).lineTo(-2.8,4.5).lineTo(-2.6,4.6).curveTo(-2.3,4.9,-1.7,5).lineTo(-0.5,5.3).lineTo(0.7,5.1).curveTo(1.3,5,1.7,4.8).curveTo(2.1,4.5,2.3,4.1).curveTo(2.6,3.7,2.6,3).curveTo(2.6,2.3,2.3,1.9).curveTo(1.9,1.5,1.2,1.2).lineTo(-0.8,0.5).curveTo(-2.6,0,-3.4,-0.7).curveTo(-4.2,-1.6,-4.2,-2.8).curveTo(-4.2,-3.9,-3.6,-4.6).curveTo(-3.1,-5.4,-2.3,-5.9).curveTo(-1.6,-6.2,-0.7,-6.4).curveTo(0.2,-6.6,1.3,-6.6).curveTo(2.5,-6.6,3.2,-6.4).lineTo(4.2,-6.1).lineTo(4.4,-4.4).lineTo(4.5,-2.7).lineTo(3.8,-2.6).lineTo(3,-2.5).lineTo(2.6,-4.4).lineTo(2.5,-4.6).lineTo(2.4,-4.8).curveTo(2.1,-5,1.6,-5.1).curveTo(1.1,-5.3,0.6,-5.2).curveTo(0,-5.2,-0.5,-5.1).lineTo(-1.3,-4.6).curveTo(-1.6,-4.4,-1.8,-4.1).curveTo(-2,-3.7,-2,-3.1).curveTo(-2,-2.5,-1.8,-2.2).curveTo(-1.5,-1.8,-0.9,-1.6).curveTo(-0.2,-1.3,1,-0.9).lineTo(2.9,-0.3).curveTo(3.8,0.2,4.3,0.9).curveTo(4.8,1.5,4.8,2.7).curveTo(4.8,3.7,4.3,4.5).curveTo(3.8,5.3,2.9,5.8).curveTo(2.3,6.3,1.3,6.4).curveTo(0.4,6.6,-0.7,6.6).curveTo(-2,6.6,-2.9,6.4).closePath();
	this.shape_17.setTransform(-40.075,2);

	this.shape_18 = new cjs.Shape();
	this.shape_18.graphics.beginFill("#000000").beginStroke().moveTo(-0.6,8.3).curveTo(-1.2,8.1,-1.9,7.6).curveTo(-2.4,7,-2.5,6.5).curveTo(-2.7,5.9,-2.7,5.3).lineTo(-2.6,3.6).lineTo(-2.6,1.8).lineTo(-2.6,0.6).lineTo(-2.6,-0.6).lineTo(-2.6,-1.8).lineTo(-2.6,-2.8).lineTo(-3.6,-2.8).lineTo(-4.7,-2.8).lineTo(-4.7,-3.6).lineTo(-4.6,-4.3).lineTo(-3.7,-4.3).lineTo(-2.7,-4.4).lineTo(-2.6,-4.4).lineTo(-2.5,-4.6).lineTo(-2.5,-6).lineTo(-2.4,-7.4).lineTo(-1.5,-7.9).lineTo(-0.7,-8.2).lineTo(-0.3,-8.4).lineTo(-0.2,-8.4).lineTo(-0.3,-6.5).lineTo(-0.3,-4.4).lineTo(2.1,-4.4).lineTo(4.4,-4.4).lineTo(4.4,-3.6).lineTo(4.4,-2.9).lineTo(2.2,-2.9).lineTo(-0.3,-2.9).lineTo(-0.3,-2.1).lineTo(-0.3,-0.7).lineTo(-0.3,0.4).lineTo(-0.3,2.6).lineTo(-0.3,4.9).curveTo(-0.3,5.8,0.2,6.3).curveTo(0.8,6.8,1.6,6.7).lineTo(2.9,6.6).lineTo(4.5,6.3).lineTo(4.6,6.9).lineTo(4.7,7.6).curveTo(3.6,8,2.5,8.2).curveTo(1.3,8.4,0.5,8.4).lineTo(-0.6,8.3).closePath();
	this.shape_18.setTransform(-51.175,0.2);

	this.shape_19 = new cjs.Shape();
	this.shape_19.graphics.beginFill("#000000").beginStroke().moveTo(-0.3,6.6).curveTo(-1.5,6.6,-2.6,6.3).curveTo(-3.6,5.9,-4.4,5.2).curveTo(-5.3,4.3,-5.8,3.1).curveTo(-6.3,1.8,-6.3,0.3).curveTo(-6.3,-1.3,-5.7,-2.7).curveTo(-5.1,-4.2,-3.8,-5.2).curveTo(-3,-6,-1.9,-6.3).curveTo(-0.8,-6.6,0.3,-6.6).curveTo(1.3,-6.6,2.3,-6.3).curveTo(3.2,-6.1,4,-5.5).curveTo(5.1,-4.6,5.7,-3.4).curveTo(6.3,-2.1,6.3,-0.3).curveTo(6.3,1.5,5.6,2.9).curveTo(4.9,4.4,3.8,5.4).curveTo(2.9,6,1.9,6.3).curveTo(1,6.6,-0.2,6.6).closePath().moveTo(-1.2,-5.1).curveTo(-1.9,-4.8,-2.4,-4.3).curveTo(-3.2,-3.5,-3.5,-2.5).curveTo(-3.8,-1.3,-3.8,0.1).curveTo(-3.8,1.5,-3.5,2.5).curveTo(-3.2,3.5,-2.4,4.3).curveTo(-2,4.8,-1.4,5).curveTo(-0.8,5.3,-0,5.3).curveTo(0.7,5.3,1.3,5).curveTo(1.9,4.8,2.5,4.3).curveTo(3.2,3.5,3.5,2.4).curveTo(3.8,1.4,3.8,-0.1).curveTo(3.8,-1.4,3.5,-2.5).curveTo(3.2,-3.4,2.6,-4.2).curveTo(2.1,-4.7,1.4,-5.1).curveTo(0.8,-5.3,0.1,-5.3).curveTo(-0.6,-5.3,-1.2,-5.1).closePath();
	this.shape_19.setTransform(-64.425,2);

	this.shape_20 = new cjs.Shape();
	this.shape_20.graphics.beginFill("#000000").beginStroke().moveTo(3.1,10.2).lineTo(2.7,9.3).lineTo(2.5,9.3).curveTo(1.3,10,0.5,10.2).lineTo(-0.7,10.6).lineTo(-1.7,10.7).curveTo(-2.7,10.7,-3.7,10.3).curveTo(-4.6,9.9,-5.3,9.2).curveTo(-6.2,8.4,-6.6,7.2).curveTo(-7.1,6.1,-7.1,4.6).curveTo(-7.1,3.2,-6.5,1.8).curveTo(-6,0.5,-5.1,-0.6).curveTo(-4.3,-1.5,-3.2,-2).curveTo(-2,-2.5,-0.6,-2.5).curveTo(0.2,-2.5,1,-2.4).lineTo(2.4,-1.9).lineTo(2.5,-2).lineTo(2.5,-5.3).lineTo(2.4,-8.6).lineTo(-0.1,-8.6).lineTo(-0.1,-9.3).lineTo(-0,-9.9).lineTo(1.3,-10.1).lineTo(2.8,-10.4).lineTo(4.1,-10.6).lineTo(4.7,-10.7).lineTo(4.8,-10.6).lineTo(4.8,-10.5).lineTo(4.8,-6.1).lineTo(4.8,-1.3).lineTo(4.7,3.7).lineTo(4.7,8.4).lineTo(4.8,8.8).curveTo(4.8,8.9,4.8,8.9).curveTo(4.9,8.9,4.9,8.9).curveTo(4.9,9,5,9).curveTo(5,9,5,9).lineTo(7.1,8.9).lineTo(7.1,9.5).lineTo(7.1,10.2).lineTo(6.2,10.4).lineTo(4.9,10.6).lineTo(3.6,10.7).lineTo(3.1,10.2).closePath().moveTo(-2.2,-0.6).curveTo(-3,-0.3,-3.5,0.5).curveTo(-4,1.2,-4.3,2.1).curveTo(-4.6,3.1,-4.6,4.4).curveTo(-4.6,5.5,-4.4,6.3).curveTo(-4.1,7.2,-3.6,7.9).curveTo(-3.1,8.5,-2.5,8.8).curveTo(-1.8,9.1,-1.1,9.1).curveTo(-0.1,9.1,0.7,8.8).curveTo(1.5,8.4,2.3,7.9).lineTo(2.4,7.8).lineTo(2.4,7.5).lineTo(2.4,3.5).lineTo(2.4,-0.2).curveTo(1.8,-0.6,1,-0.8).curveTo(0.3,-1,-0.5,-1).curveTo(-1.4,-1,-2.2,-0.6).closePath();
	this.shape_20.setTransform(-79.325,-2.075);

	this.shape_21 = new cjs.Shape();
	this.shape_21.graphics.beginFill("#000000").beginStroke().moveTo(-2.8,5.8).curveTo(-4.1,5,-4.9,3.7).curveTo(-5.5,2.4,-5.6,0.5).curveTo(-5.5,-1.4,-4.8,-3.1).curveTo(-3.9,-4.6,-2.5,-5.6).curveTo(-1.1,-6.6,0.8,-6.6).curveTo(2,-6.6,2.9,-6.2).curveTo(3.8,-5.8,4.4,-5.1).curveTo(5,-4.3,5.3,-3.2).curveTo(5.6,-2.2,5.6,-1.2).lineTo(5,-0.5).curveTo(4.7,-0.1,4.5,-0).lineTo(2.9,-0).lineTo(0.7,-0).lineTo(-1.4,0.1).lineTo(-3.1,0.1).curveTo(-3.1,2.5,-2.1,3.7).curveTo(-1.4,4.5,-0.7,4.8).curveTo(0.1,5,1,4.9).curveTo(2,4.9,3.1,4.7).lineTo(4.9,4).lineTo(5.1,4.7).lineTo(5.3,5.4).curveTo(4,5.9,2.8,6.3).curveTo(1.5,6.6,0.5,6.6).curveTo(-1.5,6.6,-2.8,5.8).closePath().moveTo(-0.8,-5).curveTo(-1.3,-4.7,-1.7,-4.3).lineTo(-2.5,-3.2).curveTo(-2.9,-2.5,-3,-1.4).lineTo(-1.1,-1.4).lineTo(1,-1.4).lineTo(2.9,-1.5).lineTo(3.1,-1.5).lineTo(3.2,-1.7).curveTo(3.3,-2.6,3,-3.2).curveTo(2.7,-3.9,2.4,-4.3).curveTo(2.1,-4.7,1.6,-5).curveTo(1.1,-5.2,0.5,-5.2).curveTo(-0.3,-5.2,-0.8,-5).closePath();
	this.shape_21.setTransform(-100.8,2);

	this.shape_22 = new cjs.Shape();
	this.shape_22.graphics.beginFill("#000000").beginStroke().moveTo(1.5,9.9).lineTo(1.5,9.2).lineTo(3.3,9.1).lineTo(3.3,9.1).lineTo(3.4,9).lineTo(3.4,7.2).lineTo(3.4,5.3).lineTo(3.4,3.6).lineTo(3.3,1.7).curveTo(3.3,0.9,2.9,0.3).curveTo(2.5,-0.2,2,-0.4).lineTo(1,-0.6).curveTo(0.1,-0.6,-1,-0.1).curveTo(-2.1,0.4,-3.1,1).lineTo(-3.1,3.7).lineTo(-3.1,6.5).lineTo(-3.1,9.1).lineTo(-0.8,9.2).lineTo(-0.8,9.9).lineTo(-0.9,10.5).lineTo(-2.5,10.5).lineTo(-4.3,10.5).lineTo(-5.8,10.5).lineTo(-7.2,10.6).lineTo(-7.2,9.9).lineTo(-7.2,9.2).lineTo(-5.5,9.1).lineTo(-5.4,9.1).lineTo(-5.4,9).lineTo(-5.4,3.3).lineTo(-5.4,-2.8).lineTo(-5.4,-8.5).lineTo(-7.6,-8.5).lineTo(-7.6,-9.2).lineTo(-7.6,-9.8).lineTo(-6.4,-10).lineTo(-5,-10.2).lineTo(-3.7,-10.5).lineTo(-3.1,-10.6).lineTo(-3,-10.5).lineTo(-3,-10.4).lineTo(-3,-7.3).lineTo(-3.1,-4).lineTo(-3.1,-0.7).lineTo(-3,-0.6).lineTo(-0.5,-1.9).curveTo(0.3,-2.2,0.9,-2.3).lineTo(1.9,-2.4).curveTo(3.1,-2.4,3.9,-1.8).curveTo(4.8,-1.1,5.3,-0.2).curveTo(5.5,0.2,5.6,0.8).lineTo(5.7,2).lineTo(5.7,5.5).lineTo(5.6,9.1).lineTo(7.6,9.2).lineTo(7.6,9.9).lineTo(7.6,10.5).lineTo(6.1,10.5).lineTo(4.5,10.5).lineTo(3,10.5).lineTo(1.5,10.6).lineTo(1.5,9.9).closePath();
	this.shape_22.setTransform(-115.8375,-2.2);

	this.shape_23 = new cjs.Shape();
	this.shape_23.graphics.beginFill("#000000").beginStroke().moveTo(-0.6,8.3).curveTo(-1.2,8.1,-1.9,7.6).curveTo(-2.4,7,-2.5,6.5).curveTo(-2.7,5.9,-2.7,5.3).lineTo(-2.6,3.6).lineTo(-2.6,1.8).lineTo(-2.6,0.6).lineTo(-2.6,-0.6).lineTo(-2.6,-1.8).lineTo(-2.6,-2.8).lineTo(-3.6,-2.8).lineTo(-4.7,-2.8).lineTo(-4.7,-3.6).lineTo(-4.6,-4.3).lineTo(-3.7,-4.3).lineTo(-2.7,-4.4).lineTo(-2.6,-4.4).lineTo(-2.5,-4.6).lineTo(-2.5,-6).lineTo(-2.4,-7.4).lineTo(-1.5,-7.9).lineTo(-0.7,-8.2).lineTo(-0.3,-8.4).lineTo(-0.2,-8.4).lineTo(-0.3,-6.5).lineTo(-0.3,-4.4).lineTo(2.1,-4.4).lineTo(4.4,-4.4).lineTo(4.4,-3.6).lineTo(4.4,-2.9).lineTo(2.2,-2.9).lineTo(-0.3,-2.9).lineTo(-0.3,-2.1).lineTo(-0.3,-0.7).lineTo(-0.3,0.4).lineTo(-0.3,2.6).lineTo(-0.3,4.9).curveTo(-0.3,5.8,0.2,6.3).curveTo(0.8,6.8,1.6,6.7).lineTo(2.9,6.6).lineTo(4.5,6.3).lineTo(4.6,6.9).lineTo(4.7,7.6).curveTo(3.6,8,2.5,8.2).curveTo(1.3,8.4,0.5,8.4).lineTo(-0.6,8.3).closePath();
	this.shape_23.setTransform(-128.975,0.2);

	this.shape_24 = new cjs.Shape();
	this.shape_24.graphics.beginFill("#000000").beginStroke().moveTo(1.6,5.8).lineTo(1.6,5.2).lineTo(3.3,5.1).lineTo(3.4,5).lineTo(3.4,5).lineTo(3.5,2.3).lineTo(3.5,-0.5).lineTo(3.4,-2.2).curveTo(3.4,-3,3.1,-3.5).curveTo(2.6,-4.3,2.1,-4.5).curveTo(1.6,-4.7,1,-4.7).curveTo(0.2,-4.7,-0.9,-4.2).curveTo(-2,-3.7,-2.9,-2.9).lineTo(-3,-0.3).lineTo(-3,2.5).lineTo(-3,5).lineTo(-0.9,5.1).lineTo(-0.9,5.8).lineTo(-0.9,6.4).lineTo(-2.5,6.4).lineTo(-4.3,6.4).lineTo(-5.7,6.4).lineTo(-7.2,6.5).lineTo(-7.2,5.8).lineTo(-7.2,5.1).lineTo(-5.4,5).lineTo(-5.3,5).lineTo(-5.3,4.9).lineTo(-5.3,-4.4).lineTo(-7.6,-4.4).lineTo(-7.6,-5).lineTo(-7.6,-5.7).lineTo(-6.4,-5.9).lineTo(-5.1,-6.1).lineTo(-4,-6.4).lineTo(-3.4,-6.5).lineTo(-3.4,-6.4).lineTo(-3.4,-6.4).lineTo(-3.2,-5.4).lineTo(-3,-4.6).lineTo(-2.9,-4.6).lineTo(-0.6,-5.9).curveTo(0.3,-6.3,0.8,-6.4).lineTo(2,-6.5).curveTo(2.8,-6.5,3.4,-6.2).curveTo(4,-5.9,4.5,-5.4).lineTo(5.2,-4.5).curveTo(5.5,-3.9,5.7,-3.3).lineTo(5.8,-2.2).lineTo(5.8,0.1).lineTo(5.8,2.6).lineTo(5.7,5).lineTo(7.6,5.1).lineTo(7.6,5.8).lineTo(7.6,6.4).lineTo(6.1,6.4).lineTo(4.5,6.4).lineTo(3,6.4).lineTo(1.6,6.5).lineTo(1.6,5.8).closePath();
	this.shape_24.setTransform(-149.575,1.875);

	this.shape_25 = new cjs.Shape();
	this.shape_25.graphics.beginFill("#000000").beginStroke().moveTo(-3.1,8.8).lineTo(-3.1,8.2).lineTo(-1.1,8.1).lineTo(-1,8.1).lineTo(-1,8).lineTo(-1,-1.4).lineTo(-3.3,-1.5).lineTo(-3.3,-2.1).lineTo(-3.3,-2.7).lineTo(-2.1,-2.9).lineTo(-0.6,-3.2).lineTo(0.6,-3.4).lineTo(1.2,-3.4).lineTo(1.3,-3.4).lineTo(1.3,-3.4).lineTo(1.3,0.3).lineTo(1.3,4.5).lineTo(1.2,8.1).lineTo(3.3,8.2).lineTo(3.3,8.8).lineTo(3.3,9.4).lineTo(1.7,9.4).lineTo(-0,9.4).lineTo(-1.6,9.4).lineTo(-3.1,9.5).lineTo(-3.1,8.8).closePath().moveTo(-1.2,-6.8).curveTo(-1.7,-7.3,-1.7,-7.9).curveTo(-1.7,-8.5,-1.3,-9).curveTo(-0.8,-9.5,-0,-9.5).lineTo(0,-9.5).curveTo(0.8,-9.5,1.2,-9).curveTo(1.5,-8.5,1.5,-7.9).curveTo(1.5,-7.3,1.1,-6.8).curveTo(0.6,-6.3,-0.1,-6.3).curveTo(-0.8,-6.3,-1.2,-6.8).closePath();
	this.shape_25.setTransform(-161.825,-1.15);

	this.shape_26 = new cjs.Shape();
	this.shape_26.graphics.beginFill("#000000").beginStroke().moveTo(-0.3,6.6).curveTo(-1.5,6.6,-2.6,6.3).curveTo(-3.6,5.9,-4.4,5.2).curveTo(-5.3,4.3,-5.8,3.1).curveTo(-6.3,1.8,-6.3,0.3).curveTo(-6.3,-1.3,-5.7,-2.7).curveTo(-5.1,-4.2,-3.8,-5.2).curveTo(-3,-6,-1.9,-6.3).curveTo(-0.8,-6.6,0.3,-6.6).curveTo(1.3,-6.6,2.3,-6.3).curveTo(3.2,-6.1,4,-5.5).curveTo(5.1,-4.6,5.7,-3.4).curveTo(6.3,-2.1,6.3,-0.3).curveTo(6.3,1.5,5.6,2.9).curveTo(4.9,4.4,3.8,5.4).curveTo(2.9,6,1.9,6.3).curveTo(1,6.6,-0.2,6.6).closePath().moveTo(-1.2,-5.1).curveTo(-1.9,-4.8,-2.4,-4.3).curveTo(-3.2,-3.5,-3.5,-2.5).curveTo(-3.8,-1.3,-3.8,0.1).curveTo(-3.8,1.5,-3.5,2.5).curveTo(-3.2,3.5,-2.4,4.3).curveTo(-2,4.8,-1.4,5).curveTo(-0.8,5.3,-0,5.3).curveTo(0.7,5.3,1.3,5).curveTo(1.9,4.8,2.5,4.3).curveTo(3.2,3.5,3.5,2.4).curveTo(3.8,1.4,3.8,-0.1).curveTo(3.8,-1.4,3.5,-2.5).curveTo(3.2,-3.4,2.6,-4.2).curveTo(2.1,-4.7,1.4,-5.1).curveTo(0.8,-5.3,0.1,-5.3).curveTo(-0.6,-5.3,-1.2,-5.1).closePath();
	this.shape_26.setTransform(-173.425,2);

	this.shape_27 = new cjs.Shape();
	this.shape_27.graphics.beginFill("#000000").beginStroke().moveTo(-4.3,10).lineTo(-6.1,9.7).lineTo(-6.3,7.4).lineTo(-6.6,5).lineTo(-5.8,4.9).lineTo(-5,4.8).lineTo(-4.4,7.8).lineTo(-4.3,8).lineTo(-4.2,8.2).curveTo(-3.7,8.4,-3.2,8.4).lineTo(-2.2,8.5).curveTo(-1.1,8.5,-0.2,8.1).curveTo(0.7,7.6,1.1,6.8).curveTo(1.7,5.9,1.8,4.7).curveTo(2,3.6,1.9,2).lineTo(1.9,-3.3).lineTo(1.9,-8.6).lineTo(-1.9,-8.7).lineTo(-1.9,-9.4).lineTo(-1.8,-10).lineTo(0.7,-10).lineTo(3.3,-10).lineTo(5,-10).lineTo(6.6,-10).lineTo(6.6,-9.4).lineTo(6.5,-8.7).lineTo(4.4,-8.6).lineTo(4.3,-8.5).lineTo(4.3,-3.3).lineTo(4.3,1.9).curveTo(4.3,3.3,4.2,4.3).curveTo(4,5.3,3.7,6.1).curveTo(3.4,7,2.8,7.7).curveTo(2.1,8.6,0.7,9.3).curveTo(-0.6,10,-2.7,10.1).lineTo(-4.3,10).closePath();
	this.shape_27.setTransform(-188.175,-1.15);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_27},{t:this.shape_26},{t:this.shape_25},{t:this.shape_24},{t:this.shape_23},{t:this.shape_22},{t:this.shape_21},{t:this.shape_20},{t:this.shape_19},{t:this.shape_18},{t:this.shape_17},{t:this.shape_16},{t:this.shape_15},{t:this.shape_14},{t:this.shape_13},{t:this.shape_12},{t:this.shape_11},{t:this.shape_10},{t:this.shape_9},{t:this.shape_8},{t:this.shape_7},{t:this.shape_6},{t:this.shape_5},{t:this.shape_4},{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(192));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-400,-30,800,60);


(lib.mc_title_ost = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill("#000000").beginStroke().moveTo(-3.2,9.8).lineTo(-4.5,9.7).lineTo(-5.4,9.7).lineTo(-7.1,9.8).lineTo(-8.9,9.8).lineTo(-8.9,9.1).lineTo(-8.9,8.4).lineTo(-6.8,8.3).lineTo(-6.7,8.3).lineTo(-6.6,8.2).lineTo(-6.6,-8.3).lineTo(-8.9,-8.3).lineTo(-8.9,-9).lineTo(-8.9,-9.7).lineTo(-6.1,-9.7).lineTo(-2.7,-9.8).curveTo(-0.9,-9.8,0.4,-9.6).curveTo(1.8,-9.4,2.8,-9.1).curveTo(3.8,-8.7,4.7,-8.2).curveTo(6.6,-7.1,7.8,-5.1).curveTo(8.8,-3.1,8.9,-0.6).curveTo(8.9,2,8,4.2).curveTo(7,6.4,5.2,7.8).curveTo(3.8,8.8,2.1,9.3).curveTo(0.3,9.8,-1.8,9.8).lineTo(-3.2,9.8).closePath().moveTo(-3.6,-8.4).lineTo(-4.3,-8.3).lineTo(-4.3,7.3).curveTo(-4.3,7.7,-4.2,8).curveTo(-4,8.2,-3.5,8.3).lineTo(-2,8.4).curveTo(0,8.4,1.5,7.9).curveTo(3,7.4,4,6.5).curveTo(5,5.5,5.7,3.8).curveTo(6.3,2.2,6.4,0.3).curveTo(6.3,-1.4,6.1,-2.6).curveTo(5.8,-3.8,5.2,-4.8).curveTo(4.6,-5.7,3.6,-6.5).curveTo(2.6,-7.4,1.1,-7.9).curveTo(-0.3,-8.4,-2.5,-8.4).lineTo(-3.6,-8.4).closePath();
	this.shape.setTransform(75.55,-1.475);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#000000").beginStroke().moveTo(-0.3,6.6).curveTo(-1.5,6.6,-2.6,6.3).curveTo(-3.6,5.9,-4.4,5.2).curveTo(-5.3,4.3,-5.8,3.1).curveTo(-6.3,1.8,-6.3,0.3).curveTo(-6.3,-1.3,-5.7,-2.7).curveTo(-5.1,-4.2,-3.8,-5.2).curveTo(-3,-6,-1.9,-6.3).curveTo(-0.8,-6.6,0.3,-6.6).curveTo(1.3,-6.6,2.3,-6.3).curveTo(3.2,-6.1,4,-5.5).curveTo(5.1,-4.6,5.7,-3.4).curveTo(6.3,-2.1,6.3,-0.3).curveTo(6.3,1.5,5.6,2.9).curveTo(4.9,4.4,3.8,5.4).curveTo(2.9,6,1.9,6.3).curveTo(1,6.6,-0.2,6.6).closePath().moveTo(-1.2,-5.1).curveTo(-1.9,-4.8,-2.4,-4.3).curveTo(-3.2,-3.5,-3.5,-2.5).curveTo(-3.8,-1.3,-3.8,0.1).curveTo(-3.8,1.5,-3.5,2.5).curveTo(-3.2,3.5,-2.4,4.3).curveTo(-2,4.8,-1.4,5).curveTo(-0.8,5.3,-0,5.3).curveTo(0.7,5.3,1.3,5).curveTo(1.9,4.8,2.5,4.3).curveTo(3.2,3.5,3.5,2.4).curveTo(3.8,1.4,3.8,-0.1).curveTo(3.8,-1.4,3.5,-2.5).curveTo(3.2,-3.4,2.6,-4.2).curveTo(2.1,-4.7,1.4,-5.1).curveTo(0.8,-5.3,0.1,-5.3).curveTo(-0.6,-5.3,-1.2,-5.1).closePath();
	this.shape_1.setTransform(51.025,2);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#000000").beginStroke().moveTo(-0.6,8.3).curveTo(-1.2,8.1,-1.9,7.6).curveTo(-2.4,7,-2.5,6.5).curveTo(-2.7,5.9,-2.7,5.3).lineTo(-2.6,3.6).lineTo(-2.6,1.8).lineTo(-2.6,0.6).lineTo(-2.6,-0.6).lineTo(-2.6,-1.8).lineTo(-2.6,-2.8).lineTo(-3.6,-2.8).lineTo(-4.7,-2.8).lineTo(-4.7,-3.6).lineTo(-4.6,-4.3).lineTo(-3.7,-4.3).lineTo(-2.7,-4.4).lineTo(-2.6,-4.4).lineTo(-2.5,-4.6).lineTo(-2.5,-6).lineTo(-2.4,-7.4).lineTo(-1.5,-7.9).lineTo(-0.7,-8.2).lineTo(-0.3,-8.4).lineTo(-0.2,-8.4).lineTo(-0.3,-6.5).lineTo(-0.3,-4.4).lineTo(2.1,-4.4).lineTo(4.4,-4.4).lineTo(4.4,-3.6).lineTo(4.4,-2.9).lineTo(2.2,-2.9).lineTo(-0.3,-2.9).lineTo(-0.3,-2.1).lineTo(-0.3,-0.7).lineTo(-0.3,0.4).lineTo(-0.3,2.6).lineTo(-0.3,4.9).curveTo(-0.3,5.8,0.2,6.3).curveTo(0.8,6.8,1.6,6.7).lineTo(2.9,6.6).lineTo(4.5,6.3).lineTo(4.6,6.9).lineTo(4.7,7.6).curveTo(3.6,8,2.5,8.2).curveTo(1.3,8.4,0.5,8.4).lineTo(-0.6,8.3).closePath();
	this.shape_2.setTransform(38.475,0.2);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#000000").beginStroke().moveTo(2.6,9.2).lineTo(2.6,8.5).lineTo(5,8.4).lineTo(5,8.4).lineTo(5,8.3).lineTo(4.3,6.1).lineTo(3.5,3.9).lineTo(3.4,3.8).lineTo(3.3,3.8).lineTo(-3.9,3.8).lineTo(-4.7,6.1).lineTo(-5.5,8.4).lineTo(-2.8,8.5).lineTo(-2.8,9.2).lineTo(-2.8,9.9).lineTo(-4.7,9.9).lineTo(-6.8,9.9).lineTo(-8.1,9.9).lineTo(-9.4,9.9).lineTo(-9.4,9.2).lineTo(-9.4,8.5).lineTo(-7.7,8.4).lineTo(-7.6,8.4).lineTo(-7.6,8.3).lineTo(-5.9,3.9).lineTo(-4.1,-0.8).lineTo(-2.3,-5.5).lineTo(-0.7,-9.9).lineTo(0.1,-9.9).lineTo(1,-9.9).lineTo(2.6,-5.5).lineTo(4.3,-0.8).lineTo(6,4).lineTo(7.6,8.4).lineTo(9.4,8.5).lineTo(9.4,9.2).lineTo(9.4,9.9).lineTo(8,9.9).lineTo(6.5,9.9).lineTo(4.5,9.9).lineTo(2.6,9.9).lineTo(2.6,9.2).closePath().moveTo(3,2.4).lineTo(2,-0.6).lineTo(1,-3.6).lineTo(-0,-6.6).lineTo(-0.2,-6.6).lineTo(-1.2,-3.7).lineTo(-2.3,-0.7).lineTo(-3.4,2.2).lineTo(-3.4,2.3).lineTo(-3.3,2.4).lineTo(3,2.4).lineTo(3,2.4).closePath();
	this.shape_3.setTransform(17.125,-1.575);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#000000").beginStroke().moveTo(-2.9,6.4).lineTo(-4.4,6).lineTo(-4.6,4.3).lineTo(-4.8,2.6).lineTo(-4,2.4).lineTo(-3.2,2.3).lineTo(-2.9,4.2).lineTo(-2.8,4.5).lineTo(-2.6,4.6).curveTo(-2.3,4.9,-1.7,5).lineTo(-0.5,5.3).lineTo(0.7,5.1).curveTo(1.3,5,1.7,4.8).curveTo(2.1,4.5,2.3,4.1).curveTo(2.6,3.7,2.6,3).curveTo(2.6,2.3,2.3,1.9).curveTo(1.9,1.5,1.2,1.2).lineTo(-0.8,0.5).curveTo(-2.6,0,-3.4,-0.7).curveTo(-4.2,-1.6,-4.2,-2.8).curveTo(-4.2,-3.9,-3.6,-4.6).curveTo(-3.1,-5.4,-2.3,-5.9).curveTo(-1.6,-6.2,-0.7,-6.4).curveTo(0.2,-6.6,1.3,-6.6).curveTo(2.5,-6.6,3.2,-6.4).lineTo(4.2,-6.1).lineTo(4.4,-4.4).lineTo(4.5,-2.7).lineTo(3.8,-2.6).lineTo(3,-2.5).lineTo(2.6,-4.4).lineTo(2.5,-4.6).lineTo(2.4,-4.8).curveTo(2.1,-5,1.6,-5.1).curveTo(1.1,-5.3,0.6,-5.2).curveTo(0,-5.2,-0.5,-5.1).lineTo(-1.3,-4.6).curveTo(-1.6,-4.4,-1.8,-4.1).curveTo(-2,-3.7,-2,-3.1).curveTo(-2,-2.5,-1.8,-2.2).curveTo(-1.5,-1.8,-0.9,-1.6).curveTo(-0.2,-1.3,1,-0.9).lineTo(2.9,-0.3).curveTo(3.8,0.2,4.3,0.9).curveTo(4.8,1.5,4.8,2.7).curveTo(4.8,3.7,4.3,4.5).curveTo(3.8,5.3,2.9,5.8).curveTo(2.3,6.3,1.3,6.4).curveTo(0.4,6.6,-0.7,6.6).curveTo(-2,6.6,-2.9,6.4).closePath();
	this.shape_4.setTransform(-4.675,2);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#000000").beginStroke().moveTo(-4.8,5.8).lineTo(-4.8,5.2).lineTo(-3.1,5.1).lineTo(-3,5).lineTo(-2.9,5).lineTo(-2.9,1.9).lineTo(-2.9,-1.4).lineTo(-2.9,-4.4).lineTo(-5.2,-4.4).lineTo(-5.2,-5.1).lineTo(-5.1,-5.7).lineTo(-4,-5.9).lineTo(-2.7,-6.1).lineTo(-1.5,-6.4).lineTo(-1,-6.5).lineTo(-1,-6.4).lineTo(-1,-6.4).lineTo(-0.9,-4.7).lineTo(-0.8,-2.3).lineTo(-0.7,-2.3).curveTo(0.2,-4,0.8,-4.9).curveTo(1.6,-5.8,2.1,-6.2).curveTo(2.8,-6.5,3.4,-6.5).lineTo(4.4,-6.4).lineTo(5.2,-6.1).lineTo(5,-5.3).lineTo(4.7,-4.5).lineTo(4.3,-3.9).lineTo(3.6,-4.1).lineTo(2.8,-4.2).lineTo(2.4,-4.1).lineTo(1.7,-3.7).lineTo(0.8,-2.7).curveTo(0.4,-2,-0.2,-0.9).curveTo(-0.5,-0.4,-0.6,0.4).lineTo(-0.7,1.8).lineTo(-0.8,3.5).lineTo(-0.8,5.1).lineTo(2.1,5.1).lineTo(2.1,5.8).lineTo(2,6.4).lineTo(0.2,6.4).lineTo(-1.8,6.4).lineTo(-3.4,6.4).lineTo(-4.8,6.5).lineTo(-4.8,5.8).closePath();
	this.shape_5.setTransform(-15.7,1.875);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#000000").beginStroke().moveTo(-2.8,5.8).curveTo(-4.2,5,-4.8,3.7).curveTo(-5.6,2.4,-5.5,0.5).curveTo(-5.6,-1.4,-4.7,-3.1).curveTo(-4,-4.6,-2.6,-5.6).curveTo(-1.1,-6.6,0.8,-6.6).curveTo(2,-6.6,2.9,-6.2).curveTo(3.8,-5.8,4.4,-5.1).curveTo(5.1,-4.3,5.3,-3.2).curveTo(5.6,-2.2,5.5,-1.2).lineTo(5.1,-0.5).curveTo(4.7,-0.1,4.5,-0).lineTo(2.8,-0).lineTo(0.8,-0).lineTo(-1.3,0.1).lineTo(-3.1,0.1).curveTo(-3.2,2.5,-2.1,3.7).curveTo(-1.4,4.5,-0.7,4.8).curveTo(0,5,0.9,4.9).curveTo(2,4.9,3.1,4.7).lineTo(5,4).lineTo(5.2,4.7).lineTo(5.3,5.4).curveTo(4,5.9,2.7,6.3).curveTo(1.5,6.6,0.5,6.6).curveTo(-1.4,6.6,-2.8,5.8).closePath().moveTo(-0.8,-5).curveTo(-1.4,-4.7,-1.8,-4.3).lineTo(-2.5,-3.2).curveTo(-2.9,-2.5,-3,-1.4).lineTo(-1.1,-1.4).lineTo(0.9,-1.4).lineTo(2.8,-1.5).lineTo(3.2,-1.5).lineTo(3.3,-1.7).curveTo(3.3,-2.6,3,-3.2).curveTo(2.8,-3.9,2.5,-4.3).curveTo(2.1,-4.7,1.7,-5).curveTo(1.2,-5.2,0.5,-5.2).curveTo(-0.3,-5.2,-0.8,-5).closePath();
	this.shape_6.setTransform(-28.3,2);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.beginFill("#000000").beginStroke().moveTo(-0.6,8.3).curveTo(-1.2,8.1,-1.9,7.6).curveTo(-2.4,7,-2.5,6.5).curveTo(-2.7,5.9,-2.7,5.3).lineTo(-2.6,3.6).lineTo(-2.6,1.8).lineTo(-2.6,0.6).lineTo(-2.6,-0.6).lineTo(-2.6,-1.8).lineTo(-2.6,-2.8).lineTo(-3.6,-2.8).lineTo(-4.7,-2.8).lineTo(-4.7,-3.6).lineTo(-4.6,-4.3).lineTo(-3.7,-4.3).lineTo(-2.7,-4.4).lineTo(-2.6,-4.4).lineTo(-2.5,-4.6).lineTo(-2.5,-6).lineTo(-2.4,-7.4).lineTo(-1.5,-7.9).lineTo(-0.7,-8.2).lineTo(-0.3,-8.4).lineTo(-0.2,-8.4).lineTo(-0.3,-6.5).lineTo(-0.3,-4.4).lineTo(2.1,-4.4).lineTo(4.4,-4.4).lineTo(4.4,-3.6).lineTo(4.4,-2.9).lineTo(2.2,-2.9).lineTo(-0.3,-2.9).lineTo(-0.3,-2.1).lineTo(-0.3,-0.7).lineTo(-0.3,0.4).lineTo(-0.3,2.6).lineTo(-0.3,4.9).curveTo(-0.3,5.8,0.2,6.3).curveTo(0.8,6.8,1.6,6.7).lineTo(2.9,6.6).lineTo(4.5,6.3).lineTo(4.6,6.9).lineTo(4.7,7.6).curveTo(3.6,8,2.5,8.2).curveTo(1.3,8.4,0.5,8.4).lineTo(-0.6,8.3).closePath();
	this.shape_7.setTransform(-40.025,0.2);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.beginFill("#000000").beginStroke().moveTo(-0.6,8.3).curveTo(-1.2,8.1,-1.9,7.6).curveTo(-2.4,7,-2.5,6.5).curveTo(-2.7,5.9,-2.7,5.3).lineTo(-2.6,3.6).lineTo(-2.6,1.8).lineTo(-2.6,0.6).lineTo(-2.6,-0.6).lineTo(-2.6,-1.8).lineTo(-2.6,-2.8).lineTo(-3.6,-2.8).lineTo(-4.7,-2.8).lineTo(-4.7,-3.6).lineTo(-4.6,-4.3).lineTo(-3.7,-4.3).lineTo(-2.7,-4.4).lineTo(-2.6,-4.4).lineTo(-2.5,-4.6).lineTo(-2.5,-6).lineTo(-2.4,-7.4).lineTo(-1.5,-7.9).lineTo(-0.7,-8.2).lineTo(-0.3,-8.4).lineTo(-0.2,-8.4).lineTo(-0.3,-6.5).lineTo(-0.3,-4.4).lineTo(2.1,-4.4).lineTo(4.4,-4.4).lineTo(4.4,-3.6).lineTo(4.4,-2.9).lineTo(2.2,-2.9).lineTo(-0.3,-2.9).lineTo(-0.3,-2.1).lineTo(-0.3,-0.7).lineTo(-0.3,0.4).lineTo(-0.3,2.6).lineTo(-0.3,4.9).curveTo(-0.3,5.8,0.2,6.3).curveTo(0.8,6.8,1.6,6.7).lineTo(2.9,6.6).lineTo(4.5,6.3).lineTo(4.6,6.9).lineTo(4.7,7.6).curveTo(3.6,8,2.5,8.2).curveTo(1.3,8.4,0.5,8.4).lineTo(-0.6,8.3).closePath();
	this.shape_8.setTransform(-50.725,0.2);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.beginFill("#000000").beginStroke().moveTo(-2.8,5.8).curveTo(-4.2,5,-4.8,3.7).curveTo(-5.6,2.4,-5.5,0.5).curveTo(-5.6,-1.4,-4.7,-3.1).curveTo(-4,-4.6,-2.6,-5.6).curveTo(-1.1,-6.6,0.9,-6.6).curveTo(2,-6.6,2.9,-6.2).curveTo(3.8,-5.8,4.4,-5.1).curveTo(5.1,-4.3,5.3,-3.2).curveTo(5.6,-2.2,5.5,-1.2).lineTo(5.1,-0.5).curveTo(4.8,-0.1,4.5,-0).lineTo(2.8,-0).lineTo(0.8,-0).lineTo(-1.4,0.1).lineTo(-3.1,0.1).curveTo(-3.2,2.5,-2.1,3.7).curveTo(-1.4,4.5,-0.7,4.8).curveTo(0,5,0.9,4.9).curveTo(2,4.9,3.1,4.7).lineTo(4.9,4).lineTo(5.2,4.7).lineTo(5.3,5.4).curveTo(4,5.9,2.7,6.3).curveTo(1.5,6.6,0.5,6.6).curveTo(-1.4,6.6,-2.8,5.8).closePath().moveTo(-0.8,-5).curveTo(-1.4,-4.7,-1.8,-4.3).lineTo(-2.5,-3.2).curveTo(-2.9,-2.5,-3,-1.4).lineTo(-1.1,-1.4).lineTo(0.9,-1.4).lineTo(2.8,-1.5).lineTo(3.1,-1.5).lineTo(3.3,-1.7).curveTo(3.3,-2.6,3,-3.2).curveTo(2.8,-3.9,2.5,-4.3).curveTo(2.1,-4.7,1.7,-5).curveTo(1.1,-5.2,0.5,-5.2).curveTo(-0.3,-5.2,-0.8,-5).closePath();
	this.shape_9.setTransform(-63.05,2);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.beginFill("#000000").beginStroke().moveTo(3.7,9.7).lineTo(0.4,9.7).lineTo(-3.4,9.7).lineTo(-5.2,9.7).lineTo(-6.9,9.8).lineTo(-6.9,9).lineTo(-6.9,8.3).lineTo(-4.9,8.2).lineTo(-4.7,8.2).lineTo(-4.7,8.1).lineTo(-4.7,-8.3).lineTo(-6.9,-8.4).lineTo(-6.9,-9.1).lineTo(-6.9,-9.8).lineTo(-5.2,-9.8).lineTo(-3.4,-9.8).lineTo(-1.5,-9.8).lineTo(0.4,-9.8).lineTo(0.4,-9).lineTo(0.4,-8.3).lineTo(-2.2,-8.3).lineTo(-2.3,-8.2).lineTo(-2.3,-8.2).lineTo(-2.4,7.6).curveTo(-2.4,7.7,-2.4,7.8).curveTo(-2.4,7.9,-2.4,7.9).curveTo(-2.4,8,-2.3,8).curveTo(-2.3,8,-2.3,8.1).curveTo(-2.3,8.1,-2.3,8.1).curveTo(-2.2,8.1,-2.2,8.2).curveTo(-2.1,8.2,-2.1,8.2).curveTo(-2,8.2,-1.9,8.2).lineTo(-1.1,8.3).lineTo(1.6,8.2).lineTo(3,8.2).lineTo(3.7,8.1).lineTo(4,7.9).lineTo(4.3,7.5).lineTo(5.3,4.4).lineTo(6.2,4.5).lineTo(6.9,4.7).lineTo(6.4,7.2).lineTo(5.7,9.8).lineTo(3.7,9.7).closePath();
	this.shape_10.setTransform(-77.55,-1.4);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_10},{t:this.shape_9},{t:this.shape_8},{t:this.shape_7},{t:this.shape_6},{t:this.shape_5},{t:this.shape_4},{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(1));

	// Layer_4
	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.beginFill().beginStroke("#C74839").setStrokeStyle(3,1,1).moveTo(-130,-20).lineTo(130,-20).curveTo(138.3,-20,144.2,-14.1).curveTo(150,-8.3,150,0).curveTo(150,8.3,144.2,14.2).curveTo(138.3,20,130,20).lineTo(-130,20).curveTo(-138.3,20,-144.1,14.2).curveTo(-150,8.3,-150,0).curveTo(-150,-8.3,-144.1,-14.1).curveTo(-138.3,-20,-130,-20).closePath();
	this.shape_11.setTransform(0.0062,0);

	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-130,20).curveTo(-138.3,20,-144.2,14.1).curveTo(-150,8.3,-150,0).curveTo(-150,-8.3,-144.2,-14.1).curveTo(-138.3,-20,-130,-20).lineTo(130,-20).curveTo(138.3,-20,144.2,-14.1).curveTo(150,-8.3,150,0).curveTo(150,8.3,144.2,14.1).curveTo(138.3,20,130,20).closePath();
	this.shape_12.setTransform(0.0062,0);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_12},{t:this.shape_11}]}).wait(1));

}).prototype = getMCSymbolPrototype(lib.mc_title_ost, new cjs.Rectangle(-151.5,-21.5,303,43), null);


(lib.mc_4 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(5));

	// Layer_3
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill().beginStroke("#000000").setStrokeStyle(2,1,1).moveTo(-13.8,59.1).curveTo(-0.8,59.1,10.2,54.8).curveTo(21.1,50.7,28.8,42.8).curveTo(36.6,35,40.9,24.3).curveTo(45.2,13.7,45.2,0.5).lineTo(45.2,-0).curveTo(45.2,-12.9,40.9,-23.8).curveTo(36.6,-34.7,28.8,-42.5).curveTo(21.1,-50.5,10.2,-54.7).curveTo(-0.8,-59.1,-13.8,-59.1).lineTo(-47.2,-59.1).lineTo(-47.2,59.1).closePath().moveTo(-90.3,-98).lineTo(-13.8,-98).curveTo(9.1,-98,28.3,-90.6).curveTo(47.5,-83.1,61.4,-70).curveTo(75.2,-56.9,82.8,-39.1).curveTo(90.3,-21.3,90.3,-0.5).lineTo(90.3,-0).curveTo(90.3,20.8,82.8,38.7).curveTo(75.2,56.6,61.4,69.7).curveTo(47.5,82.8,28.3,90.5).curveTo(9.1,98,-13.8,98).lineTo(-90.3,98).closePath();
	this.shape.setTransform(0,0.025);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(5));

	// Layer_1
	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-90.3,98).lineTo(-90.3,-98).lineTo(-13.9,-98).curveTo(9.1,-98,28.3,-90.6).curveTo(47.5,-83.1,61.4,-70).curveTo(75.1,-56.9,82.8,-39.1).curveTo(90.3,-21.3,90.3,-0.5).lineTo(90.3,-0).curveTo(90.3,20.8,82.8,38.7).curveTo(75.1,56.6,61.4,69.7).curveTo(47.5,82.8,28.3,90.5).curveTo(9.1,98,-13.9,98).closePath().moveTo(-47.2,59.1).lineTo(-13.9,59.1).curveTo(-0.7,59.1,10.2,54.8).curveTo(21.1,50.7,28.8,42.8).curveTo(36.6,35,40.9,24.3).curveTo(45.2,13.7,45.2,0.5).lineTo(45.2,-0).curveTo(45.2,-12.9,40.9,-23.8).curveTo(36.6,-34.7,28.8,-42.5).curveTo(21.1,-50.5,10.2,-54.7).curveTo(-0.7,-59.1,-13.9,-59.1).lineTo(-47.2,-59.1).closePath();
	this.shape_1.setTransform(0,0.025);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-46.2,59.1).lineTo(-46.2,-59.1).lineTo(-12.9,-59.1).curveTo(0.3,-59.1,11.2,-54.7).curveTo(22.1,-50.5,29.8,-42.5).curveTo(37.6,-34.7,41.9,-23.8).curveTo(46.2,-12.9,46.2,-0).lineTo(46.2,0.5).curveTo(46.2,13.7,41.9,24.3).curveTo(37.6,35,29.8,42.8).curveTo(22.1,50.7,11.2,54.8).curveTo(0.3,59.1,-12.9,59.1).closePath();
	this.shape_2.setTransform(-1,0.025);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#5E49BE").beginStroke().moveTo(-90.3,98).lineTo(-90.3,-98).lineTo(-13.9,-98).curveTo(9.1,-98,28.3,-90.6).curveTo(47.5,-83.1,61.4,-70).curveTo(75.1,-56.9,82.8,-39.1).curveTo(90.3,-21.3,90.3,-0.5).lineTo(90.3,-0).curveTo(90.3,20.8,82.8,38.7).curveTo(75.1,56.6,61.4,69.7).curveTo(47.5,82.8,28.3,90.5).curveTo(9.1,98,-13.9,98).closePath().moveTo(-47.2,59.1).lineTo(-13.9,59.1).curveTo(-0.7,59.1,10.2,54.8).curveTo(21.1,50.7,28.8,42.8).curveTo(36.6,35,40.9,24.3).curveTo(45.2,13.7,45.2,0.5).lineTo(45.2,-0).curveTo(45.2,-12.9,40.9,-23.8).curveTo(36.6,-34.7,28.8,-42.5).curveTo(21.1,-50.5,10.2,-54.7).curveTo(-0.7,-59.1,-13.9,-59.1).lineTo(-47.2,-59.1).closePath();
	this.shape_3.setTransform(0,0.025);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#F3679A").beginStroke().moveTo(-90.3,98).lineTo(-90.3,-98).lineTo(-13.9,-98).curveTo(9.1,-98,28.3,-90.6).curveTo(47.5,-83.1,61.4,-70).curveTo(75.1,-56.9,82.8,-39.1).curveTo(90.3,-21.3,90.3,-0.5).lineTo(90.3,-0).curveTo(90.3,20.8,82.8,38.7).curveTo(75.1,56.6,61.4,69.7).curveTo(47.5,82.8,28.3,90.5).curveTo(9.1,98,-13.9,98).closePath().moveTo(-47.2,59.1).lineTo(-13.9,59.1).curveTo(-0.7,59.1,10.2,54.8).curveTo(21.1,50.7,28.8,42.8).curveTo(36.6,35,40.9,24.3).curveTo(45.2,13.7,45.2,0.5).lineTo(45.2,-0).curveTo(45.2,-12.9,40.9,-23.8).curveTo(36.6,-34.7,28.8,-42.5).curveTo(21.1,-50.5,10.2,-54.7).curveTo(-0.7,-59.1,-13.9,-59.1).lineTo(-47.2,-59.1).closePath();
	this.shape_4.setTransform(0,0.025);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#5FCA1E").beginStroke().moveTo(-90.3,98).lineTo(-90.3,-98).lineTo(-13.9,-98).curveTo(9.1,-98,28.3,-90.6).curveTo(47.5,-83.1,61.4,-70).curveTo(75.1,-56.9,82.8,-39.1).curveTo(90.3,-21.3,90.3,-0.5).lineTo(90.3,-0).curveTo(90.3,20.8,82.8,38.7).curveTo(75.1,56.6,61.4,69.7).curveTo(47.5,82.8,28.3,90.5).curveTo(9.1,98,-13.9,98).closePath().moveTo(-47.2,59.1).lineTo(-13.9,59.1).curveTo(-0.7,59.1,10.2,54.8).curveTo(21.1,50.7,28.8,42.8).curveTo(36.6,35,40.9,24.3).curveTo(45.2,13.7,45.2,0.5).lineTo(45.2,-0).curveTo(45.2,-12.9,40.9,-23.8).curveTo(36.6,-34.7,28.8,-42.5).curveTo(21.1,-50.5,10.2,-54.7).curveTo(-0.7,-59.1,-13.9,-59.1).lineTo(-47.2,-59.1).closePath();
	this.shape_5.setTransform(0,0.025);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#FF550D").beginStroke().moveTo(-90.3,98).lineTo(-90.3,-98).lineTo(-13.9,-98).curveTo(9.1,-98,28.3,-90.6).curveTo(47.5,-83.1,61.4,-70).curveTo(75.1,-56.9,82.8,-39.1).curveTo(90.3,-21.3,90.3,-0.5).lineTo(90.3,-0).curveTo(90.3,20.8,82.8,38.7).curveTo(75.1,56.6,61.4,69.7).curveTo(47.5,82.8,28.3,90.5).curveTo(9.1,98,-13.9,98).closePath().moveTo(-47.2,59.1).lineTo(-13.9,59.1).curveTo(-0.7,59.1,10.2,54.8).curveTo(21.1,50.7,28.8,42.8).curveTo(36.6,35,40.9,24.3).curveTo(45.2,13.7,45.2,0.5).lineTo(45.2,-0).curveTo(45.2,-12.9,40.9,-23.8).curveTo(36.6,-34.7,28.8,-42.5).curveTo(21.1,-50.5,10.2,-54.7).curveTo(-0.7,-59.1,-13.9,-59.1).lineTo(-47.2,-59.1).closePath();
	this.shape_6.setTransform(0,0.025);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_1}]}).to({state:[{t:this.shape_3},{t:this.shape_2}]},1).to({state:[{t:this.shape_4}]},1).to({state:[{t:this.shape_5}]},1).to({state:[{t:this.shape_6}]},1).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-91.3,-99,182.6,198.1);


(lib.mc_3 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(5));

	// Layer_3
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill().beginStroke("#000000").setStrokeStyle(2,1,1).moveTo(10.2,101.4).curveTo(-11.4,101.4,-29.9,93.6).curveTo(-48.5,85.7,-61.9,72.1).curveTo(-75.3,58.6,-82.9,40).curveTo(-90.5,21.5,-90.5,0.6).lineTo(-90.5,0.1).curveTo(-90.5,-21,-82.9,-39.3).curveTo(-75.3,-57.6,-61.9,-71.6).curveTo(-48.5,-85.4,-29.6,-93.4).curveTo(-10.8,-101.4,11.8,-101.4).curveTo(25.5,-101.4,36.9,-99.2).curveTo(48.2,-96.8,57.5,-93).curveTo(66.7,-89.1,74.6,-83.5).curveTo(82.4,-77.8,89.1,-71.1).lineTo(61.6,-39.4).curveTo(50.1,-49.8,38.2,-55.7).curveTo(26.3,-61.6,11.6,-61.6).curveTo(-0.8,-61.6,-11.3,-56.8).curveTo(-21.8,-52,-29.3,-43.7).curveTo(-37,-35.3,-41.1,-24.3).curveTo(-45.3,-13.2,-45.3,-0.6).lineTo(-45.3,0.1).curveTo(-45.3,12.7,-41.1,23.9).curveTo(-37,34.9,-29.4,43.4).curveTo(-22.1,51.8,-11.6,56.7).curveTo(-1,61.6,11.6,61.6).curveTo(28.4,61.6,40,55.5).curveTo(51.6,49.3,63.1,38.6).lineTo(90.5,66.4).curveTo(83,74.5,74.8,80.9).curveTo(66.7,87.4,57.1,92).curveTo(47.4,96.6,35.9,99.1).curveTo(24.4,101.4,10.2,101.4).closePath();
	this.shape.setTransform(0,0.025);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#FFFFFF").beginStroke().moveTo(40.5,41).curveTo(29,51.7,17.4,57.9).curveTo(5.8,64,-11,64).curveTo(-23.6,64,-34.1,59.1).curveTo(-44.6,54.1,-52,45.8).curveTo(-59.6,37.3,-63.7,26.3).curveTo(-67.9,15,-67.9,2.4).lineTo(-67.9,1.8).curveTo(-67.9,-10.8,-63.7,-21.9).curveTo(-59.6,-33,-51.9,-41.3).curveTo(-44.4,-49.6,-33.8,-54.4).curveTo(-23.3,-59.2,-11,-59.2).curveTo(3.7,-59.2,15.6,-53.3).curveTo(27.5,-47.4,39,-37.1).lineTo(66.5,-68.8).lineTo(67.9,68.8).closePath();
	this.shape_1.setTransform(22.575,-2.35);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_1},{t:this.shape}]}).wait(5));

	// Layer_1
	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-29.9,93.6).curveTo(-48.4,85.7,-61.8,72.1).curveTo(-75.2,58.6,-82.9,40).curveTo(-90.5,21.5,-90.5,0.6).lineTo(-90.5,0.1).curveTo(-90.5,-21,-82.9,-39.3).curveTo(-75.2,-57.6,-61.8,-71.6).curveTo(-48.4,-85.4,-29.6,-93.4).curveTo(-10.8,-101.4,11.9,-101.4).curveTo(25.5,-101.4,36.8,-99.2).curveTo(48.2,-96.8,57.5,-93).curveTo(66.7,-89.1,74.6,-83.5).curveTo(82.4,-77.8,89.1,-71.1).lineTo(61.6,-39.4).curveTo(50.1,-49.8,38.2,-55.7).curveTo(26.3,-61.6,11.5,-61.6).curveTo(-0.7,-61.6,-11.3,-56.8).curveTo(-21.8,-52,-29.3,-43.7).curveTo(-37,-35.3,-41.1,-24.3).curveTo(-45.3,-13.2,-45.3,-0.6).lineTo(-45.3,0.1).curveTo(-45.3,12.7,-41.1,23.9).curveTo(-37,34.9,-29.4,43.4).curveTo(-22.1,51.8,-11.5,56.7).curveTo(-1,61.6,11.5,61.6).curveTo(28.4,61.6,40,55.5).curveTo(51.6,49.3,63.1,38.6).lineTo(90.4,66.4).curveTo(82.9,74.5,74.9,80.9).curveTo(66.7,87.4,57.1,92).curveTo(47.4,96.6,35.9,99.1).curveTo(24.4,101.4,10.2,101.4).curveTo(-11.4,101.4,-29.9,93.6).closePath();
	this.shape_2.setTransform(0,0.025);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#5E49BE").beginStroke().moveTo(-29.9,93.6).curveTo(-48.4,85.7,-61.8,72.1).curveTo(-75.2,58.6,-82.9,40).curveTo(-90.5,21.5,-90.5,0.6).lineTo(-90.5,0.1).curveTo(-90.5,-21,-82.9,-39.3).curveTo(-75.2,-57.6,-61.8,-71.6).curveTo(-48.4,-85.4,-29.6,-93.4).curveTo(-10.8,-101.4,11.9,-101.4).curveTo(25.5,-101.4,36.8,-99.2).curveTo(48.2,-96.8,57.5,-93).curveTo(66.7,-89.1,74.6,-83.5).curveTo(82.4,-77.8,89.1,-71.1).lineTo(61.6,-39.4).curveTo(50.1,-49.8,38.2,-55.7).curveTo(26.3,-61.6,11.5,-61.6).curveTo(-0.7,-61.6,-11.3,-56.8).curveTo(-21.8,-52,-29.3,-43.7).curveTo(-37,-35.3,-41.1,-24.3).curveTo(-45.3,-13.2,-45.3,-0.6).lineTo(-45.3,0.1).curveTo(-45.3,12.7,-41.1,23.9).curveTo(-37,34.9,-29.4,43.4).curveTo(-22.1,51.8,-11.5,56.7).curveTo(-1,61.6,11.5,61.6).curveTo(28.4,61.6,40,55.5).curveTo(51.6,49.3,63.1,38.6).lineTo(90.4,66.4).curveTo(82.9,74.5,74.9,80.9).curveTo(66.7,87.4,57.1,92).curveTo(47.4,96.6,35.9,99.1).curveTo(24.4,101.4,10.2,101.4).curveTo(-11.4,101.4,-29.9,93.6).closePath();
	this.shape_3.setTransform(0,0.025);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#F3679A").beginStroke().moveTo(-29.9,93.6).curveTo(-48.4,85.7,-61.8,72.1).curveTo(-75.2,58.6,-82.9,40).curveTo(-90.5,21.5,-90.5,0.6).lineTo(-90.5,0.1).curveTo(-90.5,-21,-82.9,-39.3).curveTo(-75.2,-57.6,-61.8,-71.6).curveTo(-48.4,-85.4,-29.6,-93.4).curveTo(-10.8,-101.4,11.9,-101.4).curveTo(25.5,-101.4,36.8,-99.2).curveTo(48.2,-96.8,57.5,-93).curveTo(66.7,-89.1,74.6,-83.5).curveTo(82.4,-77.8,89.1,-71.1).lineTo(61.6,-39.4).curveTo(50.1,-49.8,38.2,-55.7).curveTo(26.3,-61.6,11.5,-61.6).curveTo(-0.7,-61.6,-11.3,-56.8).curveTo(-21.8,-52,-29.3,-43.7).curveTo(-37,-35.3,-41.1,-24.3).curveTo(-45.3,-13.2,-45.3,-0.6).lineTo(-45.3,0.1).curveTo(-45.3,12.7,-41.1,23.9).curveTo(-37,34.9,-29.4,43.4).curveTo(-22.1,51.8,-11.5,56.7).curveTo(-1,61.6,11.5,61.6).curveTo(28.4,61.6,40,55.5).curveTo(51.6,49.3,63.1,38.6).lineTo(90.4,66.4).curveTo(82.9,74.5,74.9,80.9).curveTo(66.7,87.4,57.1,92).curveTo(47.4,96.6,35.9,99.1).curveTo(24.4,101.4,10.2,101.4).curveTo(-11.4,101.4,-29.9,93.6).closePath();
	this.shape_4.setTransform(0,0.025);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#5FCA1E").beginStroke().moveTo(-29.9,93.6).curveTo(-48.4,85.7,-61.8,72.1).curveTo(-75.2,58.6,-82.9,40).curveTo(-90.5,21.5,-90.5,0.6).lineTo(-90.5,0.1).curveTo(-90.5,-21,-82.9,-39.3).curveTo(-75.2,-57.6,-61.8,-71.6).curveTo(-48.4,-85.4,-29.6,-93.4).curveTo(-10.8,-101.4,11.9,-101.4).curveTo(25.5,-101.4,36.8,-99.2).curveTo(48.2,-96.8,57.5,-93).curveTo(66.7,-89.1,74.6,-83.5).curveTo(82.4,-77.8,89.1,-71.1).lineTo(61.6,-39.4).curveTo(50.1,-49.8,38.2,-55.7).curveTo(26.3,-61.6,11.5,-61.6).curveTo(-0.7,-61.6,-11.3,-56.8).curveTo(-21.8,-52,-29.3,-43.7).curveTo(-37,-35.3,-41.1,-24.3).curveTo(-45.3,-13.2,-45.3,-0.6).lineTo(-45.3,0.1).curveTo(-45.3,12.7,-41.1,23.9).curveTo(-37,34.9,-29.4,43.4).curveTo(-22.1,51.8,-11.5,56.7).curveTo(-1,61.6,11.5,61.6).curveTo(28.4,61.6,40,55.5).curveTo(51.6,49.3,63.1,38.6).lineTo(90.4,66.4).curveTo(82.9,74.5,74.9,80.9).curveTo(66.7,87.4,57.1,92).curveTo(47.4,96.6,35.9,99.1).curveTo(24.4,101.4,10.2,101.4).curveTo(-11.4,101.4,-29.9,93.6).closePath();
	this.shape_5.setTransform(0,0.025);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#FF550D").beginStroke().moveTo(-29.9,93.6).curveTo(-48.4,85.7,-61.8,72.1).curveTo(-75.2,58.6,-82.9,40).curveTo(-90.5,21.5,-90.5,0.6).lineTo(-90.5,0.1).curveTo(-90.5,-21,-82.9,-39.3).curveTo(-75.2,-57.6,-61.8,-71.6).curveTo(-48.4,-85.4,-29.6,-93.4).curveTo(-10.8,-101.4,11.9,-101.4).curveTo(25.5,-101.4,36.8,-99.2).curveTo(48.2,-96.8,57.5,-93).curveTo(66.7,-89.1,74.6,-83.5).curveTo(82.4,-77.8,89.1,-71.1).lineTo(61.6,-39.4).curveTo(50.1,-49.8,38.2,-55.7).curveTo(26.3,-61.6,11.5,-61.6).curveTo(-0.7,-61.6,-11.3,-56.8).curveTo(-21.8,-52,-29.3,-43.7).curveTo(-37,-35.3,-41.1,-24.3).curveTo(-45.3,-13.2,-45.3,-0.6).lineTo(-45.3,0.1).curveTo(-45.3,12.7,-41.1,23.9).curveTo(-37,34.9,-29.4,43.4).curveTo(-22.1,51.8,-11.5,56.7).curveTo(-1,61.6,11.5,61.6).curveTo(28.4,61.6,40,55.5).curveTo(51.6,49.3,63.1,38.6).lineTo(90.4,66.4).curveTo(82.9,74.5,74.9,80.9).curveTo(66.7,87.4,57.1,92).curveTo(47.4,96.6,35.9,99.1).curveTo(24.4,101.4,10.2,101.4).curveTo(-11.4,101.4,-29.9,93.6).closePath();
	this.shape_6.setTransform(0,0.025);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_2}]}).to({state:[{t:this.shape_3}]},1).to({state:[{t:this.shape_4}]},1).to({state:[{t:this.shape_5}]},1).to({state:[{t:this.shape_6}]},1).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-91.4,-102.3,182.9,204.7);


(lib.mc_2 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(5));

	// Layer_3
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill().beginStroke("#000000").setStrokeStyle(2,1,1).moveTo(-1.6,-18.8).curveTo(12.8,-18.8,21.1,-23.8).curveTo(29.6,-28.6,29.6,-39.5).lineTo(29.6,-40.1).curveTo(29.6,-49.9,22.4,-55).curveTo(14.9,-60.3,1.3,-60.3).lineTo(-41.4,-60.3).lineTo(-41.4,-18.8).closePath().moveTo(-83.3,-98).lineTo(7.7,-98).curveTo(41.6,-98,59,-80.6).curveTo(72.4,-67.2,72.4,-47.4).lineTo(72.4,-46.9).curveTo(72.4,-38.4,70.3,-31.9).curveTo(68.2,-25.5,64.8,-20.3).curveTo(61.2,-15.1,56.5,-11.3).curveTo(52,-7.3,46.7,-4.6).curveTo(63.8,1.9,73.5,12.9).curveTo(83.3,24,83.3,43.6).lineTo(83.3,44.2).curveTo(83.3,57.6,78.2,67.8).curveTo(73,77.8,63.4,84.5).curveTo(53.6,91.3,40,94.5).curveTo(26.4,98,9.9,98).lineTo(-83.3,98).closePath().moveTo(9.9,60.2).curveTo(24.3,60.2,32.5,55).curveTo(40.5,49.9,40.5,38.9).lineTo(40.5,38.4).curveTo(40.5,28.5,33,22.8).curveTo(25.4,17,8.6,17).lineTo(-41.4,17).lineTo(-41.4,60.2).closePath();

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-40.9,60.2).lineTo(-40.9,17).lineTo(9,17).curveTo(25.7,17,33.4,22.8).curveTo(40.9,28.5,41,38.4).lineTo(41,38.9).curveTo(41,49.9,32.9,55).curveTo(24.6,60.2,10.3,60.2).closePath().moveTo(-40.9,-18.8).lineTo(-40.9,-60.2).lineTo(1.7,-60.2).curveTo(15.4,-60.2,22.7,-55).curveTo(30,-49.8,30,-40.1).lineTo(30,-39.4).curveTo(30,-28.6,21.5,-23.7).curveTo(13.2,-18.8,-1.2,-18.8).closePath();
	this.shape_1.setTransform(-0.4,-0.025);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_1},{t:this.shape}]}).wait(5));

	// Layer_1
	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-83.3,97.9).lineTo(-83.3,-97.9).lineTo(7.7,-97.9).curveTo(41.7,-97.9,59,-80.6).curveTo(72.4,-67.2,72.4,-47.4).lineTo(72.4,-46.9).curveTo(72.4,-38.3,70.4,-32).curveTo(68.2,-25.5,64.7,-20.3).curveTo(61.2,-15.1,56.5,-11.3).curveTo(52,-7.3,46.7,-4.6).curveTo(63.8,2,73.5,12.9).curveTo(83.3,24,83.3,43.6).lineTo(83.3,44.2).curveTo(83.3,57.6,78.1,67.8).curveTo(72.9,77.8,63.4,84.5).curveTo(53.7,91.2,40,94.6).curveTo(26.4,97.9,9.9,97.9).closePath().moveTo(-41.3,60.2).lineTo(9.9,60.2).curveTo(24.2,60.2,32.5,55).curveTo(40.6,49.8,40.6,38.9).lineTo(40.6,38.3).curveTo(40.5,28.5,33,22.8).curveTo(25.3,17,8.6,17).lineTo(-41.3,17).closePath().moveTo(-41.3,-18.8).lineTo(-1.6,-18.8).curveTo(12.8,-18.8,21.1,-23.8).curveTo(29.6,-28.7,29.6,-39.4).lineTo(29.6,-40.1).curveTo(29.6,-49.8,22.3,-55.1).curveTo(15,-60.3,1.3,-60.2).lineTo(-41.3,-60.2).closePath();

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#5E49BE").beginStroke().moveTo(-83.3,97.9).lineTo(-83.3,-97.9).lineTo(7.7,-97.9).curveTo(41.7,-97.9,59,-80.6).curveTo(72.4,-67.2,72.4,-47.4).lineTo(72.4,-46.9).curveTo(72.4,-38.3,70.4,-32).curveTo(68.2,-25.5,64.7,-20.3).curveTo(61.2,-15.1,56.5,-11.3).curveTo(52,-7.3,46.7,-4.6).curveTo(63.8,2,73.5,12.9).curveTo(83.3,24,83.3,43.6).lineTo(83.3,44.2).curveTo(83.3,57.6,78.1,67.8).curveTo(72.9,77.8,63.4,84.5).curveTo(53.7,91.2,40,94.6).curveTo(26.4,97.9,9.9,97.9).closePath().moveTo(-41.3,60.2).lineTo(9.9,60.2).curveTo(24.2,60.2,32.5,55).curveTo(40.6,49.8,40.6,38.9).lineTo(40.6,38.3).curveTo(40.5,28.5,33,22.8).curveTo(25.3,17,8.6,17).lineTo(-41.3,17).closePath().moveTo(-41.3,-18.8).lineTo(-1.6,-18.8).curveTo(12.8,-18.8,21.1,-23.8).curveTo(29.6,-28.7,29.6,-39.4).lineTo(29.6,-40.1).curveTo(29.6,-49.8,22.3,-55.1).curveTo(15,-60.3,1.3,-60.2).lineTo(-41.3,-60.2).closePath();

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#F3679A").beginStroke().moveTo(-83.3,97.9).lineTo(-83.3,-97.9).lineTo(7.7,-97.9).curveTo(41.7,-97.9,59,-80.6).curveTo(72.4,-67.2,72.4,-47.4).lineTo(72.4,-46.9).curveTo(72.4,-38.3,70.4,-32).curveTo(68.2,-25.5,64.7,-20.3).curveTo(61.2,-15.1,56.5,-11.3).curveTo(52,-7.3,46.7,-4.6).curveTo(63.8,2,73.5,12.9).curveTo(83.3,24,83.3,43.6).lineTo(83.3,44.2).curveTo(83.3,57.6,78.1,67.8).curveTo(72.9,77.8,63.4,84.5).curveTo(53.7,91.2,40,94.6).curveTo(26.4,97.9,9.9,97.9).closePath().moveTo(-41.3,60.2).lineTo(9.9,60.2).curveTo(24.2,60.2,32.5,55).curveTo(40.6,49.8,40.6,38.9).lineTo(40.6,38.3).curveTo(40.5,28.5,33,22.8).curveTo(25.3,17,8.6,17).lineTo(-41.3,17).closePath().moveTo(-41.3,-18.8).lineTo(-1.6,-18.8).curveTo(12.8,-18.8,21.1,-23.8).curveTo(29.6,-28.7,29.6,-39.4).lineTo(29.6,-40.1).curveTo(29.6,-49.8,22.3,-55.1).curveTo(15,-60.3,1.3,-60.2).lineTo(-41.3,-60.2).closePath();

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#5FCA1E").beginStroke().moveTo(-83.3,97.9).lineTo(-83.3,-97.9).lineTo(7.7,-97.9).curveTo(41.7,-97.9,59,-80.6).curveTo(72.4,-67.2,72.4,-47.4).lineTo(72.4,-46.9).curveTo(72.4,-38.3,70.4,-32).curveTo(68.2,-25.5,64.7,-20.3).curveTo(61.2,-15.1,56.5,-11.3).curveTo(52,-7.3,46.7,-4.6).curveTo(63.8,2,73.5,12.9).curveTo(83.3,24,83.3,43.6).lineTo(83.3,44.2).curveTo(83.3,57.6,78.1,67.8).curveTo(72.9,77.8,63.4,84.5).curveTo(53.7,91.2,40,94.6).curveTo(26.4,97.9,9.9,97.9).closePath().moveTo(-41.3,60.2).lineTo(9.9,60.2).curveTo(24.2,60.2,32.5,55).curveTo(40.6,49.8,40.6,38.9).lineTo(40.6,38.3).curveTo(40.5,28.5,33,22.8).curveTo(25.3,17,8.6,17).lineTo(-41.3,17).closePath().moveTo(-41.3,-18.8).lineTo(-1.6,-18.8).curveTo(12.8,-18.8,21.1,-23.8).curveTo(29.6,-28.7,29.6,-39.4).lineTo(29.6,-40.1).curveTo(29.6,-49.8,22.3,-55.1).curveTo(15,-60.3,1.3,-60.2).lineTo(-41.3,-60.2).closePath();

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#FF550D").beginStroke().moveTo(-83.3,97.9).lineTo(-83.3,-97.9).lineTo(7.7,-97.9).curveTo(41.7,-97.9,59,-80.6).curveTo(72.4,-67.2,72.4,-47.4).lineTo(72.4,-46.9).curveTo(72.4,-38.3,70.4,-32).curveTo(68.2,-25.5,64.7,-20.3).curveTo(61.2,-15.1,56.5,-11.3).curveTo(52,-7.3,46.7,-4.6).curveTo(63.8,2,73.5,12.9).curveTo(83.3,24,83.3,43.6).lineTo(83.3,44.2).curveTo(83.3,57.6,78.1,67.8).curveTo(72.9,77.8,63.4,84.5).curveTo(53.7,91.2,40,94.6).curveTo(26.4,97.9,9.9,97.9).closePath().moveTo(-41.3,60.2).lineTo(9.9,60.2).curveTo(24.2,60.2,32.5,55).curveTo(40.6,49.8,40.6,38.9).lineTo(40.6,38.3).curveTo(40.5,28.5,33,22.8).curveTo(25.3,17,8.6,17).lineTo(-41.3,17).closePath().moveTo(-41.3,-18.8).lineTo(-1.6,-18.8).curveTo(12.8,-18.8,21.1,-23.8).curveTo(29.6,-28.7,29.6,-39.4).lineTo(29.6,-40.1).curveTo(29.6,-49.8,22.3,-55.1).curveTo(15,-60.3,1.3,-60.2).lineTo(-41.3,-60.2).closePath();

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_2}]}).to({state:[{t:this.shape_3}]},1).to({state:[{t:this.shape_4}]},1).to({state:[{t:this.shape_5}]},1).to({state:[{t:this.shape_6}]},1).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-84.3,-98.9,168.7,197.9);


(lib.mc_1 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(5));

	// Layer_3
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill().beginStroke("#000000").setStrokeStyle(2,1,1).moveTo(-19.8,-98.7).lineTo(19.9,-98.7).lineTo(103.9,98.7).lineTo(58.8,98.7).lineTo(40.9,54.8).lineTo(-42,54.8).lineTo(-59.9,98.7).lineTo(-103.9,98.7).closePath().moveTo(25.4,16.6).lineTo(-0.6,-46.9).lineTo(-26.6,16.6).closePath();

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-59.4,72.8).lineTo(-41.4,28.9).lineTo(41.4,28.9).lineTo(59.3,72.8).closePath().moveTo(-26.1,-9.3).lineTo(0,-72.8).lineTo(26,-9.3).closePath();
	this.shape_1.setTransform(-0.55,25.9);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_1},{t:this.shape}]}).wait(5));

	// Layer_1
	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#FFFFFF").beginStroke().moveTo(58.8,98.7).lineTo(40.9,54.8).lineTo(-41.9,54.8).lineTo(-59.9,98.7).lineTo(-103.9,98.7).lineTo(-19.8,-98.7).lineTo(19.9,-98.7).lineTo(103.9,98.7).closePath().moveTo(-26.6,16.6).lineTo(25.5,16.6).lineTo(-0.5,-46.9).closePath();

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#5E49BE").beginStroke().moveTo(58.8,98.7).lineTo(40.9,54.8).lineTo(-41.9,54.8).lineTo(-59.9,98.7).lineTo(-103.9,98.7).lineTo(-19.8,-98.7).lineTo(19.9,-98.7).lineTo(103.9,98.7).closePath().moveTo(-26.6,16.6).lineTo(25.5,16.6).lineTo(-0.5,-46.9).closePath();

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#F3679A").beginStroke().moveTo(58.8,98.7).lineTo(40.9,54.8).lineTo(-41.9,54.8).lineTo(-59.9,98.7).lineTo(-103.9,98.7).lineTo(-19.8,-98.7).lineTo(19.9,-98.7).lineTo(103.9,98.7).closePath().moveTo(-26.6,16.6).lineTo(25.5,16.6).lineTo(-0.5,-46.9).closePath();

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#5FCA1E").beginStroke().moveTo(58.8,98.7).lineTo(40.9,54.8).lineTo(-41.9,54.8).lineTo(-59.9,98.7).lineTo(-103.9,98.7).lineTo(-19.8,-98.7).lineTo(19.9,-98.7).lineTo(103.9,98.7).closePath().moveTo(-26.6,16.6).lineTo(25.5,16.6).lineTo(-0.5,-46.9).closePath();

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#FF550D").beginStroke().moveTo(58.8,98.7).lineTo(40.9,54.8).lineTo(-41.9,54.8).lineTo(-59.9,98.7).lineTo(-103.9,98.7).lineTo(-19.8,-98.7).lineTo(19.9,-98.7).lineTo(103.9,98.7).closePath().moveTo(-26.6,16.6).lineTo(25.5,16.6).lineTo(-0.5,-46.9).closePath();

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_2}]}).to({state:[{t:this.shape_3}]},1).to({state:[{t:this.shape_4}]},1).to({state:[{t:this.shape_5}]},1).to({state:[{t:this.shape_6}]},1).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-104.9,-99.7,209.8,199.4);


(lib.feedbackAnim = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}
	this.frame_74 = function() {
		this.stop();
	}
	this.frame_148 = function() {
		this.stop();
	}
	this.frame_221 = function() {
		this.stop();
	}
	this.frame_294 = function() {
		this.stop();
	}
	this.frame_367 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(74).call(this.frame_74).wait(74).call(this.frame_148).wait(73).call(this.frame_221).wait(73).call(this.frame_294).wait(73).call(this.frame_367).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(0,0,1174.1,882.4);


(lib.colorpallet_4 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(2));

	// Layer_2
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill("#FF996A").beginStroke().moveTo(-6.9,21.9).curveTo(-9.7,12.8,-9.7,-0).curveTo(-9.7,-12.8,-6.9,-21.9).curveTo(-4,-30.9,-0,-31).curveTo(4,-30.9,6.8,-21.9).curveTo(9.7,-12.8,9.7,-0).curveTo(9.7,12.8,6.8,21.9).curveTo(4,30.9,-0,30.9).curveTo(-4,30.9,-6.9,21.9).closePath();
	this.shape.setTransform(138.0313,20.4603,1.2535,1.2536,-90);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,3.7).curveTo(-15.9,1.9,-15.9,-0.6).lineTo(-15.9,-5.4).curveTo(-15.9,-3.8,-13.7,-2.4).curveTo(-11.5,-1,-7.7,-0.1).curveTo(-3.9,0.6,-0,0.6).curveTo(3.8,0.6,7.6,-0.1).curveTo(11.4,-1,13.7,-2.4).curveTo(15.9,-3.8,15.9,-5.4).lineTo(15.9,-0.6).curveTo(15.9,1.9,11.3,3.7).curveTo(6.6,5.4,-0,5.4).curveTo(-6.6,5.4,-11.3,3.7).closePath();
	this.shape_1.setTransform(66.6387,20.0215,1.2535,1.2536,-90);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,4).curveTo(-15.9,2.2,-15.9,-0.3).lineTo(-15.9,-5.7).curveTo(-15.9,-4.1,-13.7,-2.7).curveTo(-11.4,-1.3,-7.7,-0.5).curveTo(-3.9,0.2,-0,0.2).curveTo(3.8,0.2,7.6,-0.5).curveTo(11.4,-1.3,13.7,-2.7).curveTo(15.9,-4.1,15.9,-5.7).lineTo(15.9,-0.3).curveTo(15.9,2.2,11.3,4).curveTo(6.6,5.7,-0,5.7).curveTo(-6.6,5.7,-11.3,4).closePath();
	this.shape_2.setTransform(77.357,20.0215,1.2535,1.2536,-90);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,2.8).curveTo(-15.9,0.9,-15.9,-1.5).lineTo(-15.9,-4.5).curveTo(-15.9,-2.8,-13.7,-1.4).curveTo(-11.5,-0,-7.7,0.8).curveTo(-3.9,1.6,-0,1.5).curveTo(3.8,1.6,7.6,0.8).curveTo(11.4,-0,13.7,-1.4).curveTo(15.9,-2.8,15.9,-4.5).lineTo(15.9,-1.5).curveTo(15.9,0.9,11.3,2.8).curveTo(6.6,4.5,-0,4.5).curveTo(-6.6,4.5,-11.3,2.8).closePath();
	this.shape_3.setTransform(192.6257,20.0215,1.2535,1.2536,-90);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,6.6).curveTo(-15.9,4.8,-15.9,2.3).lineTo(-15.9,-8.3).curveTo(-15.9,-6.7,-13.7,-5.2).curveTo(-11.5,-3.8,-7.7,-3).curveTo(-3.9,-2.3,-0,-2.3).curveTo(3.8,-2.3,7.6,-3).curveTo(11.4,-3.8,13.7,-5.2).curveTo(15.9,-6.7,15.9,-8.3).lineTo(15.9,2.3).curveTo(15.9,4.8,11.3,6.6).curveTo(6.6,8.3,-0,8.3).curveTo(-6.6,8.3,-11.3,6.6).closePath();
	this.shape_4.setTransform(205.3184,20.0215,1.2535,1.2536,-90);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#F16E36").beginStroke().moveTo(0.4,16.9).lineTo(-0.7,11.8).curveTo(-3.1,-0.1,-5.5,-15.2).curveTo(-4.2,-15.4,-3.5,-16).curveTo(-2.7,-16.6,-2.7,-17.2).lineTo(-2.7,-17.5).lineTo(5.3,11.8).lineTo(5.5,12.9).curveTo(5.5,15.7,0.7,17.5).closePath();
	this.shape_5.setTransform(24.5491,9.5858,1.2535,1.2536,-90);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#FF8D5B").beginStroke().moveTo(-3.2,14.9).lineTo(-4,14.2).curveTo(-4.4,13.7,-4.4,12.7).curveTo(-4.5,12.5,-2.5,5.8).lineTo(-0.1,-2.4).lineTo(1.8,-9.6).curveTo(3.3,-15.1,3.4,-15.3).lineTo(3.5,-15.2).lineTo(4,-14.8).lineTo(4.5,-14.5).lineTo(1.1,1.5).lineTo(-0.8,9.6).curveTo(-2.3,15.2,-2.5,15.2).lineTo(-2.6,15.3).curveTo(-2.8,15.3,-3.2,14.9).closePath();
	this.shape_6.setTransform(24.1456,29.9253,1.2535,1.2536,-90);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.beginFill("#FF7539").beginStroke().moveTo(-9.4,16.4).curveTo(-13.4,14.7,-13.4,12.2).lineTo(-13.2,11.1).lineTo(-5.2,-18.1).lineTo(-5.2,-17.9).curveTo(-5.2,-17,-3.7,-16.3).curveTo(-2.2,-15.6,0,-15.6).curveTo(2.2,-15.6,3.7,-16.3).curveTo(5.3,-16.9,5.3,-17.9).lineTo(5.2,-18.2).lineTo(13.3,11.1).lineTo(13.2,11.1).curveTo(13.4,11.6,13.4,12.2).curveTo(13.4,14.7,9.5,16.4).curveTo(5.6,18.2,0,18.2).curveTo(-5.6,18.2,-9.4,16.4).closePath();
	this.shape_7.setTransform(25.4266,19.5201,1.2535,1.2536,-90);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.beginFill("#EE6D35").beginStroke().moveTo(-3.7,1.6).curveTo(-5.2,1,-5.2,-0).curveTo(-5.2,-1,-3.7,-1.6).curveTo(-2.2,-2.4,-0,-2.3).curveTo(2.2,-2.4,3.7,-1.6).curveTo(5.2,-1,5.2,-0).curveTo(5.2,1,3.7,1.6).curveTo(2.2,2.4,-0,2.3).curveTo(-2.2,2.4,-3.7,1.6).closePath();
	this.shape_8.setTransform(2.9558,19.4888,1.2535,1.2536,-90);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.beginFill("#E06632").beginStroke().moveTo(-2.2,3.5).curveTo(-3.1,3.2,-3.4,2.8).curveTo(1.3,1,1.3,-1.9).curveTo(1.3,-2.5,1.1,-2.9).lineTo(1.2,-2.9).lineTo(0.8,-4.1).curveTo(3.2,-3.1,3.4,-1.3).lineTo(3.4,-0.9).curveTo(3.4,1.9,-1,4).lineTo(-2.2,3.5).closePath();
	this.shape_9.setTransform(43.0084,4.3523,1.2535,1.2536,-90);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.beginFill("#F16E36").beginStroke().moveTo(-11.8,75.3).curveTo(-7.9,75.2,-6.4,74.8).curveTo(-0.6,73.5,2.2,72.2).curveTo(5.1,70.8,7,68.2).lineTo(7.3,67.5).curveTo(8.6,63.1,8.6,37.9).lineTo(8.2,4.4).lineTo(8.2,-35.7).curveTo(8.2,-66.6,7.7,-70.9).curveTo(7.6,-71.1,7.3,-71.3).curveTo(11.7,-73.3,11.7,-76.1).lineTo(11.7,68.9).curveTo(11.7,71.9,7.1,74).curveTo(2.4,76.1,-4.2,76.1).curveTo(-7.9,76.1,-11.8,75.3).closePath();
	this.shape_10.setTransform(137.4301,14.7567,1.2535,1.2536,-90);

	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.beginFill("#FF8D5B").beginStroke().moveTo(1.2,71.5).curveTo(-0.7,70.9,-1.2,69.1).lineTo(-1.3,-69.4).lineTo(-1.3,-70.5).curveTo(-1.3,-71.6,-1.2,-71.6).lineTo(-0.9,-71.2).lineTo(-0,-70.5).lineTo(0.9,-70).lineTo(0.8,-64.8).curveTo(0.6,-52.4,0.6,5.5).lineTo(0.5,39.1).curveTo(0.5,51,0.8,65.7).curveTo(0.9,69.4,1.2,71).lineTo(1.2,71.6).lineTo(1.2,71.5).closePath();
	this.shape_11.setTransform(137.2191,36.9339,1.2535,1.2536,-90);

	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.beginFill("#EE6D35").beginStroke().moveTo(-11.3,3.8).curveTo(-15.9,1.7,-15.9,-1.3).curveTo(-15.9,-3.9,-11.3,-5).curveTo(-7.7,-5.9,-0,-5.9).curveTo(7.7,-5.9,11.3,-5).curveTo(15.9,-3.9,15.9,-1.3).curveTo(15.9,1.7,11.3,3.8).curveTo(6.6,5.9,-0,5.9).curveTo(-6.6,5.9,-11.3,3.8).closePath();
	this.shape_12.setTransform(43.4471,20.0215,1.2535,1.2536,-90);

	this.shape_13 = new cjs.Shape();
	this.shape_13.graphics.beginFill("#FF7539").beginStroke().moveTo(-11.3,74.3).curveTo(-15.9,72.1,-15.9,69.2).lineTo(-15.9,-76.4).lineTo(15.9,-76.4).lineTo(15.9,69.2).curveTo(15.9,72.1,11.3,74.3).curveTo(6.6,76.4,-0,76.4).curveTo(-6.6,76.4,-11.3,74.3).closePath();
	this.shape_13.setTransform(137.1225,20.0215,1.2535,1.2536,-90);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_13,p:{x:137.1225,y:20.0215}},{t:this.shape_12,p:{x:43.4471,y:20.0215}},{t:this.shape_11,p:{x:137.2191,y:36.9339}},{t:this.shape_10,p:{scaleY:1.2536,x:137.4301,y:14.7567}},{t:this.shape_9,p:{x:43.0084,y:4.3523}},{t:this.shape_8,p:{x:2.9558,y:19.4888}},{t:this.shape_7,p:{x:25.4266,y:19.5201}},{t:this.shape_6,p:{x:24.1456,y:29.9253}},{t:this.shape_5,p:{x:24.5491,y:9.5858}},{t:this.shape_4,p:{x:205.3184,y:20.0215}},{t:this.shape_3,p:{x:192.6257,y:20.0215}},{t:this.shape_2,p:{x:77.357,y:20.0215}},{t:this.shape_1,p:{x:66.6387,y:20.0215}},{t:this.shape,p:{x:138.0313,y:20.4603}}]}).to({state:[{t:this.shape_13,p:{x:117.1138,y:20.0426}},{t:this.shape_12,p:{x:23.4419,y:20.0426}},{t:this.shape_11,p:{x:117.2105,y:36.9539}},{t:this.shape_10,p:{scaleY:1.2535,x:117.4157,y:14.7781}},{t:this.shape_9,p:{x:23.0032,y:4.3743}},{t:this.shape_8,p:{x:-17.0479,y:19.5099}},{t:this.shape_7,p:{x:5.4221,y:19.5412}},{t:this.shape_6,p:{x:4.1411,y:29.9457}},{t:this.shape_5,p:{x:4.5446,y:9.6075}},{t:this.shape_4,p:{x:185.3072,y:20.0426}},{t:this.shape_3,p:{x:172.615,y:20.0426}},{t:this.shape_2,p:{x:57.3506,y:20.0426}},{t:this.shape_1,p:{x:46.6327,y:20.0426}},{t:this.shape,p:{x:118.0227,y:20.4813}}]},1).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-20,0,252.9,40);


(lib.colorpallet_3 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(2));

	// Layer_2
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill("#AAF07F").beginStroke().moveTo(-6.9,21.9).curveTo(-9.7,12.8,-9.7,-0).curveTo(-9.7,-12.8,-6.9,-21.9).curveTo(-4,-30.9,0,-31).curveTo(4,-30.9,6.9,-21.9).curveTo(9.7,-12.8,9.7,-0).curveTo(9.7,12.8,6.9,21.9).curveTo(4,30.9,0,30.9).curveTo(-4,30.9,-6.9,21.9).closePath();
	this.shape.setTransform(137.5752,20.1897,1.2497,1.2512,-90);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.2,3.7).curveTo(-16,1.9,-15.9,-0.6).lineTo(-15.9,-5.4).curveTo(-15.9,-3.8,-13.7,-2.4).curveTo(-11.4,-1,-7.6,-0.1).curveTo(-3.9,0.6,0,0.6).curveTo(3.9,0.6,7.7,-0.1).curveTo(11.5,-1,13.7,-2.4).curveTo(15.9,-3.8,15.9,-5.4).lineTo(15.9,-0.6).curveTo(16,1.9,11.3,3.7).curveTo(6.6,5.4,0,5.4).curveTo(-6.6,5.4,-11.2,3.7).closePath();
	this.shape_1.setTransform(66.3199,19.8148,1.2497,1.2512,-90);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.2,4).curveTo(-16,2.2,-15.9,-0.3).lineTo(-15.9,-5.7).curveTo(-15.9,-4.1,-13.7,-2.7).curveTo(-11.4,-1.3,-7.6,-0.5).curveTo(-3.9,0.2,0,0.2).curveTo(3.9,0.2,7.7,-0.5).curveTo(11.4,-1.3,13.7,-2.7).curveTo(15.9,-4.1,15.9,-5.7).lineTo(15.9,-0.3).curveTo(16,2.2,11.3,4).curveTo(6.6,5.7,0,5.7).curveTo(-6.6,5.7,-11.2,4).closePath();
	this.shape_2.setTransform(77.0176,19.8148,1.2497,1.2512,-90);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.2,2.8).curveTo(-16,0.9,-15.9,-1.5).lineTo(-15.9,-4.5).curveTo(-15.9,-2.8,-13.7,-1.4).curveTo(-11.4,-0,-7.6,0.8).curveTo(-3.9,1.6,0,1.5).curveTo(3.9,1.6,7.7,0.8).curveTo(11.5,-0,13.7,-1.4).curveTo(15.9,-2.8,15.9,-4.5).lineTo(15.9,-1.5).curveTo(16,0.9,11.3,2.8).curveTo(6.6,4.5,0,4.5).curveTo(-6.6,4.5,-11.2,2.8).closePath();
	this.shape_3.setTransform(192.0645,19.8148,1.2497,1.2512,-90);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.2,6.6).curveTo(-16,4.8,-15.9,2.3).lineTo(-15.9,-8.3).curveTo(-15.9,-6.7,-13.7,-5.2).curveTo(-11.4,-3.8,-7.6,-3).curveTo(-3.9,-2.3,0,-2.3).curveTo(3.9,-2.3,7.7,-3).curveTo(11.5,-3.8,13.7,-5.2).curveTo(15.9,-6.7,15.9,-8.3).lineTo(15.9,2.3).curveTo(16,4.8,11.3,6.6).curveTo(6.6,8.3,0,8.3).curveTo(-6.6,8.3,-11.2,6.6).closePath();
	this.shape_4.setTransform(204.7328,19.8148,1.2497,1.2512,-90);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#80D44D").beginStroke().moveTo(0.4,16.9).lineTo(-0.7,11.8).curveTo(-2.4,3.5,-5.5,-15.2).curveTo(-4.3,-15.4,-3.5,-16).curveTo(-2.7,-16.6,-2.7,-17.2).lineTo(-2.8,-17.5).lineTo(5.3,11.8).lineTo(5.5,12.9).curveTo(5.5,15.7,0.7,17.5).closePath();
	this.shape_5.setTransform(24.3112,9.3798,1.2497,1.2512,-90);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#A1F26E").beginStroke().moveTo(-3.2,14.9).lineTo(-4,14.2).curveTo(-4.4,13.6,-4.4,12.7).curveTo(-4.5,12.5,-2.5,5.8).lineTo(-0.1,-2.4).curveTo(3.2,-15.1,3.4,-15.3).lineTo(3.6,-15.2).curveTo(3.7,-14.9,4,-14.8).lineTo(4.5,-14.5).lineTo(1.1,1.5).curveTo(0.5,4.5,-0.8,9.6).curveTo(-2.2,15.2,-2.5,15.2).lineTo(-2.6,15.3).curveTo(-2.8,15.3,-3.2,14.9).closePath();
	this.shape_6.setTransform(23.9085,29.6877,1.2497,1.2512,-90);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.beginFill("#8BE654").beginStroke().moveTo(-9.4,16.4).curveTo(-13.4,14.7,-13.4,12.2).lineTo(-13.2,11.1).lineTo(-5.2,-17.9).curveTo(-5.2,-16.9,-3.7,-16.3).curveTo(-2.2,-15.6,0,-15.6).curveTo(2.1,-15.6,3.6,-16.3).curveTo(5.2,-17,5.2,-17.9).lineTo(5.1,-18.2).lineTo(13.2,11.1).lineTo(13.1,11.1).curveTo(13.4,11.7,13.4,12.2).curveTo(13.4,14.7,9.5,16.4).curveTo(5.6,18.2,0,18.2).curveTo(-5.5,18.2,-9.4,16.4).closePath();
	this.shape_7.setTransform(25.187,19.2524,1.2497,1.2512,-90);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.beginFill("#6BD038").beginStroke().moveTo(-3.7,1.6).curveTo(-5.2,1,-5.2,-0).curveTo(-5.2,-1,-3.7,-1.6).curveTo(-2.1,-2.4,0,-2.3).curveTo(2.2,-2.4,3.7,-1.6).curveTo(5.2,-1,5.2,-0).curveTo(5.2,1,3.7,1.6).curveTo(2.2,2.4,0,2.3).curveTo(-2.1,2.4,-3.7,1.6).closePath();
	this.shape_8.setTransform(2.7594,19.2836,1.2497,1.2512,-90);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.beginFill("#63C134").beginStroke().moveTo(-2.2,3.5).curveTo(-3,3.2,-3.5,2.8).curveTo(1.4,1,1.4,-1.9).lineTo(1.2,-2.9).lineTo(1.2,-2.9).lineTo(0.8,-4.1).curveTo(3.3,-3.1,3.4,-1.3).lineTo(3.4,-0.9).curveTo(3.4,1.9,-1,4).lineTo(-2.2,3.5).closePath();
	this.shape_9.setTransform(42.735,4.1936,1.2497,1.2512,-90);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.beginFill("#80D44D").beginStroke().moveTo(-11.7,75.3).curveTo(-7.9,75.2,-6.4,74.8).curveTo(-0.6,73.5,2.2,72.2).curveTo(5.1,70.8,7,68.2).curveTo(7.2,68,7.3,67.5).curveTo(8.6,63.1,8.6,37.9).lineTo(8.3,4.4).lineTo(8.3,-35.7).curveTo(8.2,-66.6,7.6,-70.9).curveTo(7.6,-71.1,7.3,-71.3).curveTo(11.7,-73.3,11.7,-76.1).lineTo(11.7,68.9).curveTo(11.7,71.9,7.1,74).curveTo(2.4,76.1,-4.2,76.1).curveTo(-8,76.1,-11.7,75.3).closePath();
	this.shape_10.setTransform(136.8636,14.3232,1.2496,1.2511,-90);

	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.beginFill("#A1F26E").beginStroke().moveTo(1.2,71.5).curveTo(-0.7,70.8,-1.1,69.1).curveTo(-1.2,68.8,-1.2,67.2).lineTo(-1.3,-69.4).lineTo(-1.3,-70.5).curveTo(-1.2,-71.6,-1.1,-71.6).lineTo(-0.8,-71.2).lineTo(0,-70.5).curveTo(0.7,-70.1,1,-70).curveTo(1.1,-69.9,0.9,-64.8).curveTo(0.7,-54.5,0.7,5.5).lineTo(0.5,39.1).curveTo(0.5,48.5,0.8,65.7).curveTo(0.9,69.4,1.2,71).curveTo(1.3,71.6,1.2,71.6).lineTo(1.2,71.5).closePath();
	this.shape_11.setTransform(136.7645,36.6544,1.2497,1.2512,-90);

	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.beginFill("#6BD038").beginStroke().moveTo(-11.2,3.8).curveTo(-16,1.7,-15.9,-1.3).curveTo(-16,-3.9,-11.2,-5).curveTo(-7.6,-5.9,0,-5.9).curveTo(7.7,-5.9,11.3,-5).curveTo(16,-3.9,15.9,-1.3).curveTo(16,1.7,11.3,3.8).curveTo(6.6,5.9,0,5.9).curveTo(-6.6,5.9,-11.2,3.8).closePath();
	this.shape_12.setTransform(43.1729,19.8148,1.2497,1.2512,-90);

	this.shape_13 = new cjs.Shape();
	this.shape_13.graphics.beginFill("#8BE654").beginStroke().moveTo(-11.2,74.3).curveTo(-16,72.1,-15.9,69.2).lineTo(-15.9,-76.4).lineTo(15.9,-76.4).lineTo(15.9,69.2).curveTo(16,72.1,11.3,74.3).curveTo(6.6,76.4,0,76.4).curveTo(-6.6,76.4,-11.2,74.3).closePath();
	this.shape_13.setTransform(136.6681,19.8148,1.2497,1.2512,-90);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_13,p:{scaleX:1.2497,scaleY:1.2512,x:136.6681,y:19.8148}},{t:this.shape_12,p:{scaleX:1.2497,scaleY:1.2512,x:43.1729,y:19.8148}},{t:this.shape_11,p:{scaleX:1.2497,scaleY:1.2512,x:136.7645,y:36.6544}},{t:this.shape_10,p:{scaleX:1.2496,scaleY:1.2511,x:136.8636,y:14.3232}},{t:this.shape_9,p:{scaleX:1.2497,scaleY:1.2512,x:42.735,y:4.1936}},{t:this.shape_8,p:{scaleX:1.2497,scaleY:1.2512,x:2.7594,y:19.2836}},{t:this.shape_7,p:{scaleX:1.2497,scaleY:1.2512,x:25.187,y:19.2524}},{t:this.shape_6,p:{scaleX:1.2497,scaleY:1.2512,x:23.9085,y:29.6877}},{t:this.shape_5,p:{scaleX:1.2497,scaleY:1.2512,x:24.3112,y:9.3798}},{t:this.shape_4,p:{scaleX:1.2497,scaleY:1.2512,x:204.7328,y:19.8148}},{t:this.shape_3,p:{scaleX:1.2497,scaleY:1.2512,x:192.0645,y:19.8148}},{t:this.shape_2,p:{scaleX:1.2497,scaleY:1.2512,x:77.0176,y:19.8148}},{t:this.shape_1,p:{scaleX:1.2497,scaleY:1.2512,x:66.3199,y:19.8148}},{t:this.shape,p:{scaleX:1.2497,scaleY:1.2512,x:137.5752,y:20.1897}}]}).to({state:[{t:this.shape_13,p:{scaleX:1.2496,scaleY:1.2511,x:116.8094,y:20.0528}},{t:this.shape_12,p:{scaleX:1.2496,scaleY:1.2511,x:23.3177,y:20.0528}},{t:this.shape_11,p:{scaleX:1.2496,scaleY:1.2511,x:116.9059,y:36.8914}},{t:this.shape_10,p:{scaleX:1.2495,scaleY:1.251,x:116.8934,y:14.4769}},{t:this.shape_9,p:{scaleX:1.2496,scaleY:1.2511,x:22.8798,y:4.4326}},{t:this.shape_8,p:{scaleX:1.2496,scaleY:1.2511,x:-17.0943,y:19.5217}},{t:this.shape_7,p:{scaleX:1.2496,scaleY:1.2511,x:5.3325,y:19.4905}},{t:this.shape_6,p:{scaleX:1.2496,scaleY:1.2511,x:4.054,y:29.9251}},{t:this.shape_5,p:{scaleX:1.2496,scaleY:1.2511,x:4.4567,y:9.6185}},{t:this.shape_4,p:{scaleX:1.2496,scaleY:1.2511,x:184.8717,y:20.0528}},{t:this.shape_3,p:{scaleX:1.2496,scaleY:1.2511,x:172.2039,y:20.0528}},{t:this.shape_2,p:{scaleX:1.2496,scaleY:1.2511,x:57.1611,y:20.0528}},{t:this.shape_1,p:{scaleX:1.2496,scaleY:1.2511,x:46.4638,y:20.0528}},{t:this.shape,p:{scaleX:1.2496,scaleY:1.2511,x:117.7165,y:20.4277}}]},1).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-20,0,252.4,40.1);


(lib.colorpallet_2 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(2));

	// Layer_3
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill("#FD95BB").beginStroke().moveTo(-6.9,21.9).curveTo(-9.7,12.9,-9.7,-0).curveTo(-9.7,-12.8,-6.9,-21.9).curveTo(-4,-30.9,-0,-31).curveTo(4,-30.9,6.9,-21.9).curveTo(9.7,-12.8,9.7,-0).curveTo(9.7,12.9,6.9,21.9).curveTo(4,30.9,-0,30.9).curveTo(-4,30.9,-6.9,21.9).closePath();
	this.shape.setTransform(138.0111,20.4472,1.2534,1.2535,-90);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,3.7).curveTo(-15.9,1.9,-16,-0.6).lineTo(-16,-5.4).curveTo(-15.9,-3.8,-13.6,-2.4).curveTo(-11.4,-1,-7.7,-0.1).curveTo(-3.9,0.6,-0,0.6).curveTo(3.9,0.6,7.6,-0.1).curveTo(11.4,-1,13.6,-2.4).curveTo(15.9,-3.8,16,-5.4).lineTo(16,-0.6).curveTo(15.9,1.9,11.3,3.7).curveTo(6.6,5.4,-0,5.4).curveTo(-6.6,5.4,-11.3,3.7).closePath();
	this.shape_1.setTransform(66.6246,20.0398,1.2534,1.2535,-90);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,4).curveTo(-15.9,2.2,-16,-0.3).lineTo(-16,-5.7).curveTo(-15.9,-4.1,-13.6,-2.7).curveTo(-11.4,-1.3,-7.7,-0.5).curveTo(-3.9,0.2,-0,0.2).curveTo(3.9,0.2,7.6,-0.5).curveTo(11.4,-1.3,13.6,-2.7).curveTo(15.9,-4.1,16,-5.7).lineTo(16,-0.3).curveTo(15.9,2.2,11.3,4).curveTo(6.6,5.7,-0,5.7).curveTo(-6.6,5.7,-11.3,4).closePath();
	this.shape_2.setTransform(77.342,20.0398,1.2534,1.2535,-90);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,2.8).curveTo(-15.9,0.9,-16,-1.5).lineTo(-16,-4.5).curveTo(-15.9,-2.8,-13.6,-1.4).curveTo(-11.4,-0,-7.7,0.8).curveTo(-3.9,1.6,-0,1.5).curveTo(3.9,1.6,7.6,0.8).curveTo(11.4,-0,13.6,-1.4).curveTo(15.9,-2.8,16,-4.5).lineTo(16,-1.5).curveTo(15.9,0.9,11.3,2.8).curveTo(6.6,4.5,-0,4.5).curveTo(-6.6,4.5,-11.3,2.8).closePath();
	this.shape_3.setTransform(192.6008,20.0398,1.2534,1.2535,-90);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,6.6).curveTo(-15.9,4.8,-16,2.3).lineTo(-16,-8.3).curveTo(-15.9,-6.7,-13.6,-5.2).curveTo(-11.4,-3.8,-7.7,-3).curveTo(-3.9,-2.3,-0,-2.3).curveTo(3.9,-2.3,7.6,-3).curveTo(11.4,-3.8,13.6,-5.2).curveTo(15.9,-6.7,16,-8.3).lineTo(16,2.3).curveTo(15.9,4.8,11.3,6.6).curveTo(6.6,8.3,-0,8.3).curveTo(-6.6,8.3,-11.3,6.6).closePath();
	this.shape_4.setTransform(205.2924,20.0398,1.2534,1.2535,-90);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#E15F8F").beginStroke().moveTo(0.4,16.9).curveTo(-0,15.1,-0.6,11.8).curveTo(-2.3,3.5,-5.5,-15.2).curveTo(-4.2,-15.4,-3.5,-16).curveTo(-2.7,-16.6,-2.7,-17.2).lineTo(-2.7,-17.5).lineTo(5.3,11.8).lineTo(5.5,12.9).curveTo(5.5,15.7,0.7,17.5).closePath();
	this.shape_5.setTransform(24.5385,9.6053,1.2534,1.2535,-90);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#FF83B1").beginStroke().moveTo(-3.2,14.9).lineTo(-4,14.2).curveTo(-4.4,13.7,-4.4,12.7).curveTo(-4.5,12.5,-2.5,5.8).lineTo(-0.1,-2.4).curveTo(3.3,-15.1,3.4,-15.3).lineTo(3.5,-15.2).lineTo(4,-14.8).lineTo(4.5,-14.5).lineTo(1,1.5).lineTo(-0.8,9.6).curveTo(-2.3,15.2,-2.5,15.2).lineTo(-2.6,15.3).curveTo(-2.8,15.3,-3.2,14.9).closePath();
	this.shape_6.setTransform(24.1351,29.942,1.2534,1.2535,-90);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.beginFill("#F3679A").beginStroke().moveTo(-9.4,16.4).curveTo(-13.4,14.7,-13.4,12.2).lineTo(-13.2,11.1).lineTo(-5.2,-17.9).curveTo(-5.2,-17,-3.7,-16.3).curveTo(-2.2,-15.6,0,-15.6).curveTo(2.2,-15.6,3.7,-16.3).curveTo(5.2,-16.9,5.2,-17.9).lineTo(5.2,-18.2).lineTo(13.2,11.1).lineTo(13.2,11.1).curveTo(13.4,11.6,13.4,12.2).curveTo(13.4,14.7,9.5,16.4).curveTo(5.6,18.2,0,18.2).curveTo(-5.5,18.2,-9.4,16.4).closePath();
	this.shape_7.setTransform(25.416,19.5385,1.2534,1.2535,-90);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.beginFill("#DD4978").beginStroke().moveTo(-3.7,1.6).curveTo(-5.2,1,-5.2,-0).curveTo(-5.2,-1,-3.7,-1.6).curveTo(-2.2,-2.4,-0,-2.3).curveTo(2.2,-2.4,3.7,-1.6).curveTo(5.2,-1,5.2,-0).curveTo(5.2,1,3.7,1.6).curveTo(2.2,2.4,-0,2.3).curveTo(-2.2,2.4,-3.7,1.6).closePath();
	this.shape_8.setTransform(2.9471,19.5071,1.2534,1.2535,-90);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.beginFill("#C9436D").beginStroke().moveTo(-2.2,3.5).curveTo(-3.1,3.2,-3.5,2.8).curveTo(1.3,1,1.3,-1.9).curveTo(1.3,-2.5,1.1,-2.9).lineTo(1.1,-2.9).lineTo(0.9,-4.1).curveTo(3.2,-3.1,3.4,-1.3).lineTo(3.5,-0.9).curveTo(3.5,1.9,-0.9,4).lineTo(-2.2,3.5).closePath();
	this.shape_9.setTransform(42.9962,4.3723,1.2534,1.2535,-90);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.beginFill("#E15F8F").beginStroke().moveTo(-11.7,75.3).curveTo(-7.9,75.2,-6.4,74.8).curveTo(-0.6,73.5,2.2,72.2).curveTo(5.1,70.8,7,68.2).curveTo(7.3,67.9,7.4,67.5).curveTo(8.7,63.1,8.6,37.9).lineTo(8.3,4.4).lineTo(8.3,-35.7).curveTo(8.2,-66.6,7.6,-70.9).lineTo(7.4,-71.3).curveTo(11.7,-73.3,11.8,-76.1).lineTo(11.8,68.9).curveTo(11.7,71.9,7.1,74).curveTo(2.4,76.1,-4.2,76.1).curveTo(-7.9,76.1,-11.7,75.3).closePath();
	this.shape_10.setTransform(137.3927,14.7802,1.2534,1.2534,-90);

	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.beginFill("#FF83B1").beginStroke().moveTo(1.2,71.5).curveTo(-0.7,70.9,-1.2,69.1).lineTo(-1.3,-69.4).lineTo(-1.3,-70.5).curveTo(-1.2,-71.6,-1.1,-71.6).lineTo(-0.8,-71.2).lineTo(-0,-70.5).curveTo(0.7,-70.1,1,-70).curveTo(1.1,-69.9,0.8,-64.8).curveTo(0.7,-55.5,0.7,5.5).lineTo(0.5,39.1).lineTo(0.8,65.7).curveTo(0.9,69.4,1.2,71).lineTo(1.2,71.6).lineTo(1.2,71.5).closePath();
	this.shape_11.setTransform(137.199,36.9503,1.2534,1.2535,-90);

	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.beginFill("#DD4978").beginStroke().moveTo(-11.3,3.8).curveTo(-15.9,1.7,-16,-1.3).curveTo(-15.9,-3.9,-11.3,-5).curveTo(-7.6,-5.9,-0,-5.9).curveTo(7.6,-5.9,11.3,-5).curveTo(15.9,-3.9,16,-1.3).curveTo(15.9,1.7,11.3,3.8).curveTo(6.6,5.9,-0,5.9).curveTo(-6.6,5.9,-11.3,3.8).closePath();
	this.shape_12.setTransform(43.435,20.0398,1.2534,1.2535,-90);

	this.shape_13 = new cjs.Shape();
	this.shape_13.graphics.beginFill("#F3679A").beginStroke().moveTo(-11.3,74.3).curveTo(-15.9,72.1,-16,69.2).lineTo(-16,-76.4).lineTo(16,-76.4).lineTo(16,69.2).curveTo(15.9,72.1,11.3,74.3).curveTo(6.6,76.4,-0,76.4).curveTo(-6.6,76.4,-11.3,74.3).closePath();
	this.shape_13.setTransform(137.1023,20.0398,1.2534,1.2535,-90);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_13,p:{scaleY:1.2535,x:137.1023,y:20.0398}},{t:this.shape_12,p:{scaleY:1.2535,x:43.435,y:20.0398}},{t:this.shape_11,p:{scaleY:1.2535,x:137.199,y:36.9503}},{t:this.shape_10,p:{scaleX:1.2534,scaleY:1.2534,x:137.3927,y:14.7802}},{t:this.shape_9,p:{scaleY:1.2535,x:42.9962,y:4.3723}},{t:this.shape_8,p:{scaleY:1.2535,x:2.9471,y:19.5071}},{t:this.shape_7,p:{scaleY:1.2535,x:25.416,y:19.5385}},{t:this.shape_6,p:{scaleY:1.2535,x:24.1351,y:29.942}},{t:this.shape_5,p:{scaleY:1.2535,x:24.5385,y:9.6053}},{t:this.shape_4,p:{scaleY:1.2535,x:205.2924,y:20.0398}},{t:this.shape_3,p:{scaleY:1.2535,x:192.6008,y:20.0398}},{t:this.shape_2,p:{scaleY:1.2535,x:77.342,y:20.0398}},{t:this.shape_1,p:{scaleY:1.2535,x:66.6246,y:20.0398}},{t:this.shape,p:{scaleY:1.2535,x:138.0111,y:20.4472}}]}).to({state:[{t:this.shape_13,p:{scaleY:1.2534,x:117.0908,y:20.0428}},{t:this.shape_12,p:{scaleY:1.2534,x:23.428,y:20.0428}},{t:this.shape_11,p:{scaleY:1.2534,x:117.1874,y:36.9529}},{t:this.shape_10,p:{scaleX:1.2533,scaleY:1.2533,x:117.3754,y:14.7849}},{t:this.shape_9,p:{scaleY:1.2534,x:22.9893,y:4.3757}},{t:this.shape_8,p:{scaleY:1.2534,x:-17.0579,y:19.5102}},{t:this.shape_7,p:{scaleY:1.2534,x:5.4099,y:19.5415}},{t:this.shape_6,p:{scaleY:1.2534,x:4.1291,y:29.9448}},{t:this.shape_5,p:{scaleY:1.2534,x:4.5325,y:9.6085}},{t:this.shape_4,p:{scaleY:1.2534,x:185.2776,y:20.0428}},{t:this.shape_3,p:{scaleY:1.2534,x:172.5866,y:20.0428}},{t:this.shape_2,p:{scaleY:1.2534,x:57.3334,y:20.0428}},{t:this.shape_1,p:{scaleY:1.2534,x:46.6165,y:20.0428}},{t:this.shape,p:{scaleY:1.2534,x:117.9996,y:20.4502}}]},1).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-20,0.1,252.9,40);


(lib.colorpallet_1 = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_0 = function() {
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).call(this.frame_0).wait(2));

	// Layer_3
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill("#A38CEB").beginStroke().moveTo(-6.9,21.9).curveTo(-9.7,12.8,-9.7,0).curveTo(-9.7,-12.9,-6.9,-21.9).curveTo(-4,-31,-0,-31).curveTo(4,-31,6.8,-21.9).curveTo(9.7,-12.8,9.7,0).curveTo(9.7,12.8,6.8,21.9).curveTo(4,31,-0,31).curveTo(-4,31,-6.9,21.9).closePath();
	this.shape.setTransform(137.9697,20.4358,1.2551,1.2535,-90);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,3.7).curveTo(-15.9,1.9,-15.9,-0.6).lineTo(-15.9,-5.4).curveTo(-15.9,-3.8,-13.7,-2.4).curveTo(-11.4,-1,-7.7,-0.2).curveTo(-4.2,0.6,0,0.5).curveTo(4.3,0.6,7.6,-0.2).curveTo(11.4,-1,13.7,-2.4).curveTo(15.9,-3.8,15.9,-5.4).lineTo(15.9,-0.6).curveTo(15.9,1.9,11.3,3.7).curveTo(6.6,5.5,0,5.5).curveTo(-6.6,5.5,-11.3,3.7).closePath();
	this.shape_1.setTransform(66.5849,20.0279,1.2551,1.2535,-90);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,4).curveTo(-15.9,2.2,-15.9,-0.3).lineTo(-15.9,-5.8).curveTo(-15.9,-4.1,-13.7,-2.7).curveTo(-11.5,-1.3,-7.7,-0.5).curveTo(-3.9,0.3,0,0.3).curveTo(3.9,0.3,7.6,-0.5).curveTo(11.5,-1.3,13.7,-2.7).curveTo(15.9,-4.1,15.9,-5.8).lineTo(15.9,-0.3).curveTo(15.9,2.2,11.3,4).curveTo(6.6,5.8,0,5.8).curveTo(-6.6,5.8,-11.3,4).closePath();
	this.shape_2.setTransform(77.2707,20.0279,1.2551,1.2535,-90);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,2.7).curveTo(-15.9,1,-15.9,-1.5).lineTo(-15.9,-4.5).curveTo(-15.9,-2.8,-13.7,-1.4).curveTo(-11.5,-0,-7.7,0.8).curveTo(-4.1,1.5,0,1.5).curveTo(4.1,1.5,7.6,0.8).curveTo(11.5,-0,13.7,-1.4).curveTo(15.9,-2.8,15.9,-4.5).lineTo(15.9,-1.5).curveTo(15.9,1,11.3,2.7).curveTo(6.6,4.5,0,4.5).curveTo(-6.6,4.5,-11.3,2.7).closePath();
	this.shape_3.setTransform(192.558,20.0279,1.2551,1.2535,-90);

	this.shape_4 = new cjs.Shape();
	this.shape_4.graphics.beginFill("#1E2829").beginStroke().moveTo(-11.3,6.6).curveTo(-15.9,4.8,-15.9,2.3).lineTo(-15.9,-8.3).curveTo(-15.9,-6.7,-13.7,-5.2).curveTo(-11.5,-3.8,-7.7,-3).curveTo(-4.1,-2.3,0,-2.3).curveTo(4.1,-2.3,7.6,-3).curveTo(11.5,-3.8,13.7,-5.2).curveTo(15.9,-6.7,15.9,-8.3).lineTo(15.9,2.3).curveTo(15.9,4.8,11.3,6.6).curveTo(6.6,8.3,0,8.3).curveTo(-6.6,8.3,-11.3,6.6).closePath();
	this.shape_4.setTransform(205.2494,20.0279,1.2551,1.2535,-90);

	this.shape_5 = new cjs.Shape();
	this.shape_5.graphics.beginFill("#7364BC").beginStroke().moveTo(0.4,16.8).lineTo(-0.7,11.8).curveTo(-2.4,3.2,-5.5,-15.2).curveTo(-2.7,-15.9,-2.7,-17.2).lineTo(-2.7,-17.5).lineTo(5.3,11.8).lineTo(5.5,12.9).curveTo(5.5,15.7,0.7,17.5).curveTo(0.5,17.2,0.4,16.8).closePath();
	this.shape_5.setTransform(24.4999,9.5791,1.2551,1.2535,-90);

	this.shape_6 = new cjs.Shape();
	this.shape_6.graphics.beginFill("#8574DA").beginStroke().moveTo(-3.2,14.9).lineTo(-4,14.2).curveTo(-4.4,13.6,-4.4,12.7).curveTo(-4.5,12.5,-2.5,5.8).lineTo(-0.1,-2.4).lineTo(1.8,-9.6).curveTo(3.3,-15.2,3.4,-15.3).lineTo(3.5,-15.2).lineTo(4,-14.8).lineTo(4.5,-14.5).lineTo(1.1,1.4).curveTo(0.5,4.3,-0.8,9.6).curveTo(-2.3,15.2,-2.5,15.2).lineTo(-2.6,15.3).curveTo(-2.8,15.3,-3.2,14.9).closePath();
	this.shape_6.setTransform(24.0964,29.944,1.2551,1.2535,-90);

	this.shape_7 = new cjs.Shape();
	this.shape_7.graphics.beginFill("#7B6BCA").beginStroke().moveTo(-9.5,16.4).curveTo(-13.4,14.7,-13.4,12.2).lineTo(-13.2,11.1).lineTo(-5.2,-18.1).lineTo(-5.2,-17.9).curveTo(-5.2,-17,-3.6,-16.3).curveTo(-2.1,-15.6,-0,-15.6).curveTo(2.2,-15.6,3.7,-16.3).curveTo(5.3,-16.9,5.3,-17.9).lineTo(5.2,-18.2).lineTo(13.3,11.1).lineTo(13.2,11.1).curveTo(13.4,11.6,13.4,12.2).curveTo(13.4,14.7,9.5,16.4).curveTo(5.6,18.2,-0,18.2).curveTo(-5.6,18.2,-9.5,16.4).closePath();
	this.shape_7.setTransform(25.3773,19.5258,1.2551,1.2535,-90);

	this.shape_8 = new cjs.Shape();
	this.shape_8.graphics.beginFill("#6F61B6").beginStroke().moveTo(-3.7,1.6).curveTo(-5.2,0.9,-5.2,0).curveTo(-5.2,-0.9,-3.7,-1.7).curveTo(-2.2,-2.3,-0,-2.3).curveTo(2.2,-2.3,3.7,-1.7).curveTo(5.2,-0.9,5.2,0).curveTo(5.2,1,3.7,1.6).curveTo(2.2,2.4,-0,2.4).curveTo(-2.2,2.4,-3.7,1.6).closePath();
	this.shape_8.setTransform(2.909,19.4944,1.2551,1.2535,-90);

	this.shape_9 = new cjs.Shape();
	this.shape_9.graphics.beginFill("#675AA8").beginStroke().moveTo(-2.2,3.5).curveTo(-3.1,3.2,-3.4,2.7).curveTo(1.3,0.9,1.3,-1.9).curveTo(1.3,-2.4,1.1,-2.9).lineTo(1.2,-2.9).lineTo(0.8,-4).curveTo(3.2,-3.1,3.4,-1.3).lineTo(3.4,-0.9).curveTo(3.4,1.9,-1,4.1).lineTo(-2.2,3.5).closePath();
	this.shape_9.setTransform(42.9571,4.339,1.2551,1.2535,-90);

	this.shape_10 = new cjs.Shape();
	this.shape_10.graphics.beginFill("#7364BC").beginStroke().moveTo(-11.8,75.3).curveTo(-7.6,75.1,-6.4,74.8).curveTo(-0.6,73.6,2.2,72.2).curveTo(5.1,70.8,7,68.3).curveTo(7.3,67.9,7.3,67.5).curveTo(8.6,63.2,8.6,37.9).lineTo(8.3,4.5).lineTo(8.3,-35.7).curveTo(8.2,-66.6,7.7,-70.9).curveTo(7.6,-71.1,7.3,-71.2).curveTo(11.7,-73.3,11.7,-76.1).lineTo(11.7,69).curveTo(11.7,71.9,7.1,74).curveTo(2.4,76.1,-4.2,76.1).curveTo(-8.2,76.1,-11.8,75.3).closePath();
	this.shape_10.setTransform(137.3362,14.7708,1.2551,1.2534,-90);

	this.shape_11 = new cjs.Shape();
	this.shape_11.graphics.beginFill("#8574DA").beginStroke().moveTo(1.2,71.5).curveTo(-0.7,70.9,-1.2,69.1).lineTo(-1.3,-69.4).lineTo(-1.3,-70.5).curveTo(-1.3,-71.6,-1.2,-71.6).lineTo(-0.9,-71.2).lineTo(-0,-70.5).curveTo(0.7,-70.1,1,-70).lineTo(0.8,-64.8).curveTo(0.6,-52.4,0.6,5.5).lineTo(0.5,39.1).lineTo(0.8,65.7).curveTo(0.9,69.4,1.2,71).lineTo(1.2,71.6).lineTo(1.2,71.5).closePath();
	this.shape_11.setTransform(137.1562,36.9614,1.2551,1.2535,-90);

	this.shape_12 = new cjs.Shape();
	this.shape_12.graphics.beginFill("#6F61B6").beginStroke().moveTo(-11.3,3.8).curveTo(-15.9,1.7,-15.9,-1.2).curveTo(-15.9,-4,-11.3,-5).curveTo(-7.7,-5.9,0,-5.9).curveTo(7.7,-5.9,11.3,-5).curveTo(15.9,-4,15.9,-1.2).curveTo(15.9,1.7,11.3,3.8).curveTo(6.6,5.9,0,5.9).curveTo(-6.6,5.9,-11.3,3.8).closePath();
	this.shape_12.setTransform(43.3958,20.0279,1.2551,1.2535,-90);

	this.shape_13 = new cjs.Shape();
	this.shape_13.graphics.beginFill("#7B6BCA").beginStroke().moveTo(-11.3,74.3).curveTo(-15.9,72.1,-15.9,69.2).lineTo(-15.9,-76.4).lineTo(15.9,-76.4).lineTo(15.9,69.2).curveTo(15.9,72.1,11.3,74.3).curveTo(6.6,76.3,0,76.4).curveTo(-6.6,76.3,-11.3,74.3).closePath();
	this.shape_13.setTransform(137.0296,20.0279,1.2551,1.2535,-90);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_13,p:{scaleY:1.2535,x:137.0296,y:20.0279}},{t:this.shape_12,p:{scaleY:1.2535,x:43.3958,y:20.0279}},{t:this.shape_11,p:{scaleY:1.2535,x:137.1562,y:36.9614}},{t:this.shape_10,p:{scaleX:1.2551,x:137.3362,y:14.7708}},{t:this.shape_9,p:{scaleY:1.2535,x:42.9571,y:4.339}},{t:this.shape_8,p:{scaleY:1.2535,x:2.909,y:19.4944}},{t:this.shape_7,p:{scaleY:1.2535,x:25.3773,y:19.5258}},{t:this.shape_6,p:{scaleY:1.2535,x:24.0964,y:29.944}},{t:this.shape_5,p:{scaleY:1.2535,x:24.4999,y:9.5791}},{t:this.shape_4,p:{scaleY:1.2535,x:205.2494,y:20.0279}},{t:this.shape_3,p:{scaleY:1.2535,x:192.558,y:20.0279}},{t:this.shape_2,p:{scaleY:1.2535,x:77.2707,y:20.0279}},{t:this.shape_1,p:{scaleY:1.2535,x:66.5849,y:20.0279}},{t:this.shape,p:{scaleY:1.2535,x:137.9697,y:20.4358}}]}).to({state:[{t:this.shape_13,p:{scaleY:1.2534,x:117.0459,y:20.042}},{t:this.shape_12,p:{scaleY:1.2534,x:23.4179,y:20.042}},{t:this.shape_11,p:{scaleY:1.2534,x:117.1725,y:36.9747}},{t:this.shape_10,p:{scaleX:1.255,x:117.3525,y:14.7888}},{t:this.shape_9,p:{scaleY:1.2534,x:22.9792,y:4.3539}},{t:this.shape_8,p:{scaleY:1.2534,x:-17.0666,y:19.5086}},{t:this.shape_7,p:{scaleY:1.2534,x:5.4004,y:19.54}},{t:this.shape_6,p:{scaleY:1.2534,x:4.1196,y:29.9577}},{t:this.shape_5,p:{scaleY:1.2534,x:4.523,y:9.5937}},{t:this.shape_4,p:{scaleY:1.2534,x:185.2615,y:20.042}},{t:this.shape_3,p:{scaleY:1.2534,x:172.571,y:20.042}},{t:this.shape_2,p:{scaleY:1.2534,x:57.2907,y:20.042}},{t:this.shape_1,p:{scaleY:1.2534,x:46.6055,y:20.042}},{t:this.shape,p:{scaleY:1.2534,x:117.9859,y:20.4499}}]},1).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-20,0,252.8,40.1);


(lib.btn_Play = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_2
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill().beginStroke("#C74839").setStrokeStyle(5,1,1).moveTo(73.3,0).curveTo(73.3,30.4,51.8,51.8).curveTo(30.4,73.3,0,73.3).curveTo(-30.4,73.3,-51.8,51.8).curveTo(-73.3,30.4,-73.3,0).curveTo(-73.3,-30.4,-51.8,-51.8).curveTo(-30.4,-73.3,0,-73.3).curveTo(30.4,-73.3,51.8,-51.8).curveTo(73.3,-30.4,73.3,0).closePath().moveTo(-21,-30).lineTo(-21,30).lineTo(31,0).closePath();

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#C74839").beginStroke().moveTo(-26,-30).lineTo(26,0).lineTo(-26,30).closePath();
	this.shape_1.setTransform(5,0);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-51.8,51.8).curveTo(-73.2,30.3,-73.3,0).curveTo(-73.2,-30.3,-51.8,-51.8).curveTo(-30.3,-73.2,0,-73.3).curveTo(30.3,-73.2,51.8,-51.8).curveTo(73.2,-30.3,73.3,0).curveTo(73.2,30.3,51.8,51.8).curveTo(30.3,73.2,0,73.3).curveTo(-30.3,73.2,-51.8,51.8).closePath().moveTo(-21,30).lineTo(31,0).lineTo(-21,-30).closePath();

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(1));

	// Layer_1
	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("rgba(0,0,0,0.698)").beginStroke().moveTo(-512,384).lineTo(-512,-384).lineTo(512,-384).lineTo(512,384).closePath();

	this.timeline.addTween(cjs.Tween.get(this.shape_3).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-512,-384,1024,768);


(lib.colorpallet_mc = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_3
	this.colorpallet_4 = new lib.colorpallet_4();
	this.colorpallet_4.name = "colorpallet_4";
	this.colorpallet_4.parent = this;
	this.colorpallet_4.setTransform(1086.85,556.35,1,1,0,0,0,231.9,20.8);

	this.colorpallet_1 = new lib.colorpallet_1();
	this.colorpallet_1.name = "colorpallet_1";
	this.colorpallet_1.parent = this;
	this.colorpallet_1.setTransform(1086.85,302.35,1,1,0,0,0,232,20.9);

	this.colorpallet_3 = new lib.colorpallet_3();
	this.colorpallet_3.name = "colorpallet_3";
	this.colorpallet_3.parent = this;
	this.colorpallet_3.setTransform(1086.85,472.7,1,1,0,0,0,231.9,20.8);

	this.colorpallet_2 = new lib.colorpallet_2();
	this.colorpallet_2.name = "colorpallet_2";
	this.colorpallet_2.parent = this;
	this.colorpallet_2.setTransform(1088.05,389.85,1,1,0,0,0,232,20.9);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.colorpallet_2},{t:this.colorpallet_3},{t:this.colorpallet_1},{t:this.colorpallet_4}]}).wait(1));

	// Layer_4
	this.shape = new cjs.Shape();
	this.shape.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-63.1,29.6).curveTo(-78.7,29.6,-90,20.9).curveTo(-101.1,12.2,-101.1,0).curveTo(-101.1,-12.2,-90,-20.9).curveTo(-78.7,-29.6,-63.1,-29.6).lineTo(101.1,-29.6).lineTo(101.1,29.6).closePath();
	this.shape.setTransform(923.27,555.5743);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-63.1,29.6).curveTo(-78.7,29.6,-90,20.9).curveTo(-101.1,12.2,-101.1,-0).curveTo(-101.1,-12.2,-90,-20.9).curveTo(-78.7,-29.6,-63.1,-29.6).lineTo(101.1,-29.6).lineTo(101.1,29.6).closePath();
	this.shape_1.setTransform(923.27,301.6699,1,1.0135);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-63.1,29.6).curveTo(-78.7,29.6,-90,20.9).curveTo(-101.1,12.2,-101.1,-0).curveTo(-101.1,-12.2,-90,-20.9).curveTo(-78.7,-29.6,-63.1,-29.6).lineTo(101.1,-29.6).lineTo(101.1,29.6).closePath();
	this.shape_2.setTransform(923.27,389.1699,1,1.0135);

	this.shape_3 = new cjs.Shape();
	this.shape_3.graphics.beginFill("#FFFFFF").beginStroke().moveTo(-63.1,29.6).curveTo(-78.7,29.6,-90,20.9).curveTo(-101.1,12.2,-101.1,0).curveTo(-101.1,-12.2,-90,-20.9).curveTo(-78.7,-29.6,-63.1,-29.6).lineTo(101.1,-29.6).lineTo(101.1,29.6).closePath();
	this.shape_3.setTransform(923.27,472.1743);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.shape_3},{t:this.shape_2},{t:this.shape_1},{t:this.shape}]}).wait(1));

}).prototype = getMCSymbolPrototype(lib.colorpallet_mc, new cjs.Rectangle(822.2,271.7,266.70000000000005,313.50000000000006), null);


(lib.act5Shape = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// Layer_7
	this.mc_4 = new lib.mc_4();
	this.mc_4.name = "mc_4";
	this.mc_4.parent = this;
	this.mc_4.setTransform(703.7,564.8);

	this.mc_3 = new lib.mc_3();
	this.mc_3.name = "mc_3";
	this.mc_3.parent = this;
	this.mc_3.setTransform(535.2,307.1);

	this.mc_2 = new lib.mc_2();
	this.mc_2.name = "mc_2";
	this.mc_2.parent = this;
	this.mc_2.setTransform(376.95,564.9);

	this.mc_1 = new lib.mc_1();
	this.mc_1.name = "mc_1";
	this.mc_1.parent = this;
	this.mc_1.setTransform(220.8,306.4);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.mc_1},{t:this.mc_2},{t:this.mc_3},{t:this.mc_4}]}).wait(1));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(108.2,158.8,702.9,570);


// stage content:
(lib.ColourGame = function(mode,startPosition,loop) {
	this.initialize(mode,startPosition,loop,{});

	// timeline functions:
	this.frame_1 = function() {
		this.stop();
		this.play_btn.addEventListener('click', playActivity.bind(this));
		function playActivity(e){
			this.play();
		}
	}
	this.frame_2 = function() {
		var thisRef = this;
		this.colorId = 0;
		this.mcId;
		this.answerArray = [1, 1, 1, 1];
		
		stage.enableMouseOver();
		
		playSound("inst");
		
		for(var c = 1; c <= 4; c++){
			this.colorpallet_mc['colorpallet_'+c].cursor = 'pointer';
			this.colorpallet_mc['colorpallet_'+c].addEventListener("click", chooseColor.bind(this));
		}
		for(var i = 1; i <= this.answerArray.length; i++){
			this.color_mc['mc_'+i].cursor = 'pointer';
			this.color_mc['mc_'+i].addEventListener("click", fillColor.bind(this));
		}  
		function chooseColor(e){
			if(this.colorId > 0){
				this.colorpallet_mc['colorpallet_'+this.colorId].gotoAndStop(0);
			}
			this.colorId = Number(e.currentTarget.name.split("colorpallet_")[1]);
			this.colorpallet_mc['colorpallet_'+this.colorId].gotoAndStop(1);
			console.log("chooseColor " + this.colorId);
		}
		function fillColor(e){
			if(this.colorId > 0){
			//if(this.colorId > 0 && e.currentTarget.currentFrame == 0){
				this.mcId = Number(e.currentTarget.name.split("mc_")[1]);
				console.log(this.mcId);
				e.currentTarget.gotoAndStop(this.colorId);
			}
		}
		
		this.stop();
	}

	// actions tween:
	this.timeline.addTween(cjs.Tween.get(this).wait(1).call(this.frame_1).wait(1).call(this.frame_2).wait(1));

	// play_btn
	this.play_btn = new lib.btn_Play();
	this.play_btn.name = "play_btn";
	this.play_btn.parent = this;
	this.play_btn.setTransform(512,384);
	new cjs.ButtonHelper(this.play_btn, 0, 1, 1);

	this.timeline.addTween(cjs.Tween.get(this.play_btn).to({_off:true},2).wait(1));

	// feedback_Audio (mask)
	var mask = new cjs.Shape();
	mask._off = true;
	mask.graphics.moveTo(218.3,346).curveTo(186.8,343.3,135.3,335.1).curveTo(85.8,327.3,69.7,326.1).curveTo(-38.9,318.1,-133.7,322.1).curveTo(-184.9,324.3,-265.4,333).curveTo(-297.4,336.4,-313.2,337.5).curveTo(-336.5,339,-353.7,337.9).curveTo(-392.7,335.5,-427.1,316.3).curveTo(-468.2,293.5,-475.5,215.1).curveTo(-479.8,169.3,-471.6,93.8).curveTo(-461.1,-1.7,-470.6,-103.1).lineTo(-477.7,-169.2).curveTo(-480.9,-200.3,-479.6,-214.8).curveTo(-476.7,-247.5,-458.6,-272.7).curveTo(-440.7,-297.6,-409.3,-313.3).curveTo(-377.6,-329.2,-334.5,-334.6).curveTo(-290.5,-340.2,-237.4,-334.4).curveTo(-200.2,-330.3,-145.5,-324.1).curveTo(-104.2,-319.6,-76.5,-318.6).curveTo(-43.4,-317.3,-5.7,-319.6).curveTo(32.4,-322,91.6,-328.9).curveTo(112.3,-331.4,166,-339.6).curveTo(218,-346.9,255.5,-348).curveTo(367.5,-351.4,424.8,-303.9).curveTo(461.9,-273.2,473.7,-236.9).curveTo(483.1,-207.9,478.5,-164.5).curveTo(477.1,-150.8,472.9,-124.4).curveTo(468.2,-94.8,466.5,-80.8).curveTo(459.7,-26,464.9,19.7).curveTo(472.1,82.2,474,112.6).curveTo(477.2,164.3,472.8,201).curveTo(467.5,245.4,450.5,274.8).curveTo(431.3,308.1,396.2,324.1).curveTo(343.3,348.2,266.7,348.2).curveTo(243.5,348.2,218.3,346).closePath();
	mask.setTransform(520.645,381.6665);

	// feedback_Anim
	this.feedback_mc = new lib.feedbackAnim();
	this.feedback_mc.name = "feedback_mc";
	this.feedback_mc.parent = this;

	var maskedShapeInstanceList = [this.feedback_mc];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask;
	}

	this.timeline.addTween(cjs.Tween.get(this.feedback_mc).wait(3));

	// Layer_5
	this.instance = new lib.mc_title_ost("single",0);
	this.instance.parent = this;
	this.instance.setTransform(512,46);

	this.question_mc = new lib.title();
	this.question_mc.name = "question_mc";
	this.question_mc.parent = this;
	this.question_mc.setTransform(512,130);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[{t:this.question_mc},{t:this.instance}]}).wait(3));

	// Layer_8 (mask)
	var mask_1 = new cjs.Shape();
	mask_1._off = true;
	mask_1.graphics.moveTo(218.3,346).curveTo(186.8,343.3,135.3,335.1).curveTo(85.8,327.3,69.7,326.1).curveTo(-38.9,318.1,-133.7,322.1).curveTo(-184.9,324.3,-265.4,333).curveTo(-297.4,336.4,-313.2,337.5).curveTo(-336.5,339,-353.7,337.9).curveTo(-392.7,335.5,-427.1,316.3).curveTo(-468.2,293.5,-475.5,215.1).curveTo(-479.8,169.3,-471.6,93.8).curveTo(-461.1,-1.7,-470.6,-103.1).lineTo(-477.7,-169.2).curveTo(-480.9,-200.3,-479.6,-214.8).curveTo(-476.7,-247.5,-458.6,-272.7).curveTo(-440.7,-297.6,-409.3,-313.3).curveTo(-377.6,-329.2,-334.5,-334.6).curveTo(-290.5,-340.2,-237.4,-334.4).curveTo(-200.2,-330.3,-145.5,-324.1).curveTo(-104.2,-319.6,-76.5,-318.6).curveTo(-43.4,-317.3,-5.7,-319.6).curveTo(32.4,-322,91.6,-328.9).curveTo(112.3,-331.4,166,-339.6).curveTo(218,-346.9,255.5,-348).curveTo(367.5,-351.4,424.8,-303.9).curveTo(461.9,-273.2,473.7,-236.9).curveTo(483.1,-207.9,478.5,-164.5).curveTo(477.1,-150.8,472.9,-124.4).curveTo(468.2,-94.8,466.5,-80.8).curveTo(459.7,-26,464.9,19.7).curveTo(472.1,82.2,474,112.6).curveTo(477.2,164.3,472.8,201).curveTo(467.5,245.4,450.5,274.8).curveTo(431.3,308.1,396.2,324.1).curveTo(343.3,348.2,266.7,348.2).curveTo(243.5,348.2,218.3,346).closePath();
	mask_1.setTransform(520.645,381.6665);

	// Layer_3
	this.colorpallet_mc = new lib.colorpallet_mc();
	this.colorpallet_mc.name = "colorpallet_mc";
	this.colorpallet_mc.parent = this;

	var maskedShapeInstanceList = [this.colorpallet_mc];

	for(var shapedInstanceItr = 0; shapedInstanceItr < maskedShapeInstanceList.length; shapedInstanceItr++) {
		maskedShapeInstanceList[shapedInstanceItr].mask = mask_1;
	}

	this.timeline.addTween(cjs.Tween.get(this.colorpallet_mc).wait(3));

	// Layer_1
	this.color_mc = new lib.act5Shape();
	this.color_mc.name = "color_mc";
	this.color_mc.parent = this;

	this.timeline.addTween(cjs.Tween.get(this.color_mc).wait(3));

	// BG_NUR
	this.instance_1 = new lib.Nursery();
	this.instance_1.parent = this;

	this.timeline.addTween(cjs.Tween.get(this.instance_1).wait(3));

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(512,384,512,384);
// library properties:
lib.properties = {
	id: '59939F634C2D574E8ACA4F0A7C5BF458',
	width: 1024,
	height: 768,
	fps: 24,
	color: "#FFFFFF",
	opacity: 1.00,
	manifest: [
		{src:"images/Nursery.png?1570266615749", id:"Nursery"},
		{src:"sounds/inst.mp3?1570266615750", id:"inst"}
	],
	preloads: []
};



// bootstrap callback support:

(lib.Stage = function(canvas) {
	createjs.Stage.call(this, canvas);
}).prototype = p = new createjs.Stage();

p.setAutoPlay = function(autoPlay) {
	this.tickEnabled = autoPlay;
}
p.play = function() { this.tickEnabled = true; this.getChildAt(0).gotoAndPlay(this.getTimelinePosition()) }
p.stop = function(ms) { if(ms) this.seek(ms); this.tickEnabled = false; }
p.seek = function(ms) { this.tickEnabled = true; this.getChildAt(0).gotoAndStop(lib.properties.fps * ms / 1000); }
p.getDuration = function() { return this.getChildAt(0).totalFrames / lib.properties.fps * 1000; }

p.getTimelinePosition = function() { return this.getChildAt(0).currentFrame / lib.properties.fps * 1000; }

an.bootcompsLoaded = an.bootcompsLoaded || [];
if(!an.bootstrapListeners) {
	an.bootstrapListeners=[];
}

an.bootstrapCallback=function(fnCallback) {
	an.bootstrapListeners.push(fnCallback);
	if(an.bootcompsLoaded.length > 0) {
		for(var i=0; i<an.bootcompsLoaded.length; ++i) {
			fnCallback(an.bootcompsLoaded[i]);
		}
	}
};

an.compositions = an.compositions || {};
an.compositions['59939F634C2D574E8ACA4F0A7C5BF458'] = {
	getStage: function() { return exportRoot.getStage(); },
	getLibrary: function() { return lib; },
	getSpriteSheet: function() { return ss; },
	getImages: function() { return img; }
};

an.compositionLoaded = function(id) {
	an.bootcompsLoaded.push(id);
	for(var j=0; j<an.bootstrapListeners.length; j++) {
		an.bootstrapListeners[j](id);
	}
}

an.getComposition = function(id) {
	return an.compositions[id];
}


an.makeResponsive = function(isResp, respDim, isScale, scaleType, domContainers) {		
	var lastW, lastH, lastS=1;		
	window.addEventListener('resize', resizeCanvas);		
	resizeCanvas();		
	function resizeCanvas() {			
		var w = lib.properties.width, h = lib.properties.height;			
		var iw = window.innerWidth, ih=window.innerHeight;			
		var pRatio = window.devicePixelRatio || 1, xRatio=iw/w, yRatio=ih/h, sRatio=1;			
		if(isResp) {                
			if((respDim=='width'&&lastW==iw) || (respDim=='height'&&lastH==ih)) {                    
				sRatio = lastS;                
			}				
			else if(!isScale) {					
				if(iw<w || ih<h)						
					sRatio = Math.min(xRatio, yRatio);				
			}				
			else if(scaleType==1) {					
				sRatio = Math.min(xRatio, yRatio);				
			}				
			else if(scaleType==2) {					
				sRatio = Math.max(xRatio, yRatio);				
			}			
		}			
		domContainers[0].width = w * pRatio * sRatio;			
		domContainers[0].height = h * pRatio * sRatio;			
		domContainers.forEach(function(container) {				
			container.style.width = w * sRatio + 'px';				
			container.style.height = h * sRatio + 'px';			
		});			
		stage.scaleX = pRatio*sRatio;			
		stage.scaleY = pRatio*sRatio;			
		lastW = iw; lastH = ih; lastS = sRatio;            
		stage.tickOnUpdate = false;            
		stage.update();            
		stage.tickOnUpdate = true;		
	}
}


})(createjs = createjs||{}, AdobeAn = AdobeAn||{});
var createjs, AdobeAn;