## To start sinatra_redirect_test_server on Ubuntu (hijacking port 80):
In order to hijack port 80, you need to have root privilege
```
  rvmsudo shotgun -o 0.0.0.0 -p 80
```

To add sinatra_redirect_test_server with upstart
```
	sudo cp sinatra_redirect_test_server.conf /etc/init/
```

To start/stop sinatra_redirect_test_server
```
	sudo start /etc/init.d/sinatra_redirect_test_server 
	sudo stop /etc/init.d/sinatra_redirect_test_server 
```

To track sinatra_redirect_test_server log
```
	sudo tail -f /var/log/upstart/sinatra_redirect_test_server/log
```



## To start sinatra_redirect_test_server local on Mac
cd $PATH_TO_DIR/sinatra_redirect_test_server, port 3579
shotgun -p 3579