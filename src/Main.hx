/**
 * 
 */
import js.ext.Ext;
import js.ext.panel.Panel;

/**
 * 
 */
class Main {
	static function main() {
		Ext.onReady(function () {
			var panel = new MyPanel({
				renderTo: Ext.getBody(),
				width: 640,
				height: 480,
				bodyPadding: 5,
				html : 'Hello <b>World</b>...'
			});

			trace(panel);
		});
	}
}

class MyMixin {
	
	public function doMixinStuff() {
		trace('I am a mixed in function');
	}

}

class MyPanel extends Panel {

	// use exts extra stuff for class creation
	static function __init__() : Void {
		var config = {
			mixins: {
				'mymix': MyMixin 
			}
		};

		ExtClass.create(MyPanel, config);

		// prevents ext from using its extend preprocessor
		untyped __js__("MyPanel.extend = function () {}");
		untyped __js__("MyPanel.triggerExtended = function () {}");

		ExtClass.process(MyPanel, config);
	}

	var title = 'Hello World';

	public function new(options) {
		super(options);

		this.doMixinStuff();
	}

	// included via ExtJS mixin
	@:extern function doMixinStuff() {}; //ignored in output

	function something() : Void {
		trace("hi");
	}
}
