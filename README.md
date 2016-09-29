# README

##<span style="color:cyan">Docker Development With Rails5, PostgreSQL, Puma &
NGINX</span>

This is my starting point for getting a working Docker development to serve a
Rails site using Puma & NGINX.

Next steps will be Redis integration.

Thank you to [MateuYabar](http://mateuyabar.com/blog/2016/04/20/Docker-with-Ruby-on-Rails-in-development-and-production/ )

PLACE IN ROOT DIRECTORY OF YOUR RAILS 5 App

###### <span style="color:steelblue; font-weight:bold">Step 1</span> ######
Replace `database.yml`  file in ./config/database.yml with database.yml file here.
Feel free to replace values with environment variables stored in .env file

###### <span style="color:steelblue; font-weight:bold">Step 2</span> ######
Check & modify `puma.rb` file in ./config/puma.rb with puma.rb file here.

###### <span style="color:steelblue; font-weight:bold">Step 3</span> ######
Check & modify Dockerfile place in root directory

###### <span style="color:steelblue; font-weight:bold">Step 4</span> ######
Check & modify docker-compose.yml place in root directory

###### <span style="color:steelblue; font-weight:bold">Step 5</span> ######
Check & modify docker-compose.overide.yml place in root directory

###### <span style="color:steelblue; font-weight:bold">Step 6</span> ######
Check & modify nginx.devel.conf place in root directory

###<span style="color:darkcyan">STARTING</span>

###### <span style="color:steelblue; font-weight:bold">Step 7</span> ######
>Terminal
`docker-compose up`

###### <span style="color:steelblue; font-weight:bold">Step 8</span> ######

>Terminal
`docker-compose run --rm app rails db:create`
docker-compose exec --user "$(id -u):$(id -g)" app rails db:reset

ERROR?
`docker-compose run --rm app rails db:setup`











* ...
