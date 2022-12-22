-- My SQL 주석문
-- P365 
-- 데이터 베이스 생성
create database chap14 default character set utf8;

use chap14;


-- USER 생성 및 권한 부여 .
-- 호스트가 localhost 인 경우 localhost에서 해당 계정으로 접근한다.
create user 'jspexam'@'localhost'
identified by 'jsppw';

grant all privileges on chap14.* to 'jspexam'@'localhost';

-- 호스트가 % 인 경우 모든 호스트에서 해당 계정으로 접근한다.
-- MySQL에서는 localhost와 다른 호스트를 구분하므로 
-- 사용자 계정을  생성할 때는 localhost용 계정과 
-- 외부에서 접글 할 때 사용할 계정을 각각 생성해야 한다.
create user 'jspexam'@'%'
identified by 'jsppw';

grant all privileges on chap14.* to 'jspexam'@'%';