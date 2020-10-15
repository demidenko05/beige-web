site: https://sites.google.com/site/beigesoftware

Beigesoft™ WEB CRUD interface (WAR).

debug range #10 (10000..10999)

It's WEB interface based on standard JEE MVC servlet, JSP, JSTL.
It's based on previous beigesoft-webcrud and weboio projects.

To install application on Apache Tomcat 8 (or 7):
1. you should have [postgres/mysql/sqlite] server with created user and empty database
  * default is Postgres, change web.xml and context.xml to other RDBMS if you want
2. make sure that Tomcat has libraries: HikariCP-3.4.5.jar, postgresql-42.2.16.jar/mysql-connector-java-8.0.21.jar/sqlite-jdbc-3.32.3.2.jar, slf4j-api-1.7.30.jar (versions may be different)
3. Unpack WAR file and change user/password/database with yours ones in WEB-INF/classes/[postgres/mysql/sqlite]/cmnst.xml, e.g. MySQL:
...
<entry key="dbUsr">[yourdbusername]</entry>
<entry key="dbPsw">[yourdbuserpass]</entry>
<entry key="dbUrl">jdbc:mysql://localhost/[yourdb]</entry>
<entry key="checkTbl">select * from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='[yourdb]' and TABLE_NAME=':tblNm';</entry>
...

change security roles in web.xml

  Pack new WAR file (it is actually ZIP archive).
4. copy WAR file inside "[tomcat_home]/webapps"
5. type in browser address same as WAR file i.e. "https://[server-address]/beige-web"
6. after creating database add users with SQL query:
insert into USTMC (USR, PWD, VER) values ('[useradmin]', '[strongpassword]', 1);
insert into USTMC (USR, PWD, VER) values ('[useruser]', '[strongpassword]', 1);
insert into USRLTMC (USR, ROL, VER)  values ('[useradmin]', '[role1]', 1);
insert into USRLTMC (USR, ROL, VER)  values ('[useruser]', '[role2]', 1);

This is "cloud" version i.e. it's available through network (WEB), so you must make sure that it's used reliable encrypted (HTTPS) connection.

If you has different JEE server, then you have to make JEE-authentication by yourself. E.g. Jetty uses different database tables (USERJETTY ...). You may need to reassemble WAR with new XML settings.

See beige-acc ... beige-accjet projects to make it work on Android.

-------------------------------------------------------------------------------------
license/лицензия:
BSD 2-Clause License
https://sites.google.com/site/beigesoftware/bsd2csl

3-D PARTY LICENSES / лицензии стороннего ПО:
JQuery by JS Foundation and other contributors:
MIT license
https://jquery.org/license
