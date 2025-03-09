BEGIN;

--
-- Class Blocked as table blocked
--
CREATE TABLE "blocked" (
    "id" bigserial PRIMARY KEY,
    "blockedId" bigint NOT NULL,
    "blockedById" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "blocking_blocked" ON "blocked" USING btree ("blockedId", "blockedById");

--
-- Class DirectMessage as table direct_message
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
-- Class Dress as table dress
--
CREATE TABLE "dress" (
    "id" bigserial PRIMARY KEY,
    "image" bytea NOT NULL,
    "color" text NOT NULL,
    "hexColor" text NOT NULL
);

--
-- Class Face as table face
--
CREATE TABLE "face" (
    "id" bigserial PRIMARY KEY,
    "image" bytea NOT NULL
);

--
-- Class Friends as table friends
--
CREATE TABLE "friends" (
    "id" bigserial PRIMARY KEY,
    "friendsId" bigint NOT NULL,
    "friendsById" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "friend_friended" ON "friends" USING btree ("friendsId", "friendsById");

--
-- Class Hair as table hair
--
CREATE TABLE "hair" (
    "id" bigserial PRIMARY KEY,
    "color" text NOT NULL,
    "length" text NOT NULL,
    "style" text NOT NULL,
    "image" bytea NOT NULL
);

--
-- Class Look as table look
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
-- Class Message as table message
--
CREATE TABLE "message" (
    "id" bigserial PRIMARY KEY,
    "ownerId" bigint NOT NULL,
    "roomId" bigint NOT NULL,
    "message" text NOT NULL
);

--
-- Class Post as table post
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
-- Class Room as table room
--
CREATE TABLE "room" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "description" text NOT NULL,
    "city" text NOT NULL
);

--
-- Class RoomsMembership as table rooms_membership
--
CREATE TABLE "rooms_membership" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "roomId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "membership_index" ON "rooms_membership" USING btree ("userId", "roomId");

--
-- Class Shitpic as table shitpic
--
CREATE TABLE "shitpic" (
    "id" bigserial PRIMARY KEY,
    "pic" bytea NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "size" bigint NOT NULL
);

--
-- Class Shoes as table shoes
--
CREATE TABLE "shoes" (
    "id" bigserial PRIMARY KEY,
    "image" bytea NOT NULL,
    "color" text NOT NULL
);

--
-- Class Skin as table skin
--
CREATE TABLE "skin" (
    "id" bigserial PRIMARY KEY,
    "color" text NOT NULL
);

--
-- Class User as table user
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
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" bigint NOT NULL,
    "closing" bigint NOT NULL,
    "idle" bigint NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" bigint NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "serverId" text NOT NULL,
    "messageId" bigint NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" bigserial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" bigserial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" bigint,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" bigserial PRIMARY KEY,
    "number" bigint NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" bigserial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" bigint,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" bigint,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Foreign relations for "blocked" table
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
-- Foreign relations for "direct_message" table
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
-- Foreign relations for "friends" table
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
-- Foreign relations for "look" table
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
-- Foreign relations for "message" table
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
-- Foreign relations for "post" table
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
-- Foreign relations for "rooms_membership" table
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
-- Foreign relations for "user" table
--
ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_fk_0"
    FOREIGN KEY("lookId")
    REFERENCES "look"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
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
