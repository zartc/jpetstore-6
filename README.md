JPetStore-2
=================

The intention of this fork of the mybatis's JPetStore is to use it as a lab to experiment with new and fancy technologies.

As I literally love both MyBatis and Stipes it is a very good match to start with.

I intend to completely redo the IHM of the original jpetstore to bring it to the 21st century. 
To begin with I will certainly bring modern CSS like BootStrap, then in a second time I will include javascript (JQuery, Easy UI), etc.

## Running with Tomcat 7
It is easy to run JPetStore-2 under Tomcat 7 (using maven).

- Clone this repository
- Open a command prompt/shell and change to the cloned directory
- Type:  `mvn clean tomcat7:run`   to run the project using Tomcat 7
- Open a web browser at:  `http://localhost:8080/jpetstore/` 
- Press `Ctrl-C` to stop the server.