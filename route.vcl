# routing example
# yves hwang - 15.12.2014

backend api {
	.host = "127.0.0.1";
	.port = "8133";
}

sub vcl_recv {
	# check the traffic based on host header
	if( req.http.host ~ "api.somedomain.com" ) {
		#yep, one of our supported domains
		set req.backend = api;
		
	} else {
		error 404 "unknown virtual host";
	}	
}
