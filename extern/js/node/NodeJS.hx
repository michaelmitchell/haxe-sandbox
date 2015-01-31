/**
 * 
 */
package js.node;

/**
 * 
 */
class NodeJS {

	/**
	 * [__init__ description]
	 * @return [description]
	 */
	public static function __init__() : Void {
		
	}

	/**
	 * [getDirname description]
	 * @return [description]
	 */
	public static function getDirname() : String {
		return untyped __js__("__dirname");
	}

	/**
	 * [getDirname description]
	 * @return [description]
	 */
	public static function getFilename() : String {
		return untyped __js__("__filename");
	}

}