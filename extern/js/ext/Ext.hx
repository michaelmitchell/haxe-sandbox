/**
 * 
 */
package js.ext;

/**
 * 
 */
@:native("Ext")
extern class Ext {

	/**
	 * [create description]
	 * @param  name    :             String [description]
	 * @param  options :             Object [description]
	 * @return         [description]
	 */
	public static function create(name : Dynamic, options : Dynamic) :  Dynamic;

	/**
	 * [getBody description]
	 * @return [description]
	 */
	public static function getBody() : String;

	/**
	 * [onReady description]
	 * @param  fn :             Dynamic [description]
	 * @return    [description]
	 */
	public static function onReady(fn : Dynamic) : Void;

}

@:native('Ext.Class')
extern class ExtClass {
	public static function create(klass: Dynamic, data: Dynamic): Void;
	public static function process(klass: Dynamic, data: Dynamic, ?onCreated: Dynamic): Void;
}
