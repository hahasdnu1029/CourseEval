# CourseEval
一个课程评估的网站
具体操作步骤如下：
* Setup a Cloud9 environment for the course.
* In your Cloud9 terminal, type the following command to clone the repository to your development workspace:git clone git@github.com:saasbook/rottenpotatoes-rails-intro.git
* Then cd rottenpotatoes-rails-intro to change to the app's directory.
* Run the command bundle install --without production to make sure all the gems (libraries) used by the app are in place.
* Run bundle exec rake db:setup to create the initial database.
* Run rails server -p $PORT -b $IP to start the app. Cloud9 will pop up a window showing the URL to visit in your browser to interact with the running app.
