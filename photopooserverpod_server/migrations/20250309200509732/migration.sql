BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "blocked" (
    "id" bigserial PRIMARY KEY,
    "blockedId" bigint NOT NULL,
    "blockedById" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "blocking_blocked" ON "blocked" USING btree ("blockedId", "blockedById");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "direct_message" (
    "id" bigserial PRIMARY KEY,
    "senderId" bigint NOT NULL,
    "receiverId" bigint NOT NULL,
    "message" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "read" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "dm_index" ON "direct_message" USING btree ("senderId", "receiverId", "time");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "dress" (
    "id" bigserial PRIMARY KEY,
    "image" bytea NOT NULL,
    "color" text NOT NULL,
    "hexColor" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "face" (
    "id" bigserial PRIMARY KEY,
    "image" bytea NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "friends" (
    "id" bigserial PRIMARY KEY,
    "friendsId" bigint NOT NULL,
    "friendsById" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "friend_friended" ON "friends" USING btree ("friendsId", "friendsById");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "hair" (
    "id" bigserial PRIMARY KEY,
    "color" text NOT NULL,
    "length" text NOT NULL,
    "style" text NOT NULL,
    "image" bytea NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "look" (
    "id" bigserial PRIMARY KEY,
    "hairId" bigint NOT NULL,
    "dressId" bigint NOT NULL,
    "faceId" bigint NOT NULL,
    "skinId" bigint NOT NULL,
    "gender" text NOT NULL,
    "shoesId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "message" (
    "id" bigserial PRIMARY KEY,
    "ownerId" bigint NOT NULL,
    "roomId" bigint NOT NULL,
    "message" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "shitid" bigint,
    "message" text NOT NULL,
    "_userShitlistUserId" bigint
);

-- Indexes
CREATE UNIQUE INDEX "shit_unique_id" ON "post" USING btree ("shitid");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "room" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "city" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "rooms_membership" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "roomId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "membership_index" ON "rooms_membership" USING btree ("userId", "roomId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shitpic" (
    "id" bigserial PRIMARY KEY,
    "pic" bytea NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "size" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "shoes" (
    "id" bigserial PRIMARY KEY,
    "image" bytea NOT NULL,
    "color" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "skin" (
    "id" bigserial PRIMARY KEY,
    "color" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" bigserial PRIMARY KEY,
    "username" text NOT NULL,
    "passwrord" text NOT NULL,
    "email" text NOT NULL,
    "phone" text NOT NULL,
    "age" bigint NOT NULL,
    "diet" text NOT NULL,
    "lookId" bigint NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "blocked"
    ADD CONSTRAINT "blocked_fk_0"
    FOREIGN KEY("blockedId")
    REFERENCES "user"("id")
    ON DELETE CASCADE
    ON UPDATE CASCADE;
ALTER TABLE ONLY "blocked"
    ADD CONSTRAINT "blocked_fk_1"
    FOREIGN KEY("blockedById")
    REFERENCES "user"("id")
    ON DELETE CASCADE
    ON UPDATE CASCADE;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "direct_message"
    ADD CONSTRAINT "direct_message_fk_0"
    FOREIGN KEY("senderId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "direct_message"
    ADD CONSTRAINT "direct_message_fk_1"
    FOREIGN KEY("receiverId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "friends"
    ADD CONSTRAINT "friends_fk_0"
    FOREIGN KEY("friendsId")
    REFERENCES "user"("id")
    ON DELETE CASCADE
    ON UPDATE CASCADE;
ALTER TABLE ONLY "friends"
    ADD CONSTRAINT "friends_fk_1"
    FOREIGN KEY("friendsById")
    REFERENCES "user"("id")
    ON DELETE CASCADE
    ON UPDATE CASCADE;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "look"
    ADD CONSTRAINT "look_fk_0"
    FOREIGN KEY("hairId")
    REFERENCES "hair"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "look"
    ADD CONSTRAINT "look_fk_1"
    FOREIGN KEY("dressId")
    REFERENCES "dress"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "look"
    ADD CONSTRAINT "look_fk_2"
    FOREIGN KEY("faceId")
    REFERENCES "face"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "look"
    ADD CONSTRAINT "look_fk_3"
    FOREIGN KEY("skinId")
    REFERENCES "skin"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "look"
    ADD CONSTRAINT "look_fk_4"
    FOREIGN KEY("shoesId")
    REFERENCES "shoes"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "message"
    ADD CONSTRAINT "message_fk_0"
    FOREIGN KEY("ownerId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "message"
    ADD CONSTRAINT "message_fk_1"
    FOREIGN KEY("roomId")
    REFERENCES "room"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "post"
    ADD CONSTRAINT "post_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "post"
    ADD CONSTRAINT "post_fk_1"
    FOREIGN KEY("shitid")
    REFERENCES "shitpic"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "post"
    ADD CONSTRAINT "post_fk_2"
    FOREIGN KEY("_userShitlistUserId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "rooms_membership"
    ADD CONSTRAINT "rooms_membership_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "rooms_membership"
    ADD CONSTRAINT "rooms_membership_fk_1"
    FOREIGN KEY("roomId")
    REFERENCES "room"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_fk_0"
    FOREIGN KEY("lookId")
    REFERENCES "look"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR photopooserverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('photopooserverpod', '20250309200509732', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250309200509732', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
