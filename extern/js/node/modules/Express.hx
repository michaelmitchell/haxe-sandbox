/**
 * 
 */
package js.node.modules;

/**
 * 
 */
import js.node.modules.Module;

/**
 * 
 */
extern class Express {

	/**
	 * [createApplication description]
	 * @return [description]
	 */
	public static function create() : Express;

	/**
	 * [static description]
	 * @param  dirname :             String [description]
	 * @return         [description]
	 */
	public static function serve_static(dirname : String) : Dynamic;

	/**
	 * [description]
	 * @param  path     :             Dynamic [description]
	 * @param  callback :             Dynamic [description]
	 * @return          [description]
	 */
	public function get(path : Dynamic, callback : Dynamic) : Dynamic;

	/**
	 * [set description]
	 * @param  key :             Dynamic [description]
	 * @param  value :             Dynamic [description]
	 * @return            [description]
	 */
	public function set(key : Dynamic, value : Dynamic) : Dynamic;

	/**
	 * [use description]
	 * @param  middleware :             Dynamic [description]
	 * @return            [description]
	 */
	public function use(middleware : Dynamic) : Void;

	/**
	 * [__init__ description]
	 * @return [description]
	 */
	public static function __init__() : Void {
		untyped __js__("js.node.modules.Express = require('express')");
		untyped __js__("js.node.modules.Express.create = js.node.modules.Express");
		untyped __js__("js.node.modules.Express.serve_static = js.node.modules.Express.static");
	}

}