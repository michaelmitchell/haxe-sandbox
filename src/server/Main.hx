/**
 * 
 */
package server;

/**
 * 
 */
import js.node.Http;
import js.node.modules.Express;
import js.node.NodeJS;
import js.node.Process;

/**
 * 
 */
class Main {

	/**
	 * [main description]
	 * @return [description]
	 */
	static function main() {
		var express = Express.create(),
			dirname = Process.cwd(),
			middleware = Express.serve_static(dirname);
		
		express.use(middleware);

		express.set('views', dirname + '/templates');
		express.set('trust proxy', true);

		express.get('/', function (request, response) {
			response.render('index.ejs');
		});

		var http = Http.createServer(express),
			port = Process.argv[2] ? Process.argv[2] : 8000;

		http.listen(port);
	}

}