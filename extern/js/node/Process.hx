/**
 * 
 */
package js.node;

/**
 * 
 */
@:native("process")
extern class Process {

	/**
	 * 
	 */
	public static var argv : Array<Dynamic>; 

	/**
	 * [cwd description]
	 * @return [description]
	 */
	public static function cwd() : String;

	/**
	 * [exit description]
	 * @param  code :             Int [description]
	 * @return      [description]
	 */
	public static function exit(? code : Int) : Void;

}