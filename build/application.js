(function () { "use strict";
function $extend(from, fields) {
	function Inherit() {} Inherit.prototype = from; var proto = new Inherit();
	for (var name in fields) proto[name] = fields[name];
	if( fields.toString !== Object.prototype.toString ) proto.toString = fields.toString;
	return proto;
}
var Main = function() { };
Main.main = function() {
	Ext.onReady(function() {
		var panel = new MyPanel({ renderTo : Ext.getBody(), width : 640, height : 480, bodyPadding : 5, title : "Hello World", html : "Hello <b>World</b>..."});
		console.log(panel);
	});
};
var MyPanel = function(options) {
	Ext.panel.Panel.call(this,options);
};
MyPanel.__super__ = Ext.panel.Panel;
MyPanel.prototype = $extend(Ext.panel.Panel.prototype,{
	something: function() {
		console.log("hi");
	}
});
Main.main();
})();

//# sourceMappingURL=application.js.map