(function () { "use strict";
var js = {};
js.node = {};
js.node.NodeJS = function() { };
js.node.NodeJS.getDirname = function() {
	return __dirname;
};
js.node.NodeJS.getFilename = function() {
	return __filename;
};
js.node.modules = {};
js.node.modules.Module = function() { };
var server = {};
server.Main = function() { };
server.Main.main = function() {
	var express = js.node.modules.Express.create();
	var dirname = process.cwd();
	var middleware = js.node.modules.Express.serve_static(dirname);
	express["use"](middleware);
	express.set("views",dirname + "/templates");
	express.set("trust proxy",true);
	express.get("/",function(request,response) {
		response.render("index.ejs");
	});
	var http = js.node.Http.createServer(express);
	var port;
	if(process.argv[2]) port = process.argv[2]; else port = 8000;
	http.listen(port);
};
js.node.Http = require('http');
js.node.modules.Express = require('express');
js.node.modules.Express.create = js.node.modules.Express;
js.node.modules.Express.serve_static = js.node.modules.Express.static;
server.Main.main();
})();

//# sourceMappingURL=server.js.map