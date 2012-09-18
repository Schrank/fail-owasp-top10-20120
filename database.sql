CREATE USER 'fail'@'localhost' IDENTIFIED BY '8GvK8BbH7eNydLwn';

GRANT USAGE ON * . * TO 'fail'@'localhost' IDENTIFIED BY '***' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

CREATE DATABASE IF NOT EXISTS `fail` ;

GRANT ALL PRIVILEGES ON `fail` . * TO 'fail'@'localhost';

REVOKE ALL PRIVILEGES ON `fail` . * FROM 'fail'@'localhost';

GRANT SELECT ,
INSERT ,

UPDATE ,
DELETE ON `fail` . * TO 'fail'@'localhost';


-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 09. Aug 2012 um 15:09
-- Server Version: 5.5.20
-- PHP-Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";