CREATE DATABASE FORTYQUESTIONS;
/*
questions table with what questions will be displayed by the UI
 */
CREATE TABLE questions(
      questionId BIGINT PRIMARY KEY NOT NULL
);
/**
 user table
 */
CREATE TABLE users(
      userId BIGINT PRIMARY KEY NOT NULL
);
/**
  statistics is a table of what questions the user has answered
  and in the case of multiplayer games who is winning/stats
 */
CREATE TABLE statistics(
      userId BIGINT NOT NULL,


      CONSTRAINT users_id_fkey FOREIGN KEY (userId)
        REFERENCES users (userId)
);