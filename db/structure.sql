SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AspNetInvitations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "AspNetInvitations" (
    "Token" text NOT NULL,
    "Adresant" text NOT NULL,
    "InviterId" text NOT NULL,
    "Timestamp" timestamp without time zone NOT NULL
);


--
-- Name: AspNetRoleClaims; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "AspNetRoleClaims" (
    "Id" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text,
    "RoleId" text NOT NULL
);


--
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "AspNetRoleClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "AspNetRoleClaims_Id_seq" OWNED BY "AspNetRoleClaims"."Id";


--
-- Name: AspNetRoles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "AspNetRoles" (
    "Id" text NOT NULL,
    "ConcurrencyStamp" text,
    "Name" character varying(256),
    "NormalizedName" character varying(256)
);


--
-- Name: AspNetUserClaims; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "AspNetUserClaims" (
    "Id" integer NOT NULL,
    "ClaimType" text,
    "ClaimValue" text,
    "UserId" text NOT NULL
);


--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "AspNetUserClaims_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "AspNetUserClaims_Id_seq" OWNED BY "AspNetUserClaims"."Id";


--
-- Name: AspNetUserLogins; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "AspNetUserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" text NOT NULL
);


--
-- Name: AspNetUserRoles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "AspNetUserRoles" (
    "UserId" text NOT NULL,
    "RoleId" text NOT NULL
);


--
-- Name: AspNetUserTokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "AspNetUserTokens" (
    "UserId" text NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);


--
-- Name: AspNetUsers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "AspNetUsers" (
    "Id" text NOT NULL,
    "AccessFailedCount" integer NOT NULL,
    "ConcurrencyStamp" text,
    "Email" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "LockoutEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone,
    "NormalizedEmail" character varying(256),
    "NormalizedUserName" character varying(256),
    "PasswordHash" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "SecurityStamp" text,
    "TwoFactorEnabled" boolean NOT NULL,
    "UserName" character varying(256)
);


--
-- Name: Countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "Countries" (
    "Id" integer NOT NULL,
    "Description" text,
    "FlagId" integer,
    "Name" character varying(255) NOT NULL
);


--
-- Name: Countries_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "Countries_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Countries_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "Countries_Id_seq" OWNED BY "Countries"."Id";


--
-- Name: EliteDocument; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "EliteDocument" (
    "EliteId" integer NOT NULL,
    "FileId" integer NOT NULL
);


--
-- Name: EliteTypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "EliteTypes" (
    "Id" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


--
-- Name: EliteTypes_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "EliteTypes_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: EliteTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "EliteTypes_Id_seq" OWNED BY "EliteTypes"."Id";


--
-- Name: Elites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "Elites" (
    "Id" integer NOT NULL,
    "CountryId" integer NOT NULL,
    "Description" text,
    "Name" character varying(255) NOT NULL,
    "TypeId" integer NOT NULL
);


--
-- Name: Elites_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "Elites_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Elites_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "Elites_Id_seq" OWNED BY "Elites"."Id";


--
-- Name: FileLanguage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "FileLanguage" (
    "LanguageId" integer NOT NULL,
    "FileId" integer NOT NULL
);


--
-- Name: FileTypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "FileTypes" (
    "Id" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


--
-- Name: FileTypes_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "FileTypes_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: FileTypes_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "FileTypes_Id_seq" OWNED BY "FileTypes"."Id";


--
-- Name: Files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "Files" (
    "Id" integer NOT NULL,
    "ArchivalCode" character varying(255),
    "Date" oid NOT NULL,
    "Description" text,
    "FileName" text,
    "LanguageBlob" text,
    "Name" character varying(255),
    "ReferenceNumber" character varying(255),
    "TypeId" integer
);


--
-- Name: Files_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "Files_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Files_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "Files_Id_seq" OWNED BY "Files"."Id";


--
-- Name: Languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "Languages" (
    "Id" integer NOT NULL,
    "Name" character varying(255) NOT NULL
);


--
-- Name: Languages_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "Languages_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Languages_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "Languages_Id_seq" OWNED BY "Languages"."Id";


--
-- Name: Nationalities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "Nationalities" (
    "Id" integer NOT NULL,
    "Country" text NOT NULL,
    "NationalityAdjective" text NOT NULL
);


--
-- Name: Nationalities_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "Nationalities_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Nationalities_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "Nationalities_Id_seq" OWNED BY "Nationalities"."Id";


--
-- Name: People; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "People" (
    "Id" integer NOT NULL,
    "DateOfBirth" oid NOT NULL,
    "DateOfDeath" oid NOT NULL,
    "Description" text,
    "DocumentsBlob" text,
    "ElitesBlob" text,
    "Name" character varying(255) NOT NULL,
    "NationalitiesBlob" text,
    "PictureId" integer,
    "PlaceOfBirth" text,
    "PlaceOfDeath" text,
    "RelationsBlob" text,
    "Surname" character varying(255) NOT NULL
);


--
-- Name: PeopleElites; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "PeopleElites" (
    "Id" integer NOT NULL,
    "DateOfEmployment" oid NOT NULL,
    "DateOfResignation" oid NOT NULL,
    "EliteId" integer NOT NULL,
    "MapVisible" boolean NOT NULL,
    "PersonId" integer NOT NULL,
    "Position" character varying(255) NOT NULL
);


--
-- Name: PeopleElites_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "PeopleElites_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: PeopleElites_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "PeopleElites_Id_seq" OWNED BY "PeopleElites"."Id";


--
-- Name: People_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "People_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: People_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "People_Id_seq" OWNED BY "People"."Id";


--
-- Name: PersonDocument; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "PersonDocument" (
    "PersonId" integer NOT NULL,
    "FileId" integer NOT NULL
);


--
-- Name: PersonNationality; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "PersonNationality" (
    "NationalityId" integer NOT NULL,
    "PersonId" integer NOT NULL
);


--
-- Name: PersonPerson; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "PersonPerson" (
    "PersonId" integer NOT NULL,
    "OtherPersonId" integer NOT NULL
);


--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


--
-- Name: AspNetRoleClaims Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetRoleClaims" ALTER COLUMN "Id" SET DEFAULT nextval('"AspNetRoleClaims_Id_seq"'::regclass);


--
-- Name: AspNetUserClaims Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUserClaims" ALTER COLUMN "Id" SET DEFAULT nextval('"AspNetUserClaims_Id_seq"'::regclass);


--
-- Name: Countries Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Countries" ALTER COLUMN "Id" SET DEFAULT nextval('"Countries_Id_seq"'::regclass);


--
-- Name: EliteTypes Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "EliteTypes" ALTER COLUMN "Id" SET DEFAULT nextval('"EliteTypes_Id_seq"'::regclass);


--
-- Name: Elites Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Elites" ALTER COLUMN "Id" SET DEFAULT nextval('"Elites_Id_seq"'::regclass);


--
-- Name: FileTypes Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "FileTypes" ALTER COLUMN "Id" SET DEFAULT nextval('"FileTypes_Id_seq"'::regclass);


--
-- Name: Files Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Files" ALTER COLUMN "Id" SET DEFAULT nextval('"Files_Id_seq"'::regclass);


--
-- Name: Languages Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Languages" ALTER COLUMN "Id" SET DEFAULT nextval('"Languages_Id_seq"'::regclass);


--
-- Name: Nationalities Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Nationalities" ALTER COLUMN "Id" SET DEFAULT nextval('"Nationalities_Id_seq"'::regclass);


--
-- Name: People Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "People" ALTER COLUMN "Id" SET DEFAULT nextval('"People_Id_seq"'::regclass);


--
-- Name: PeopleElites Id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PeopleElites" ALTER COLUMN "Id" SET DEFAULT nextval('"PeopleElites_Id_seq"'::regclass);


--
-- Name: EliteTypes AlternateKey_ElitTypeName; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "EliteTypes"
    ADD CONSTRAINT "AlternateKey_ElitTypeName" UNIQUE ("Name");


--
-- Name: FileTypes AlternateKey_FileTypeName; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "FileTypes"
    ADD CONSTRAINT "AlternateKey_FileTypeName" UNIQUE ("Name");


--
-- Name: Languages AlternateKey_LanguageName; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Languages"
    ADD CONSTRAINT "AlternateKey_LanguageName" UNIQUE ("Name");


--
-- Name: Countries Countries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Countries"
    ADD CONSTRAINT "Countries_pkey" PRIMARY KEY ("Id");


--
-- Name: AspNetInvitations PK_AspNetInvitations; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetInvitations"
    ADD CONSTRAINT "PK_AspNetInvitations" PRIMARY KEY ("Token");


--
-- Name: AspNetRoleClaims PK_AspNetRoleClaims; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetRoleClaims"
    ADD CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id");


--
-- Name: AspNetRoles PK_AspNetRoles; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetRoles"
    ADD CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id");


--
-- Name: AspNetUserClaims PK_AspNetUserClaims; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUserClaims"
    ADD CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id");


--
-- Name: AspNetUserLogins PK_AspNetUserLogins; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUserLogins"
    ADD CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");


--
-- Name: AspNetUserRoles PK_AspNetUserRoles; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUserRoles"
    ADD CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");


--
-- Name: AspNetUserTokens PK_AspNetUserTokens; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUserTokens"
    ADD CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");


--
-- Name: AspNetUsers PK_AspNetUsers; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUsers"
    ADD CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id");


--
-- Name: EliteDocument PK_EliteDocument; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "EliteDocument"
    ADD CONSTRAINT "PK_EliteDocument" PRIMARY KEY ("EliteId", "FileId");


--
-- Name: EliteTypes PK_EliteTypes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "EliteTypes"
    ADD CONSTRAINT "PK_EliteTypes" PRIMARY KEY ("Id");


--
-- Name: Elites PK_Elites; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Elites"
    ADD CONSTRAINT "PK_Elites" PRIMARY KEY ("Id");


--
-- Name: FileLanguage PK_FileLanguage; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "FileLanguage"
    ADD CONSTRAINT "PK_FileLanguage" PRIMARY KEY ("LanguageId", "FileId");


--
-- Name: FileTypes PK_FileTypes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "FileTypes"
    ADD CONSTRAINT "PK_FileTypes" PRIMARY KEY ("Id");


--
-- Name: Files PK_Files; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Files"
    ADD CONSTRAINT "PK_Files" PRIMARY KEY ("Id");


--
-- Name: Languages PK_Languages; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Languages"
    ADD CONSTRAINT "PK_Languages" PRIMARY KEY ("Id");


--
-- Name: Nationalities PK_Nationalities; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Nationalities"
    ADD CONSTRAINT "PK_Nationalities" PRIMARY KEY ("Id");


--
-- Name: People PK_People; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "People"
    ADD CONSTRAINT "PK_People" PRIMARY KEY ("Id");


--
-- Name: PeopleElites PK_PeopleElites; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PeopleElites"
    ADD CONSTRAINT "PK_PeopleElites" PRIMARY KEY ("Id");


--
-- Name: PersonDocument PK_PersonDocument; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PersonDocument"
    ADD CONSTRAINT "PK_PersonDocument" PRIMARY KEY ("PersonId", "FileId");


--
-- Name: PersonNationality PK_PersonNationality; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PersonNationality"
    ADD CONSTRAINT "PK_PersonNationality" PRIMARY KEY ("NationalityId", "PersonId");


--
-- Name: PersonPerson PK_PersonPerson; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PersonPerson"
    ADD CONSTRAINT "PK_PersonPerson" PRIMARY KEY ("PersonId", "OtherPersonId");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- Name: EmailIndex; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "EmailIndex" ON "AspNetUsers" USING btree ("NormalizedEmail");


--
-- Name: IX_AspNetInvitations_InviterId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_AspNetInvitations_InviterId" ON "AspNetInvitations" USING btree ("InviterId");


--
-- Name: IX_AspNetRoleClaims_RoleId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON "AspNetRoleClaims" USING btree ("RoleId");


--
-- Name: IX_AspNetUserClaims_UserId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_AspNetUserClaims_UserId" ON "AspNetUserClaims" USING btree ("UserId");


--
-- Name: IX_AspNetUserLogins_UserId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_AspNetUserLogins_UserId" ON "AspNetUserLogins" USING btree ("UserId");


--
-- Name: IX_AspNetUserRoles_RoleId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_AspNetUserRoles_RoleId" ON "AspNetUserRoles" USING btree ("RoleId");


--
-- Name: IX_Countries_FlagId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_Countries_FlagId" ON "Countries" USING btree ("FlagId");


--
-- Name: IX_EliteDocument_FileId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_EliteDocument_FileId" ON "EliteDocument" USING btree ("FileId");


--
-- Name: IX_Elites_CountryId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_Elites_CountryId" ON "Elites" USING btree ("CountryId");


--
-- Name: IX_Elites_TypeId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_Elites_TypeId" ON "Elites" USING btree ("TypeId");


--
-- Name: IX_FileLanguage_FileId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_FileLanguage_FileId" ON "FileLanguage" USING btree ("FileId");


--
-- Name: IX_Files_TypeId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_Files_TypeId" ON "Files" USING btree ("TypeId");


--
-- Name: IX_PeopleElites_EliteId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_PeopleElites_EliteId" ON "PeopleElites" USING btree ("EliteId");


--
-- Name: IX_PeopleElites_PersonId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_PeopleElites_PersonId" ON "PeopleElites" USING btree ("PersonId");


--
-- Name: IX_People_PictureId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_People_PictureId" ON "People" USING btree ("PictureId");


--
-- Name: IX_PersonDocument_FileId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_PersonDocument_FileId" ON "PersonDocument" USING btree ("FileId");


--
-- Name: IX_PersonNationality_PersonId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_PersonNationality_PersonId" ON "PersonNationality" USING btree ("PersonId");


--
-- Name: IX_PersonPerson_OtherPersonId; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IX_PersonPerson_OtherPersonId" ON "PersonPerson" USING btree ("OtherPersonId");


--
-- Name: RoleNameIndex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "RoleNameIndex" ON "AspNetRoles" USING btree ("NormalizedName");


--
-- Name: UserNameIndex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "UserNameIndex" ON "AspNetUsers" USING btree ("NormalizedUserName");


--
-- Name: AspNetInvitations FK_AspNetInvitations_AspNetUsers_InviterId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetInvitations"
    ADD CONSTRAINT "FK_AspNetInvitations_AspNetUsers_InviterId" FOREIGN KEY ("InviterId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetRoleClaims FK_AspNetRoleClaims_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetRoleClaims"
    ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "AspNetRoles"("Id") ON DELETE CASCADE;


--
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "AspNetUsers"("Id") ON DELETE CASCADE;


--
-- Name: EliteDocument FK_EliteDocument_Elites_EliteId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "EliteDocument"
    ADD CONSTRAINT "FK_EliteDocument_Elites_EliteId" FOREIGN KEY ("EliteId") REFERENCES "Elites"("Id") ON DELETE CASCADE;


--
-- Name: EliteDocument FK_EliteDocument_Files_FileId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "EliteDocument"
    ADD CONSTRAINT "FK_EliteDocument_Files_FileId" FOREIGN KEY ("FileId") REFERENCES "Files"("Id") ON DELETE CASCADE;


--
-- Name: Elites FK_Elites_EliteTypes_TypeId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Elites"
    ADD CONSTRAINT "FK_Elites_EliteTypes_TypeId" FOREIGN KEY ("TypeId") REFERENCES "EliteTypes"("Id") ON DELETE CASCADE;


--
-- Name: FileLanguage FK_FileLanguage_Files_FileId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "FileLanguage"
    ADD CONSTRAINT "FK_FileLanguage_Files_FileId" FOREIGN KEY ("FileId") REFERENCES "Files"("Id") ON DELETE CASCADE;


--
-- Name: FileLanguage FK_FileLanguage_Languages_LanguageId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "FileLanguage"
    ADD CONSTRAINT "FK_FileLanguage_Languages_LanguageId" FOREIGN KEY ("LanguageId") REFERENCES "Languages"("Id") ON DELETE CASCADE;


--
-- Name: Files FK_Files_FileTypes_TypeId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "Files"
    ADD CONSTRAINT "FK_Files_FileTypes_TypeId" FOREIGN KEY ("TypeId") REFERENCES "FileTypes"("Id");


--
-- Name: PeopleElites FK_PeopleElites_Elites_EliteId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PeopleElites"
    ADD CONSTRAINT "FK_PeopleElites_Elites_EliteId" FOREIGN KEY ("EliteId") REFERENCES "Elites"("Id") ON DELETE CASCADE;


--
-- Name: PeopleElites FK_PeopleElites_People_PersonId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PeopleElites"
    ADD CONSTRAINT "FK_PeopleElites_People_PersonId" FOREIGN KEY ("PersonId") REFERENCES "People"("Id") ON DELETE CASCADE;


--
-- Name: People FK_People_Files_PictureId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "People"
    ADD CONSTRAINT "FK_People_Files_PictureId" FOREIGN KEY ("PictureId") REFERENCES "Files"("Id");


--
-- Name: PersonDocument FK_PersonDocument_Files_FileId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PersonDocument"
    ADD CONSTRAINT "FK_PersonDocument_Files_FileId" FOREIGN KEY ("FileId") REFERENCES "Files"("Id") ON DELETE CASCADE;


--
-- Name: PersonDocument FK_PersonDocument_People_PersonId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PersonDocument"
    ADD CONSTRAINT "FK_PersonDocument_People_PersonId" FOREIGN KEY ("PersonId") REFERENCES "People"("Id") ON DELETE CASCADE;


--
-- Name: PersonNationality FK_PersonNationality_Nationalities_NationalityId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PersonNationality"
    ADD CONSTRAINT "FK_PersonNationality_Nationalities_NationalityId" FOREIGN KEY ("NationalityId") REFERENCES "Nationalities"("Id") ON DELETE CASCADE;


--
-- Name: PersonNationality FK_PersonNationality_People_PersonId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PersonNationality"
    ADD CONSTRAINT "FK_PersonNationality_People_PersonId" FOREIGN KEY ("PersonId") REFERENCES "People"("Id") ON DELETE CASCADE;


--
-- Name: PersonPerson FK_PersonPerson_People_OtherPersonId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PersonPerson"
    ADD CONSTRAINT "FK_PersonPerson_People_OtherPersonId" FOREIGN KEY ("OtherPersonId") REFERENCES "People"("Id") ON DELETE CASCADE;


--
-- Name: PersonPerson FK_PersonPerson_People_PersonId; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "PersonPerson"
    ADD CONSTRAINT "FK_PersonPerson_People_PersonId" FOREIGN KEY ("PersonId") REFERENCES "People"("Id") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

