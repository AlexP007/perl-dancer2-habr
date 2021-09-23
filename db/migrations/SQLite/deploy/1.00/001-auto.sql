--
-- Created by SQL::Translator::Producer::SQLite
-- Created on Mon Sep 20 13:29:48 2021
--

;
BEGIN TRANSACTION;
--
-- Table: "user"
--
CREATE TABLE "user" (
  "id" INTEGER PRIMARY KEY NOT NULL,
  "login" text NOT NULL,
  "email" text NOT NULL
);
CREATE UNIQUE INDEX "user_email" ON "user" ("email");
CREATE UNIQUE INDEX "user_login" ON "user" ("login");
COMMIT;
