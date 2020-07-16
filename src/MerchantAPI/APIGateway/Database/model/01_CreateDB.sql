DROP ROLE IF EXISTS merchant;

CREATE ROLE merchant LOGIN
  PASSWORD 'merchant'
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;

CREATE DATABASE merchant_gateway
  WITH OWNER = merchant
  ENCODING = 'UTF8'
  TABLESPACE = pg_default
  CONNECTION LIMIT = -1;
