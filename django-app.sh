#!/bin/bash
<< comment 
django app deployment 
comment

app_clone(){
	echo "clone app"
	git clone https://github.com/Yas19-bit/django-notes-app.git
}
install_lib(){
	echo "install depandancy"
	

}
require_restart(){
	sudo chown $USER /var/run/docker.sock 
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}
deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}
echo "--------deploy---------"
if ! app_clone; then
       echo "already exits"
	cd django-notes-app   
fi	
if ! install_lib; then
	echo "install faield"
	exit 01
fi
if ! require_restart; then
	echo "system error"
	exit 01
fi
deploy
echo "--------end----------"
