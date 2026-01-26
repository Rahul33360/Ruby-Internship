# Installation Steps (for windows) 
----------------------------------------
### Step 1 - Install Ruby from official site (https://rubyinstaller.org/).    
### step 2 - To check it is properly installed or not. Type ruby -v (in cmd).   
### step 3 - Now install the gem using cmd(admin) -> gem install rails     
### step 4 - Check it is installed or not using command -> rails -v    
### step 5 - Then create app in a a seprate folder for rails use command -> rails new YOUR_APP_NAME    
### step 6 - Now navigate to the folder in cmd. Then run the command to start the server -> rails s   
### step 7 - Then copy the url (default 3000) and paste on the browser if it is working then it is successfully installed.   
### step 8 - If you want to change the port number then only use the command -> rails s -p YOUR_PORT_NUM.    

## Some rails commands 

#### create this rails application -> rails new App_Name -d  postgresql   (here d for custom database)
#### to start ther rails server -> rails s    
#### create rails database -> rails db:create     
#### now setup the database.yml file by pasting the code ->   
###### development:   
######  <<: *default     
######  database: postgres     
######  username: postgres    
######  password: YOUR_PASSWORD     

#### Then 

## Folder Structuring
#### app -> all files of MVC 
#### bin -> provides supports for the commands that we run
#### config -> helps to manage the configration for production,testing and development
###### config--> environments -->  for production,testing and development enviroments  
###### config--> locales (for which language you want to show to user)   
###### config--> importmap (related to liberary)   
###### config--> routes (by this url related query will be done)
#### db folder(all the database related queries like seeding, etc)    
#### log wil keep all the details about app like errors,time,response success/fail,etc    
#### public (will have public assets like favicon,png,images,etc)
#### tmp (for cache related files)
#### vendor (for third party liberary)   
#### Gemfile (keep liberary versions)
