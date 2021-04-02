(function (cjs, an) {

var p; // shortcut to reference prototypes
var lib={};var ss={};var img={};
lib.ssMetadata = [];


(lib.AnMovieClip = function(){
	this.actionFrames = [];
	this.gotoAndPlay = function(positionOrLabel){
		cjs.MovieClip.prototype.gotoAndPlay.call(this,positionOrLabel);
	}
	this.play = function(){
		cjs.MovieClip.prototype.play.call(this);
	}
	this.gotoAndStop = function(positionOrLabel){
		cjs.MovieClip.prototype.gotoAndStop.call(this,positionOrLabel);
	}
	this.stop = function(){
		cjs.MovieClip.prototype.stop.call(this);
	}
}).prototype = p = new cjs.MovieClip();
// symbols:



(lib.Sidebar = function(mode,startPosition,loop,reversed) {
if (loop == null) { loop = true; }
if (reversed == null) { reversed = false; }
	var props = new Object();
	props.mode = mode;
	props.startPosition = startPosition;
	props.labels = {};
	props.loop = loop;
	props.reversed = reversed;
	cjs.MovieClip.apply(this,[props]);

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#0666CC").s().p("EgV4A0rMgFAhpVMA1xAAAMgTFBpVg");
	this.shape.setTransform(0.025,0);

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-172,-337.1,344.1,674.2);


(lib.menubuttonmc = function(mode,startPosition,loop,reversed) {
if (loop == null) { loop = true; }
if (reversed == null) { reversed = false; }
	var props = new Object();
	props.mode = mode;
	props.startPosition = startPosition;
	props.labels = {};
	props.loop = loop;
	props.reversed = reversed;
	cjs.MovieClip.apply(this,[props]);

	// Layer_1
	this.shape = new cjs.Shape();
	this.shape.graphics.f("#0066CC").s().p("AheDDQhkAAAAhkIAAi9QAAhkBkAAIC9AAQBkAAAABkIAAC9QAABkhkAAg");

	this.timeline.addTween(cjs.Tween.get(this.shape).wait(1));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-19.5,-19.5,39,39);


(lib.MenuButton = function(mode,startPosition,loop,reversed) {
if (loop == null) { loop = true; }
if (reversed == null) { reversed = false; }
	var props = new Object();
	props.mode = mode;
	props.startPosition = startPosition;
	props.labels = {};
	props.loop = loop;
	props.reversed = reversed;
	cjs.MovieClip.apply(this,[props]);

	// Layer_3
	this.instance = new lib.Sidebar("synched",0);
	this.instance.setTransform(-206,164.05);
	this.instance._off = true;

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(23).to({_off:false},0).to({x:54,y:164},22,cjs.Ease.elasticInOut).wait(20).to({startPosition:0},0).wait(1).to({scaleX:1.0729,scaleY:1.0729,rotation:4.9038,x:52.7021,y:170.4838},0).wait(1).to({scaleX:1.2418,scaleY:1.2418,rotation:16.2683,x:49.6963,y:185.5115},0).wait(1).to({scaleX:1.519,scaleY:1.519,rotation:34.9117,x:44.7704,y:210.1719},0).wait(1).to({scaleX:1.9006,scaleY:1.9006,rotation:60.5862,x:37.9902,y:244.1521},0).wait(1).to({regX:0.1,regY:0.1,scaleX:2.3499,scaleY:2.3499,rotation:90.8115,x:29.75,y:284.2},0).wait(1).to({regX:0,regY:0,scaleX:1.793,scaleY:1.793,rotation:128.4247,x:-78.8242,y:234.5444},0).wait(1).to({scaleX:1.3642,scaleY:1.3642,rotation:157.3979,x:-162.7273,y:196.4684},0).wait(1).to({scaleX:1.1049,scaleY:1.1049,rotation:174.9092,x:-213.4571,y:173.4326},0).wait(1).to({regX:0.1,regY:0.1,scaleX:1,scaleY:1,rotation:181.9991,x:-234.1,y:164.05},0).wait(11));

	// Layer_2
	this.shape = new cjs.Shape();
	this.shape.graphics.f().s("#33B2F5").ss(1,1,1).p("ABYgKIhaAAAgOhuIAABNAgigKIg1AAAgOAGIAABp");
	this.shape.setTransform(1.25,0.875);

	this.shape_1 = new cjs.Shape();
	this.shape_1.graphics.f().s("#33B2F5").ss(1,1,1).p("ACeABIhiAAAgnABIh2AAAAIitIAAB9AAIA4IAAB2");
	this.shape_1.setTransform(-1,-0.375);

	this.shape_2 = new cjs.Shape();
	this.shape_2.graphics.f().s("#33B2F5").ss(1,1,1).p("AC+gCIhfAAAAFjPIAABnAhhgCIhcAAAAFBGIAACK");
	this.shape_2.setTransform(-0.75,0);

	this.timeline.addTween(cjs.Tween.get({}).to({state:[]}).to({state:[{t:this.shape}]},17).to({state:[{t:this.shape_1}]},2).to({state:[{t:this.shape_2}]},2).to({state:[]},2).to({state:[]},7).wait(55));

	// Layer_1
	this.instance_1 = new lib.menubuttonmc("synched",0);
	this.instance_1.setTransform(-0.5,-0.5);

	this.timeline.addTween(cjs.Tween.get(this.instance_1).to({regX:-0.1,regY:-0.1,scaleX:1.2,scaleY:1.2,rotation:-5.9983,y:-0.55},7,cjs.Ease.sineInOut).wait(3).to({startPosition:0},0).to({regX:0,regY:0,scaleX:0.0107,scaleY:0.0107,rotation:0,y:-0.5},6,cjs.Ease.sineOut).to({_off:true},1).wait(68));

	this._renderFirstFrame();

}).prototype = p = new cjs.MovieClip();
p.nominalBounds = new cjs.Rectangle(-763.7,-359.2,1591.5,1211.2);


// stage content:
(lib.uitest = function(mode,startPosition,loop,reversed) {
if (loop == null) { loop = true; }
if (reversed == null) { reversed = false; }
	var props = new Object();
	props.mode = mode;
	props.startPosition = startPosition;
	props.labels = {};
	props.loop = loop;
	props.reversed = reversed;
	cjs.MovieClip.apply(this,[props]);

	// Layer_1
	this.instance = new lib.MenuButton("synched",0);
	this.instance.setTransform(30.05,32,1,1,0,0,0,-19.5,-19.5);

	this.timeline.addTween(cjs.Tween.get(this.instance).wait(85));

	this._renderFirstFrame();

}).prototype = p = new lib.AnMovieClip();
p.nominalBounds = new cjs.Rectangle(-394.1,-67.7,1271.5,971.2);
// library properties:
lib.properties = {
	id: '61C141318A7A4E6D9E3CE6CBA8FAF965',
	width: 640,
	height: 480,
	fps: 30,
	color: "#FFFFFF",
	opacity: 1.00,
	manifest: [],
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
an.compositions['61C141318A7A4E6D9E3CE6CBA8FAF965'] = {
	getStage: function() { return exportRoot.stage; },
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
an.handleSoundStreamOnTick = function(event) {
	if(!event.paused){
		var stageChild = stage.getChildAt(0);
		if(!stageChild.paused){
			stageChild.syncStreamSounds();
		}
	}
}


})(createjs = createjs||{}, AdobeAn = AdobeAn||{});
var createjs, AdobeAn;