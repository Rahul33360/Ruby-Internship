# Day 5

### Four Ways to Insert Values in Your App

####1. Using UI (by going to browser we can insert data)  
####2. Using DBeaver (by going into Dbeaver we can insert data by wrtiting sql command.)   
####3. Using seed way (to use this we need to go to our rails application then go into your db/seed.rb file. Then write your command Example :- table_name.create(column_name1: value1, column_name2: value2, ....)    
in place of create we can write update/delete commands also. Then in the rails console run the command rails db:seed , then run the command rails db:migrate , then re-run the server and check for updated value)    
####4. Using Ruby Console (for vscode, run go to the app folder then run rails c (to run rails console, then put the same command ab above one ->  table_name.create(column_name1: value1, column_name2: value2, ....) and hit enter.)
