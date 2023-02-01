laravel:
	composer create-project laravel/laravel laravel_react --prefer-dist

react:
	composer require laravel/ui
	php artisan ui react
	npm install @vitejs/plugin-react --save-dev --legacy-peer-deps
	npm install --save --legacy-peer-deps

route:
	php artisan route:list

clear:
	php artisan cache:clear
	php artisan config:cache

tailwind:
	npm install -D tailwindcss postcss autoprefixer
	npx tailwindcss init -p
	
run:
	php artisan serve

controller:
	php artisan make:controller contactController

model:
	php artisan make:model userModel

mail:
	php artisan make:mail ContactsSendmail

api:
	php artisan make:controller ApiController

model:
	php artisan make:model User -m

controller:
	php artisan make:controller ContactsController

tinker:
	php artisan tinker

mysql:
	docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=secret -d mysql

sshdb:
	docker exec -it mysql bash
	mysql -u root -p
	docker network inspec mysql_default | grep -i gateway
	CREATE USER 'root'@'192.168.16.1' IDENTIFIED BY 'secret'

migrateup:
	php artisan migrate

composebuild:
	docker-compose build

composeup:
	docker-compose up -d

composedown:
	docker compose down --volumes

vite:
	npm i
	npm run build

