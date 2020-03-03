DC=docker-compose -p ethicloud

%:
	${DC} $@

migrate:
	for c in $$(docker ps -f 'name=.*-passit' -q); do docker exec $$c python manage.py migrate; done
	
