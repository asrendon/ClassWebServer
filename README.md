# ClassWebServer

This is what you would use when creating a public webserver that your class will use. This repo should have all the bash scripts you would need to get everything set up.  
  

To run this whole script easily, run the following 3 commands:  
git clone https://github.com/asrendon/ClassWebServer.git  
sudo chmod 755 ClassWebServer/setup.sh  
sudo ./ClassWebServer/setup.sh  

For setting up the backup, make sure to confugure the CLI using "aws configure"  
And set a cronjob such as the following running at 1am every day  
0 1 * * * /home/ubuntu/ClassWebServer/backup.sh
