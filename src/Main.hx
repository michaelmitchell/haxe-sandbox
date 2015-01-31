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
				title: 'Hello World',
				html : 'Hello <b>World</b>...'
			});

			trace(panel);
		});
	}
}

class MyPanel extends Panel {

	public function something() : Void {
		trace("hi");
	}

}

