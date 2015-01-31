/**
 * 
 */
package js.node;

/**
 * 
 */
import js.node.NodeJS;

/**
 * 
 */
extern class Http {

	/**
	 * [createApplication description]
	 * @return [description]
	 */
	public static function createServer(x : Dynamic) : Http;

	/**
	 * [createApplication description]
	 * @return [description]
	 */
	public function listen(port : Int) : Void;

	/**
	 * [__init__ description]
	 * @return [description]
	 */
	public static function __init__() : Void {
		untyped __js__("js.node.Http = require('http')");
	}

}