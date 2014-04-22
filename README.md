DB Reverse Engineering
==================

This a quick tutorial on how create your application using one of the very impressive feature of Spring ROO, the DBRE.  In fact, this feature is not new for most of the developers.  JPA offers this but only allows you to instrospect the db schema and produce Java application once while Roo's version gives you the advantage of repeatedly doing it (re-instrospect and update the application).  Here, we are gonna create a sample project to demonstrate how DBRE works.

Requirements:

1. PostgreSQL
2. Spring ROO, latest version is 1.2.5

Steps:

1.	If you haven't installed Spring ROO yet, then download it here http://projects.spring.io/spring-roo. 	
2.	Extract it to your favorite directory and add it to your PATH system variable.  In OSX you can add PATH in .profile at your home directory.
	e.g. 	export ROO_HOME="/Users/rburawes/spring-roo-1.2.5.RELEASE"
			export PATH="$PATH:$ROO_HOME/bin"			
3.	Download and install PostgreSQL. http://www.postgresql.org/download
4.	Use the sql below to create your sample database.

```
DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS salary;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS account_roles;

CREATE TABLE account
(
  id bigserial NOT NULL,
  enabled boolean,
  password character varying(255),
  username character varying(255),
  version integer,
  CONSTRAINT account_pkey PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE account OWNER TO postgres;

CREATE TABLE salary
(
  id bigserial NOT NULL,
  code character varying(255) NOT NULL,
  description character varying(255),
  version integer,
  CONSTRAINT salary_pkey PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE salary OWNER TO postgres;

CREATE TABLE user_role
(
  id bigserial NOT NULL,
  role_name character varying(255),
  version integer,
  CONSTRAINT user_role_pkey PRIMARY KEY (id )
)
WITH (
  OIDS=FALSE
);
ALTER TABLE user_role OWNER TO postgres;

CREATE TABLE employee
(
  id bigserial NOT NULL,
  address character varying(255) NOT NULL,
  first_name character varying(255) NOT NULL,
  last_name character varying(255) NOT NULL,
  middle_name character varying(255) NOT NULL,
  version integer,
  salary bigint,
  CONSTRAINT employee_pkey PRIMARY KEY (id ),
  CONSTRAINT fk_trifo3miwmqe2tl40vjxqx8u9 FOREIGN KEY (salary)
      REFERENCES salary (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE employee OWNER TO postgres;

CREATE TABLE account_roles
(
  account bigint NOT NULL,
  roles bigint NOT NULL,
  CONSTRAINT account_roles_pkey PRIMARY KEY (account , roles ),
  CONSTRAINT fk_7dw3qmgby3x1lcjp7ijts8fa5 FOREIGN KEY (roles)
      REFERENCES user_role (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_avjbyhyjd6nnh52cr6ij2pujp FOREIGN KEY (account)
      REFERENCES account (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE account_roles OWNER TO postgres;
```
5.	On your machine create a new directory for your project e.g. dbresample then go to that newly created folder.
6.	Open your ROO shell by typing <b>roo</b> on your console.