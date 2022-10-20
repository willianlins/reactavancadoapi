--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_links DROP CONSTRAINT IF EXISTS upload_folders_parent_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_links DROP CONSTRAINT IF EXISTS upload_folders_parent_links_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_users DROP CONSTRAINT IF EXISTS up_users_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_users_role_links DROP CONSTRAINT IF EXISTS up_users_role_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.up_users_role_links DROP CONSTRAINT IF EXISTS up_users_role_links_fk;
ALTER TABLE IF EXISTS ONLY public.up_users DROP CONSTRAINT IF EXISTS up_users_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_roles DROP CONSTRAINT IF EXISTS up_roles_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_roles DROP CONSTRAINT IF EXISTS up_roles_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions DROP CONSTRAINT IF EXISTS up_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_links DROP CONSTRAINT IF EXISTS up_permissions_role_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_links DROP CONSTRAINT IF EXISTS up_permissions_role_links_fk;
ALTER TABLE IF EXISTS ONLY public.up_permissions DROP CONSTRAINT IF EXISTS up_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_tokens DROP CONSTRAINT IF EXISTS strapi_api_tokens_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_tokens DROP CONSTRAINT IF EXISTS strapi_api_tokens_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_links_fk;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.landing_pages DROP CONSTRAINT IF EXISTS landing_pages_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.landing_pages_components DROP CONSTRAINT IF EXISTS landing_pages_entity_fk;
ALTER TABLE IF EXISTS ONLY public.landing_pages DROP CONSTRAINT IF EXISTS landing_pages_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.i18n_locale DROP CONSTRAINT IF EXISTS i18n_locale_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.i18n_locale DROP CONSTRAINT IF EXISTS i18n_locale_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.files DROP CONSTRAINT IF EXISTS files_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.files_related_morphs DROP CONSTRAINT IF EXISTS files_related_morphs_fk;
ALTER TABLE IF EXISTS ONLY public.files_folder_links DROP CONSTRAINT IF EXISTS files_folder_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.files_folder_links DROP CONSTRAINT IF EXISTS files_folder_links_fk;
ALTER TABLE IF EXISTS ONLY public.files DROP CONSTRAINT IF EXISTS files_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_sectionmodules_components DROP CONSTRAINT IF EXISTS components_page_sectionmodules_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches_components DROP CONSTRAINT IF EXISTS components_page_section_teches_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews_components DROP CONSTRAINT IF EXISTS components_page_section_reviews_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs_components DROP CONSTRAINT IF EXISTS components_page_section_faqs_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_aboutuses_authors_links DROP CONSTRAINT IF EXISTS components_page_section_aboutuses_authors_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_section_aboutuses_authors_links DROP CONSTRAINT IF EXISTS components_page_section_aboutuses_authors_links_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_seaction_concepts_components DROP CONSTRAINT IF EXISTS components_page_seaction_concepts_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT IF EXISTS components_page_pricing_boxes_entity_fk;
ALTER TABLE IF EXISTS ONLY public.components_page_headers_components DROP CONSTRAINT IF EXISTS components_page_headers_entity_fk;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.authors_components DROP CONSTRAINT IF EXISTS authors_entity_fk;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_users DROP CONSTRAINT IF EXISTS admin_users_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_users_roles_links DROP CONSTRAINT IF EXISTS admin_users_roles_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.admin_users_roles_links DROP CONSTRAINT IF EXISTS admin_users_roles_links_fk;
ALTER TABLE IF EXISTS ONLY public.admin_users DROP CONSTRAINT IF EXISTS admin_users_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_roles DROP CONSTRAINT IF EXISTS admin_roles_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_roles DROP CONSTRAINT IF EXISTS admin_roles_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions DROP CONSTRAINT IF EXISTS admin_permissions_updated_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_links DROP CONSTRAINT IF EXISTS admin_permissions_role_links_inv_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_links DROP CONSTRAINT IF EXISTS admin_permissions_role_links_fk;
ALTER TABLE IF EXISTS ONLY public.admin_permissions DROP CONSTRAINT IF EXISTS admin_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.upload_folders_updated_by_id_fk;
DROP INDEX IF EXISTS public.upload_folders_parent_links_inv_fk;
DROP INDEX IF EXISTS public.upload_folders_parent_links_fk;
DROP INDEX IF EXISTS public.upload_folders_created_by_id_fk;
DROP INDEX IF EXISTS public.upload_files_folder_path_index;
DROP INDEX IF EXISTS public.up_users_updated_by_id_fk;
DROP INDEX IF EXISTS public.up_users_role_links_inv_fk;
DROP INDEX IF EXISTS public.up_users_role_links_fk;
DROP INDEX IF EXISTS public.up_users_created_by_id_fk;
DROP INDEX IF EXISTS public.up_roles_updated_by_id_fk;
DROP INDEX IF EXISTS public.up_roles_created_by_id_fk;
DROP INDEX IF EXISTS public.up_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.up_permissions_role_links_inv_fk;
DROP INDEX IF EXISTS public.up_permissions_role_links_fk;
DROP INDEX IF EXISTS public.up_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_tokens_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_tokens_created_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_token_links_inv_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_token_links_fk;
DROP INDEX IF EXISTS public.strapi_api_token_permissions_created_by_id_fk;
DROP INDEX IF EXISTS public.landing_pages_updated_by_id_fk;
DROP INDEX IF EXISTS public.landing_pages_field_index;
DROP INDEX IF EXISTS public.landing_pages_entity_fk;
DROP INDEX IF EXISTS public.landing_pages_created_by_id_fk;
DROP INDEX IF EXISTS public.landing_pages_component_type_index;
DROP INDEX IF EXISTS public.i18n_locale_updated_by_id_fk;
DROP INDEX IF EXISTS public.i18n_locale_created_by_id_fk;
DROP INDEX IF EXISTS public.files_updated_by_id_fk;
DROP INDEX IF EXISTS public.files_related_morphs_fk;
DROP INDEX IF EXISTS public.files_folder_links_inv_fk;
DROP INDEX IF EXISTS public.files_folder_links_fk;
DROP INDEX IF EXISTS public.files_created_by_id_fk;
DROP INDEX IF EXISTS public.components_page_sectionmodules_field_index;
DROP INDEX IF EXISTS public.components_page_sectionmodules_entity_fk;
DROP INDEX IF EXISTS public.components_page_sectionmodules_component_type_index;
DROP INDEX IF EXISTS public.components_page_section_teches_field_index;
DROP INDEX IF EXISTS public.components_page_section_teches_entity_fk;
DROP INDEX IF EXISTS public.components_page_section_teches_component_type_index;
DROP INDEX IF EXISTS public.components_page_section_reviews_field_index;
DROP INDEX IF EXISTS public.components_page_section_reviews_entity_fk;
DROP INDEX IF EXISTS public.components_page_section_reviews_component_type_index;
DROP INDEX IF EXISTS public.components_page_section_faqs_field_index;
DROP INDEX IF EXISTS public.components_page_section_faqs_entity_fk;
DROP INDEX IF EXISTS public.components_page_section_faqs_component_type_index;
DROP INDEX IF EXISTS public.components_page_section_aboutuses_authors_links_inv_fk;
DROP INDEX IF EXISTS public.components_page_section_aboutuses_authors_links_fk;
DROP INDEX IF EXISTS public.components_page_seaction_concepts_field_index;
DROP INDEX IF EXISTS public.components_page_seaction_concepts_entity_fk;
DROP INDEX IF EXISTS public.components_page_seaction_concepts_component_type_index;
DROP INDEX IF EXISTS public.components_page_pricing_boxes_field_index;
DROP INDEX IF EXISTS public.components_page_pricing_boxes_entity_fk;
DROP INDEX IF EXISTS public.components_page_pricing_boxes_component_type_index;
DROP INDEX IF EXISTS public.components_page_headers_field_index;
DROP INDEX IF EXISTS public.components_page_headers_entity_fk;
DROP INDEX IF EXISTS public.components_page_headers_component_type_index;
DROP INDEX IF EXISTS public.authors_updated_by_id_fk;
DROP INDEX IF EXISTS public.authors_field_index;
DROP INDEX IF EXISTS public.authors_entity_fk;
DROP INDEX IF EXISTS public.authors_created_by_id_fk;
DROP INDEX IF EXISTS public.authors_component_type_index;
DROP INDEX IF EXISTS public.admin_users_updated_by_id_fk;
DROP INDEX IF EXISTS public.admin_users_roles_links_inv_fk;
DROP INDEX IF EXISTS public.admin_users_roles_links_fk;
DROP INDEX IF EXISTS public.admin_users_created_by_id_fk;
DROP INDEX IF EXISTS public.admin_roles_updated_by_id_fk;
DROP INDEX IF EXISTS public.admin_roles_created_by_id_fk;
DROP INDEX IF EXISTS public.admin_permissions_updated_by_id_fk;
DROP INDEX IF EXISTS public.admin_permissions_role_links_inv_fk;
DROP INDEX IF EXISTS public.admin_permissions_role_links_fk;
DROP INDEX IF EXISTS public.admin_permissions_created_by_id_fk;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_pkey;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_path_index;
ALTER TABLE IF EXISTS ONLY public.upload_folders DROP CONSTRAINT IF EXISTS upload_folders_path_id_index;
ALTER TABLE IF EXISTS ONLY public.upload_folders_parent_links DROP CONSTRAINT IF EXISTS upload_folders_parent_links_pkey;
ALTER TABLE IF EXISTS ONLY public.up_users_role_links DROP CONSTRAINT IF EXISTS up_users_role_links_pkey;
ALTER TABLE IF EXISTS ONLY public.up_users DROP CONSTRAINT IF EXISTS up_users_pkey;
ALTER TABLE IF EXISTS ONLY public.up_roles DROP CONSTRAINT IF EXISTS up_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.up_permissions_role_links DROP CONSTRAINT IF EXISTS up_permissions_role_links_pkey;
ALTER TABLE IF EXISTS ONLY public.up_permissions DROP CONSTRAINT IF EXISTS up_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_webhooks DROP CONSTRAINT IF EXISTS strapi_webhooks_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_migrations DROP CONSTRAINT IF EXISTS strapi_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_database_schema DROP CONSTRAINT IF EXISTS strapi_database_schema_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_core_store_settings DROP CONSTRAINT IF EXISTS strapi_core_store_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_api_tokens DROP CONSTRAINT IF EXISTS strapi_api_tokens_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_token_links_pkey;
ALTER TABLE IF EXISTS ONLY public.strapi_api_token_permissions DROP CONSTRAINT IF EXISTS strapi_api_token_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.landing_pages DROP CONSTRAINT IF EXISTS landing_pages_pkey;
ALTER TABLE IF EXISTS ONLY public.landing_pages_components DROP CONSTRAINT IF EXISTS landing_pages_components_pkey;
ALTER TABLE IF EXISTS ONLY public.i18n_locale DROP CONSTRAINT IF EXISTS i18n_locale_pkey;
ALTER TABLE IF EXISTS ONLY public.files_related_morphs DROP CONSTRAINT IF EXISTS files_related_morphs_pkey;
ALTER TABLE IF EXISTS ONLY public.files DROP CONSTRAINT IF EXISTS files_pkey;
ALTER TABLE IF EXISTS ONLY public.files_folder_links DROP CONSTRAINT IF EXISTS files_folder_links_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_tech_icons DROP CONSTRAINT IF EXISTS components_page_tech_icons_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_social_links DROP CONSTRAINT IF EXISTS components_page_social_links_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_sectionmodules DROP CONSTRAINT IF EXISTS components_page_sectionmodules_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_sectionmodules_components DROP CONSTRAINT IF EXISTS components_page_sectionmodules_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches DROP CONSTRAINT IF EXISTS components_page_section_teches_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_teches_components DROP CONSTRAINT IF EXISTS components_page_section_teches_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews DROP CONSTRAINT IF EXISTS components_page_section_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_reviews_components DROP CONSTRAINT IF EXISTS components_page_section_reviews_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs DROP CONSTRAINT IF EXISTS components_page_section_faqs_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_faqs_components DROP CONSTRAINT IF EXISTS components_page_section_faqs_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_agenda DROP CONSTRAINT IF EXISTS components_page_section_agenda_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_aboutuses DROP CONSTRAINT IF EXISTS components_page_section_aboutuses_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_aboutuses_authors_links DROP CONSTRAINT IF EXISTS components_page_section_aboutuses_authors_links_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_section_about_projects DROP CONSTRAINT IF EXISTS components_page_section_about_projects_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_seaction_concepts DROP CONSTRAINT IF EXISTS components_page_seaction_concepts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_seaction_concepts_components DROP CONSTRAINT IF EXISTS components_page_seaction_concepts_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_reviews DROP CONSTRAINT IF EXISTS components_page_reviews_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_questions DROP CONSTRAINT IF EXISTS components_page_questions_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes DROP CONSTRAINT IF EXISTS components_page_pricing_boxes_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_pricing_boxes_components DROP CONSTRAINT IF EXISTS components_page_pricing_boxes_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_modules DROP CONSTRAINT IF EXISTS components_page_modules_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_headers DROP CONSTRAINT IF EXISTS components_page_headers_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_headers_components DROP CONSTRAINT IF EXISTS components_page_headers_components_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_concepts DROP CONSTRAINT IF EXISTS components_page_concepts_pkey;
ALTER TABLE IF EXISTS ONLY public.components_page_buttons DROP CONSTRAINT IF EXISTS components_page_buttons_pkey;
ALTER TABLE IF EXISTS ONLY public.authors DROP CONSTRAINT IF EXISTS authors_pkey;
ALTER TABLE IF EXISTS ONLY public.authors_components DROP CONSTRAINT IF EXISTS authors_components_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_users_roles_links DROP CONSTRAINT IF EXISTS admin_users_roles_links_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_users DROP CONSTRAINT IF EXISTS admin_users_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_roles DROP CONSTRAINT IF EXISTS admin_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_permissions_role_links DROP CONSTRAINT IF EXISTS admin_permissions_role_links_pkey;
ALTER TABLE IF EXISTS ONLY public.admin_permissions DROP CONSTRAINT IF EXISTS admin_permissions_pkey;
ALTER TABLE IF EXISTS public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.upload_folders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.up_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.landing_pages_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.landing_pages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.i18n_locale ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.files_folder_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.files ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_tech_icons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_social_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_sectionmodules_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_sectionmodules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_teches_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_teches ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_reviews_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_faqs_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_faqs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_agenda ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_aboutuses_authors_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_aboutuses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_section_about_projects ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_seaction_concepts_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_seaction_concepts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_reviews ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_questions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_pricing_boxes_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_pricing_boxes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_modules ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_headers_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_headers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_concepts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.components_page_buttons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authors_components ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.authors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.admin_permissions ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.upload_folders_parent_links_id_seq;
DROP TABLE IF EXISTS public.upload_folders_parent_links;
DROP SEQUENCE IF EXISTS public.upload_folders_id_seq;
DROP TABLE IF EXISTS public.upload_folders;
DROP SEQUENCE IF EXISTS public.up_users_role_links_id_seq;
DROP TABLE IF EXISTS public.up_users_role_links;
DROP SEQUENCE IF EXISTS public.up_users_id_seq;
DROP TABLE IF EXISTS public.up_users;
DROP SEQUENCE IF EXISTS public.up_roles_id_seq;
DROP TABLE IF EXISTS public.up_roles;
DROP SEQUENCE IF EXISTS public.up_permissions_role_links_id_seq;
DROP TABLE IF EXISTS public.up_permissions_role_links;
DROP SEQUENCE IF EXISTS public.up_permissions_id_seq;
DROP TABLE IF EXISTS public.up_permissions;
DROP SEQUENCE IF EXISTS public.strapi_webhooks_id_seq;
DROP TABLE IF EXISTS public.strapi_webhooks;
DROP SEQUENCE IF EXISTS public.strapi_migrations_id_seq;
DROP TABLE IF EXISTS public.strapi_migrations;
DROP SEQUENCE IF EXISTS public.strapi_database_schema_id_seq;
DROP TABLE IF EXISTS public.strapi_database_schema;
DROP SEQUENCE IF EXISTS public.strapi_core_store_settings_id_seq;
DROP TABLE IF EXISTS public.strapi_core_store_settings;
DROP SEQUENCE IF EXISTS public.strapi_api_tokens_id_seq;
DROP TABLE IF EXISTS public.strapi_api_tokens;
DROP SEQUENCE IF EXISTS public.strapi_api_token_permissions_token_links_id_seq;
DROP TABLE IF EXISTS public.strapi_api_token_permissions_token_links;
DROP SEQUENCE IF EXISTS public.strapi_api_token_permissions_id_seq;
DROP TABLE IF EXISTS public.strapi_api_token_permissions;
DROP SEQUENCE IF EXISTS public.landing_pages_id_seq;
DROP SEQUENCE IF EXISTS public.landing_pages_components_id_seq;
DROP TABLE IF EXISTS public.landing_pages_components;
DROP TABLE IF EXISTS public.landing_pages;
DROP SEQUENCE IF EXISTS public.i18n_locale_id_seq;
DROP TABLE IF EXISTS public.i18n_locale;
DROP SEQUENCE IF EXISTS public.files_related_morphs_id_seq;
DROP TABLE IF EXISTS public.files_related_morphs;
DROP SEQUENCE IF EXISTS public.files_id_seq;
DROP SEQUENCE IF EXISTS public.files_folder_links_id_seq;
DROP TABLE IF EXISTS public.files_folder_links;
DROP TABLE IF EXISTS public.files;
DROP SEQUENCE IF EXISTS public.components_page_tech_icons_id_seq;
DROP TABLE IF EXISTS public.components_page_tech_icons;
DROP SEQUENCE IF EXISTS public.components_page_social_links_id_seq;
DROP TABLE IF EXISTS public.components_page_social_links;
DROP SEQUENCE IF EXISTS public.components_page_sectionmodules_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_sectionmodules_components_id_seq;
DROP TABLE IF EXISTS public.components_page_sectionmodules_components;
DROP TABLE IF EXISTS public.components_page_sectionmodules;
DROP SEQUENCE IF EXISTS public.components_page_section_teches_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_teches_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_teches_components;
DROP TABLE IF EXISTS public.components_page_section_teches;
DROP SEQUENCE IF EXISTS public.components_page_section_reviews_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_reviews_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_reviews_components;
DROP TABLE IF EXISTS public.components_page_section_reviews;
DROP SEQUENCE IF EXISTS public.components_page_section_faqs_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_faqs_components_id_seq;
DROP TABLE IF EXISTS public.components_page_section_faqs_components;
DROP TABLE IF EXISTS public.components_page_section_faqs;
DROP SEQUENCE IF EXISTS public.components_page_section_agenda_id_seq;
DROP TABLE IF EXISTS public.components_page_section_agenda;
DROP SEQUENCE IF EXISTS public.components_page_section_aboutuses_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_section_aboutuses_authors_links_id_seq;
DROP TABLE IF EXISTS public.components_page_section_aboutuses_authors_links;
DROP TABLE IF EXISTS public.components_page_section_aboutuses;
DROP SEQUENCE IF EXISTS public.components_page_section_about_projects_id_seq;
DROP TABLE IF EXISTS public.components_page_section_about_projects;
DROP SEQUENCE IF EXISTS public.components_page_seaction_concepts_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_seaction_concepts_components_id_seq;
DROP TABLE IF EXISTS public.components_page_seaction_concepts_components;
DROP TABLE IF EXISTS public.components_page_seaction_concepts;
DROP SEQUENCE IF EXISTS public.components_page_reviews_id_seq;
DROP TABLE IF EXISTS public.components_page_reviews;
DROP SEQUENCE IF EXISTS public.components_page_questions_id_seq;
DROP TABLE IF EXISTS public.components_page_questions;
DROP SEQUENCE IF EXISTS public.components_page_pricing_boxes_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_pricing_boxes_components_id_seq;
DROP TABLE IF EXISTS public.components_page_pricing_boxes_components;
DROP TABLE IF EXISTS public.components_page_pricing_boxes;
DROP SEQUENCE IF EXISTS public.components_page_modules_id_seq;
DROP TABLE IF EXISTS public.components_page_modules;
DROP SEQUENCE IF EXISTS public.components_page_headers_id_seq;
DROP SEQUENCE IF EXISTS public.components_page_headers_components_id_seq;
DROP TABLE IF EXISTS public.components_page_headers_components;
DROP TABLE IF EXISTS public.components_page_headers;
DROP SEQUENCE IF EXISTS public.components_page_concepts_id_seq;
DROP TABLE IF EXISTS public.components_page_concepts;
DROP SEQUENCE IF EXISTS public.components_page_buttons_id_seq;
DROP TABLE IF EXISTS public.components_page_buttons;
DROP SEQUENCE IF EXISTS public.authors_id_seq;
DROP SEQUENCE IF EXISTS public.authors_components_id_seq;
DROP TABLE IF EXISTS public.authors_components;
DROP TABLE IF EXISTS public.authors;
DROP SEQUENCE IF EXISTS public.admin_users_roles_links_id_seq;
DROP TABLE IF EXISTS public.admin_users_roles_links;
DROP SEQUENCE IF EXISTS public.admin_users_id_seq;
DROP TABLE IF EXISTS public.admin_users;
DROP SEQUENCE IF EXISTS public.admin_roles_id_seq;
DROP TABLE IF EXISTS public.admin_roles;
DROP SEQUENCE IF EXISTS public.admin_permissions_role_links_id_seq;
DROP TABLE IF EXISTS public.admin_permissions_role_links;
DROP SEQUENCE IF EXISTS public.admin_permissions_id_seq;
DROP TABLE IF EXISTS public.admin_permissions;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO "strapi-api";

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO "strapi-api";

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer
);


ALTER TABLE public.admin_permissions_role_links OWNER TO "strapi-api";

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO "strapi-api";

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO "strapi-api";

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO "strapi-api";

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO "strapi-api";

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO "strapi-api";

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles_links OWNER TO "strapi-api";

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO "strapi-api";

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    role character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.authors OWNER TO "strapi-api";

--
-- Name: authors_components; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.authors_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.authors_components OWNER TO "strapi-api";

--
-- Name: authors_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.authors_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_components_id_seq OWNER TO "strapi-api";

--
-- Name: authors_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.authors_components_id_seq OWNED BY public.authors_components.id;


--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO "strapi-api";

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: components_page_buttons; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_buttons (
    id integer NOT NULL,
    label character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_buttons OWNER TO "strapi-api";

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_buttons_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_buttons_id_seq OWNED BY public.components_page_buttons.id;


--
-- Name: components_page_concepts; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_concepts (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_concepts OWNER TO "strapi-api";

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_concepts_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_concepts_id_seq OWNED BY public.components_page_concepts.id;


--
-- Name: components_page_headers; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_headers (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_headers OWNER TO "strapi-api";

--
-- Name: components_page_headers_components; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_headers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.components_page_headers_components OWNER TO "strapi-api";

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_components_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_headers_components_id_seq OWNED BY public.components_page_headers_components.id;


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_headers_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_headers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_headers_id_seq OWNED BY public.components_page_headers.id;


--
-- Name: components_page_modules; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_modules (
    id integer NOT NULL,
    title character varying(255),
    subtitle character varying(255),
    description text
);


ALTER TABLE public.components_page_modules OWNER TO "strapi-api";

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_modules_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_modules_id_seq OWNED BY public.components_page_modules.id;


--
-- Name: components_page_pricing_boxes; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_pricing_boxes (
    id integer NOT NULL,
    total_price integer,
    number_installments integer,
    pricing_installments integer,
    benefits text
);


ALTER TABLE public.components_page_pricing_boxes OWNER TO "strapi-api";

--
-- Name: components_page_pricing_boxes_components; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_pricing_boxes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.components_page_pricing_boxes_components OWNER TO "strapi-api";

--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_pricing_boxes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_pricing_boxes_components_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_pricing_boxes_components_id_seq OWNED BY public.components_page_pricing_boxes_components.id;


--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_pricing_boxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_pricing_boxes_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_pricing_boxes_id_seq OWNED BY public.components_page_pricing_boxes.id;


--
-- Name: components_page_questions; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_questions (
    id integer NOT NULL,
    question text,
    answer text
);


ALTER TABLE public.components_page_questions OWNER TO "strapi-api";

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_questions_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_questions_id_seq OWNED BY public.components_page_questions.id;


--
-- Name: components_page_reviews; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_reviews (
    id integer NOT NULL,
    name character varying(255),
    text text
);


ALTER TABLE public.components_page_reviews OWNER TO "strapi-api";

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_reviews_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_reviews_id_seq OWNED BY public.components_page_reviews.id;


--
-- Name: components_page_seaction_concepts; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_seaction_concepts (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_seaction_concepts OWNER TO "strapi-api";

--
-- Name: components_page_seaction_concepts_components; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_seaction_concepts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.components_page_seaction_concepts_components OWNER TO "strapi-api";

--
-- Name: components_page_seaction_concepts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_seaction_concepts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_seaction_concepts_components_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_seaction_concepts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_seaction_concepts_components_id_seq OWNED BY public.components_page_seaction_concepts_components.id;


--
-- Name: components_page_seaction_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_seaction_concepts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_seaction_concepts_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_seaction_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_seaction_concepts_id_seq OWNED BY public.components_page_seaction_concepts.id;


--
-- Name: components_page_section_about_projects; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_about_projects (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_section_about_projects OWNER TO "strapi-api";

--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_about_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_about_projects_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_about_projects_id_seq OWNED BY public.components_page_section_about_projects.id;


--
-- Name: components_page_section_aboutuses; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_aboutuses (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_aboutuses OWNER TO "strapi-api";

--
-- Name: components_page_section_aboutuses_authors_links; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_aboutuses_authors_links (
    id integer NOT NULL,
    section_about_us_id integer,
    author_id integer
);


ALTER TABLE public.components_page_section_aboutuses_authors_links OWNER TO "strapi-api";

--
-- Name: components_page_section_aboutuses_authors_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_aboutuses_authors_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_aboutuses_authors_links_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_aboutuses_authors_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_aboutuses_authors_links_id_seq OWNED BY public.components_page_section_aboutuses_authors_links.id;


--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_aboutuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_aboutuses_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_aboutuses_id_seq OWNED BY public.components_page_section_aboutuses.id;


--
-- Name: components_page_section_agenda; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_agenda (
    id integer NOT NULL,
    title character varying(255),
    description text
);


ALTER TABLE public.components_page_section_agenda OWNER TO "strapi-api";

--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_agenda_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_agenda_id_seq OWNED BY public.components_page_section_agenda.id;


--
-- Name: components_page_section_faqs; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_faqs (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_faqs OWNER TO "strapi-api";

--
-- Name: components_page_section_faqs_components; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_faqs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.components_page_section_faqs_components OWNER TO "strapi-api";

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_faqs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_components_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_faqs_components_id_seq OWNED BY public.components_page_section_faqs_components.id;


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_faqs_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_faqs_id_seq OWNED BY public.components_page_section_faqs.id;


--
-- Name: components_page_section_reviews; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_reviews (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_reviews OWNER TO "strapi-api";

--
-- Name: components_page_section_reviews_components; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_reviews_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.components_page_section_reviews_components OWNER TO "strapi-api";

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_reviews_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_components_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_reviews_components_id_seq OWNED BY public.components_page_section_reviews_components.id;


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_reviews_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_reviews_id_seq OWNED BY public.components_page_section_reviews.id;


--
-- Name: components_page_section_teches; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_teches (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_section_teches OWNER TO "strapi-api";

--
-- Name: components_page_section_teches_components; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_section_teches_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.components_page_section_teches_components OWNER TO "strapi-api";

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_teches_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_components_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_teches_components_id_seq OWNED BY public.components_page_section_teches_components.id;


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_section_teches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_section_teches_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_section_teches_id_seq OWNED BY public.components_page_section_teches.id;


--
-- Name: components_page_sectionmodules; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_sectionmodules (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_sectionmodules OWNER TO "strapi-api";

--
-- Name: components_page_sectionmodules_components; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_sectionmodules_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.components_page_sectionmodules_components OWNER TO "strapi-api";

--
-- Name: components_page_sectionmodules_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_sectionmodules_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_sectionmodules_components_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_sectionmodules_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_sectionmodules_components_id_seq OWNED BY public.components_page_sectionmodules_components.id;


--
-- Name: components_page_sectionmodules_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_sectionmodules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_sectionmodules_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_sectionmodules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_sectionmodules_id_seq OWNED BY public.components_page_sectionmodules.id;


--
-- Name: components_page_social_links; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_social_links (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);


ALTER TABLE public.components_page_social_links OWNER TO "strapi-api";

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_social_links_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_social_links_id_seq OWNED BY public.components_page_social_links.id;


--
-- Name: components_page_tech_icons; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.components_page_tech_icons (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_page_tech_icons OWNER TO "strapi-api";

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.components_page_tech_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_page_tech_icons_id_seq OWNER TO "strapi-api";

--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.components_page_tech_icons_id_seq OWNED BY public.components_page_tech_icons.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO "strapi-api";

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer
);


ALTER TABLE public.files_folder_links OWNER TO "strapi-api";

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO "strapi-api";

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO "strapi-api";

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


ALTER TABLE public.files_related_morphs OWNER TO "strapi-api";

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO "strapi-api";

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO "strapi-api";

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO "strapi-api";

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: landing_pages; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.landing_pages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.landing_pages OWNER TO "strapi-api";

--
-- Name: landing_pages_components; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.landing_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);


ALTER TABLE public.landing_pages_components OWNER TO "strapi-api";

--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.landing_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_pages_components_id_seq OWNER TO "strapi-api";

--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.landing_pages_components_id_seq OWNED BY public.landing_pages_components.id;


--
-- Name: landing_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.landing_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_pages_id_seq OWNER TO "strapi-api";

--
-- Name: landing_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.landing_pages_id_seq OWNED BY public.landing_pages.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO "strapi-api";

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO "strapi-api";

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO "strapi-api";

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO "strapi-api";

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO "strapi-api";

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO "strapi-api";

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO "strapi-api";

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO "strapi-api";

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO "strapi-api";

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO "strapi-api";

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO "strapi-api";

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO "strapi-api";

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO "strapi-api";

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO "strapi-api";

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO "strapi-api";

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO "strapi-api";

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer
);


ALTER TABLE public.up_permissions_role_links OWNER TO "strapi-api";

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO "strapi-api";

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO "strapi-api";

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO "strapi-api";

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO "strapi-api";

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO "strapi-api";

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.up_users_role_links OWNER TO "strapi-api";

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO "strapi-api";

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO "strapi-api";

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO "strapi-api";

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: strapi-api
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer
);


ALTER TABLE public.upload_folders_parent_links OWNER TO "strapi-api";

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi-api
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO "strapi-api";

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi-api
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Name: authors_components id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.authors_components ALTER COLUMN id SET DEFAULT nextval('public.authors_components_id_seq'::regclass);


--
-- Name: components_page_buttons id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_page_buttons_id_seq'::regclass);


--
-- Name: components_page_concepts id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_concepts_id_seq'::regclass);


--
-- Name: components_page_headers id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_headers ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_id_seq'::regclass);


--
-- Name: components_page_headers_components id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_headers_components_id_seq'::regclass);


--
-- Name: components_page_modules id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_modules ALTER COLUMN id SET DEFAULT nextval('public.components_page_modules_id_seq'::regclass);


--
-- Name: components_page_pricing_boxes id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_pricing_boxes ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_id_seq'::regclass);


--
-- Name: components_page_pricing_boxes_components id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_pricing_boxes_components_id_seq'::regclass);


--
-- Name: components_page_questions id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_questions ALTER COLUMN id SET DEFAULT nextval('public.components_page_questions_id_seq'::regclass);


--
-- Name: components_page_reviews id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_reviews_id_seq'::regclass);


--
-- Name: components_page_seaction_concepts id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_seaction_concepts ALTER COLUMN id SET DEFAULT nextval('public.components_page_seaction_concepts_id_seq'::regclass);


--
-- Name: components_page_seaction_concepts_components id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_seaction_concepts_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_seaction_concepts_components_id_seq'::regclass);


--
-- Name: components_page_section_about_projects id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_about_projects ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_about_projects_id_seq'::regclass);


--
-- Name: components_page_section_aboutuses id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_aboutuses ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses_id_seq'::regclass);


--
-- Name: components_page_section_aboutuses_authors_links id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_aboutuses_authors_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_aboutuses_authors_links_id_seq'::regclass);


--
-- Name: components_page_section_agenda id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_agenda ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_agenda_id_seq'::regclass);


--
-- Name: components_page_section_faqs id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_id_seq'::regclass);


--
-- Name: components_page_section_faqs_components id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_faqs_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_faqs_components_id_seq'::regclass);


--
-- Name: components_page_section_reviews id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_reviews ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_id_seq'::regclass);


--
-- Name: components_page_section_reviews_components id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_reviews_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_reviews_components_id_seq'::regclass);


--
-- Name: components_page_section_teches id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_teches ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_id_seq'::regclass);


--
-- Name: components_page_section_teches_components id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_teches_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_section_teches_components_id_seq'::regclass);


--
-- Name: components_page_sectionmodules id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_sectionmodules ALTER COLUMN id SET DEFAULT nextval('public.components_page_sectionmodules_id_seq'::regclass);


--
-- Name: components_page_sectionmodules_components id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_sectionmodules_components ALTER COLUMN id SET DEFAULT nextval('public.components_page_sectionmodules_components_id_seq'::regclass);


--
-- Name: components_page_social_links id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_social_links ALTER COLUMN id SET DEFAULT nextval('public.components_page_social_links_id_seq'::regclass);


--
-- Name: components_page_tech_icons id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_tech_icons ALTER COLUMN id SET DEFAULT nextval('public.components_page_tech_icons_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: landing_pages id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.landing_pages ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_id_seq'::regclass);


--
-- Name: landing_pages_components id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.landing_pages_components ALTER COLUMN id SET DEFAULT nextval('public.landing_pages_components_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2022-10-17 08:54:44.554	2022-10-17 08:54:44.554	\N	\N
2	plugin::content-manager.explorer.create	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.pricingInstallments", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2022-10-17 08:54:44.559	2022-10-17 08:54:44.559	\N	\N
3	plugin::content-manager.explorer.read	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2022-10-17 08:54:44.563	2022-10-17 08:54:44.563	\N	\N
4	plugin::content-manager.explorer.read	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.pricingInstallments", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2022-10-17 08:54:44.567	2022-10-17 08:54:44.567	\N	\N
5	plugin::content-manager.explorer.update	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2022-10-17 08:54:44.571	2022-10-17 08:54:44.571	\N	\N
6	plugin::content-manager.explorer.update	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.pricingInstallments", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2022-10-17 08:54:44.575	2022-10-17 08:54:44.575	\N	\N
7	plugin::content-manager.explorer.delete	api::author.author	{}	[]	2022-10-17 08:54:44.579	2022-10-17 08:54:44.579	\N	\N
8	plugin::content-manager.explorer.delete	api::landing-page.landing-page	{}	[]	2022-10-17 08:54:44.583	2022-10-17 08:54:44.583	\N	\N
9	plugin::upload.read	\N	{}	[]	2022-10-17 08:54:44.587	2022-10-17 08:54:44.587	\N	\N
10	plugin::upload.assets.create	\N	{}	[]	2022-10-17 08:54:44.592	2022-10-17 08:54:44.592	\N	\N
11	plugin::upload.assets.update	\N	{}	[]	2022-10-17 08:54:44.596	2022-10-17 08:54:44.596	\N	\N
12	plugin::upload.assets.download	\N	{}	[]	2022-10-17 08:54:44.6	2022-10-17 08:54:44.6	\N	\N
13	plugin::upload.assets.copy-link	\N	{}	[]	2022-10-17 08:54:44.604	2022-10-17 08:54:44.604	\N	\N
14	plugin::content-manager.explorer.create	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	["admin::is-creator"]	2022-10-17 08:54:44.611	2022-10-17 08:54:44.611	\N	\N
15	plugin::content-manager.explorer.create	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.pricingInstallments", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	["admin::is-creator"]	2022-10-17 08:54:44.614	2022-10-17 08:54:44.614	\N	\N
16	plugin::content-manager.explorer.read	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	["admin::is-creator"]	2022-10-17 08:54:44.618	2022-10-17 08:54:44.618	\N	\N
17	plugin::content-manager.explorer.read	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.pricingInstallments", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	["admin::is-creator"]	2022-10-17 08:54:44.622	2022-10-17 08:54:44.622	\N	\N
18	plugin::content-manager.explorer.update	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	["admin::is-creator"]	2022-10-17 08:54:44.626	2022-10-17 08:54:44.626	\N	\N
47	plugin::upload.assets.download	\N	{}	[]	2022-10-17 08:54:44.763	2022-10-17 08:54:44.763	\N	\N
48	plugin::upload.assets.copy-link	\N	{}	[]	2022-10-17 08:54:44.767	2022-10-17 08:54:44.767	\N	\N
49	plugin::upload.settings.read	\N	{}	[]	2022-10-17 08:54:44.771	2022-10-17 08:54:44.771	\N	\N
50	plugin::i18n.locale.create	\N	{}	[]	2022-10-17 08:54:44.775	2022-10-17 08:54:44.775	\N	\N
19	plugin::content-manager.explorer.update	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.pricingInstallments", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	["admin::is-creator"]	2022-10-17 08:54:44.63	2022-10-17 08:54:44.63	\N	\N
20	plugin::content-manager.explorer.delete	api::author.author	{}	["admin::is-creator"]	2022-10-17 08:54:44.633	2022-10-17 08:54:44.633	\N	\N
21	plugin::content-manager.explorer.delete	api::landing-page.landing-page	{}	["admin::is-creator"]	2022-10-17 08:54:44.637	2022-10-17 08:54:44.637	\N	\N
22	plugin::upload.read	\N	{}	["admin::is-creator"]	2022-10-17 08:54:44.641	2022-10-17 08:54:44.641	\N	\N
23	plugin::upload.assets.create	\N	{}	[]	2022-10-17 08:54:44.645	2022-10-17 08:54:44.645	\N	\N
24	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2022-10-17 08:54:44.649	2022-10-17 08:54:44.649	\N	\N
25	plugin::upload.assets.download	\N	{}	[]	2022-10-17 08:54:44.652	2022-10-17 08:54:44.652	\N	\N
26	plugin::upload.assets.copy-link	\N	{}	[]	2022-10-17 08:54:44.656	2022-10-17 08:54:44.656	\N	\N
27	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-10-17 08:54:44.684	2022-10-17 08:54:44.684	\N	\N
28	plugin::content-manager.explorer.create	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2022-10-17 08:54:44.688	2022-10-17 08:54:44.688	\N	\N
29	plugin::content-manager.explorer.create	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.pricingInstallments", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2022-10-17 08:54:44.692	2022-10-17 08:54:44.692	\N	\N
30	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-10-17 08:54:44.696	2022-10-17 08:54:44.696	\N	\N
31	plugin::content-manager.explorer.read	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2022-10-17 08:54:44.7	2022-10-17 08:54:44.7	\N	\N
32	plugin::content-manager.explorer.read	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.pricingInstallments", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2022-10-17 08:54:44.704	2022-10-17 08:54:44.704	\N	\N
33	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-10-17 08:54:44.708	2022-10-17 08:54:44.708	\N	\N
34	plugin::content-manager.explorer.update	api::author.author	{"fields": ["photo", "name", "role", "socialLinks.title", "socialLinks.url", "description"]}	[]	2022-10-17 08:54:44.713	2022-10-17 08:54:44.713	\N	\N
35	plugin::content-manager.explorer.update	api::landing-page.landing-page	{"fields": ["logo", "header.title", "header.description", "header.button.label", "header.button.url", "header.image", "sectionAboutProject.title", "sectionAboutProject.description", "sectionAboutProject.image", "sectionTech.title", "sectionTech.techIcons.icon", "sectionTech.techIcons.title", "sectionConcepts.title", "sectionConcepts.concepts.title", "sectionModules.title", "sectionModules.modules.title", "sectionModules.modules.subtitle", "sectionModules.modules.description", "sectionAgenda.title", "sectionAgenda.description", "pricingBox.totalPrice", "pricingBox.numberInstallments", "pricingBox.pricingInstallments", "pricingBox.benefits", "pricingBox.button.label", "pricingBox.button.url", "sectionAboutUs.title", "sectionAboutUs.authors", "sectionReviews.title", "sectionReviews.reviews.name", "sectionReviews.reviews.text", "sectionReviews.reviews.photo", "sectionFaq.title", "sectionFaq.questions.question", "sectionFaq.questions.answer"]}	[]	2022-10-17 08:54:44.717	2022-10-17 08:54:44.717	\N	\N
36	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2022-10-17 08:54:44.721	2022-10-17 08:54:44.721	\N	\N
37	plugin::content-manager.explorer.delete	api::author.author	{}	[]	2022-10-17 08:54:44.725	2022-10-17 08:54:44.725	\N	\N
38	plugin::content-manager.explorer.delete	api::landing-page.landing-page	{}	[]	2022-10-17 08:54:44.729	2022-10-17 08:54:44.729	\N	\N
39	plugin::content-manager.single-types.configure-view	\N	{}	[]	2022-10-17 08:54:44.732	2022-10-17 08:54:44.732	\N	\N
40	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2022-10-17 08:54:44.736	2022-10-17 08:54:44.736	\N	\N
41	plugin::content-manager.components.configure-layout	\N	{}	[]	2022-10-17 08:54:44.74	2022-10-17 08:54:44.74	\N	\N
42	plugin::content-type-builder.read	\N	{}	[]	2022-10-17 08:54:44.743	2022-10-17 08:54:44.743	\N	\N
43	plugin::email.settings.read	\N	{}	[]	2022-10-17 08:54:44.747	2022-10-17 08:54:44.747	\N	\N
44	plugin::upload.read	\N	{}	[]	2022-10-17 08:54:44.751	2022-10-17 08:54:44.751	\N	\N
45	plugin::upload.assets.create	\N	{}	[]	2022-10-17 08:54:44.755	2022-10-17 08:54:44.755	\N	\N
46	plugin::upload.assets.update	\N	{}	[]	2022-10-17 08:54:44.759	2022-10-17 08:54:44.759	\N	\N
51	plugin::i18n.locale.read	\N	{}	[]	2022-10-17 08:54:44.779	2022-10-17 08:54:44.779	\N	\N
52	plugin::i18n.locale.update	\N	{}	[]	2022-10-17 08:54:44.783	2022-10-17 08:54:44.783	\N	\N
53	plugin::i18n.locale.delete	\N	{}	[]	2022-10-17 08:54:44.786	2022-10-17 08:54:44.786	\N	\N
54	plugin::users-permissions.roles.create	\N	{}	[]	2022-10-17 08:54:44.79	2022-10-17 08:54:44.79	\N	\N
55	plugin::users-permissions.roles.read	\N	{}	[]	2022-10-17 08:54:44.794	2022-10-17 08:54:44.794	\N	\N
56	plugin::users-permissions.roles.update	\N	{}	[]	2022-10-17 08:54:44.798	2022-10-17 08:54:44.798	\N	\N
57	plugin::users-permissions.roles.delete	\N	{}	[]	2022-10-17 08:54:44.802	2022-10-17 08:54:44.802	\N	\N
58	plugin::users-permissions.providers.read	\N	{}	[]	2022-10-17 08:54:44.806	2022-10-17 08:54:44.806	\N	\N
59	plugin::users-permissions.providers.update	\N	{}	[]	2022-10-17 08:54:44.811	2022-10-17 08:54:44.811	\N	\N
60	plugin::users-permissions.email-templates.read	\N	{}	[]	2022-10-17 08:54:44.815	2022-10-17 08:54:44.815	\N	\N
61	plugin::users-permissions.email-templates.update	\N	{}	[]	2022-10-17 08:54:44.819	2022-10-17 08:54:44.819	\N	\N
62	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2022-10-17 08:54:44.823	2022-10-17 08:54:44.823	\N	\N
63	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2022-10-17 08:54:44.827	2022-10-17 08:54:44.827	\N	\N
64	admin::marketplace.read	\N	{}	[]	2022-10-17 08:54:44.83	2022-10-17 08:54:44.83	\N	\N
65	admin::marketplace.plugins.install	\N	{}	[]	2022-10-17 08:54:44.834	2022-10-17 08:54:44.834	\N	\N
66	admin::marketplace.plugins.uninstall	\N	{}	[]	2022-10-17 08:54:44.837	2022-10-17 08:54:44.837	\N	\N
67	admin::webhooks.create	\N	{}	[]	2022-10-17 08:54:44.842	2022-10-17 08:54:44.842	\N	\N
68	admin::webhooks.read	\N	{}	[]	2022-10-17 08:54:44.845	2022-10-17 08:54:44.845	\N	\N
69	admin::webhooks.update	\N	{}	[]	2022-10-17 08:54:44.849	2022-10-17 08:54:44.849	\N	\N
70	admin::webhooks.delete	\N	{}	[]	2022-10-17 08:54:44.852	2022-10-17 08:54:44.852	\N	\N
71	admin::users.create	\N	{}	[]	2022-10-17 08:54:44.856	2022-10-17 08:54:44.856	\N	\N
72	admin::users.read	\N	{}	[]	2022-10-17 08:54:44.86	2022-10-17 08:54:44.86	\N	\N
73	admin::users.update	\N	{}	[]	2022-10-17 08:54:44.863	2022-10-17 08:54:44.863	\N	\N
74	admin::users.delete	\N	{}	[]	2022-10-17 08:54:44.867	2022-10-17 08:54:44.867	\N	\N
75	admin::roles.create	\N	{}	[]	2022-10-17 08:54:44.87	2022-10-17 08:54:44.87	\N	\N
76	admin::roles.read	\N	{}	[]	2022-10-17 08:54:44.874	2022-10-17 08:54:44.874	\N	\N
77	admin::roles.update	\N	{}	[]	2022-10-17 08:54:44.878	2022-10-17 08:54:44.878	\N	\N
78	admin::roles.delete	\N	{}	[]	2022-10-17 08:54:44.882	2022-10-17 08:54:44.882	\N	\N
79	admin::api-tokens.access	\N	{}	[]	2022-10-17 08:54:44.885	2022-10-17 08:54:44.885	\N	\N
80	admin::api-tokens.create	\N	{}	[]	2022-10-17 08:54:44.889	2022-10-17 08:54:44.889	\N	\N
81	admin::api-tokens.read	\N	{}	[]	2022-10-17 08:54:44.892	2022-10-17 08:54:44.892	\N	\N
82	admin::api-tokens.update	\N	{}	[]	2022-10-17 08:54:44.896	2022-10-17 08:54:44.896	\N	\N
83	admin::api-tokens.regenerate	\N	{}	[]	2022-10-17 08:54:44.899	2022-10-17 08:54:44.899	\N	\N
84	admin::api-tokens.delete	\N	{}	[]	2022-10-17 08:54:44.903	2022-10-17 08:54:44.903	\N	\N
85	admin::project-settings.update	\N	{}	[]	2022-10-17 08:54:44.907	2022-10-17 08:54:44.907	\N	\N
86	admin::project-settings.read	\N	{}	[]	2022-10-17 08:54:44.911	2022-10-17 08:54:44.911	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.admin_permissions_role_links (id, permission_id, role_id) FROM stdin;
1	1	2
2	2	2
3	3	2
4	4	2
5	5	2
6	6	2
7	7	2
8	8	2
9	9	2
10	10	2
11	11	2
12	12	2
13	13	2
14	14	3
15	15	3
16	16	3
17	17	3
18	18	3
19	19	3
20	20	3
21	21	3
22	22	3
23	23	3
24	24	3
25	25	3
26	26	3
27	27	1
28	28	1
29	29	1
30	30	1
31	31	1
32	32	1
33	33	1
34	34	1
35	35	1
36	36	1
37	37	1
38	38	1
39	39	1
40	40	1
41	41	1
42	42	1
43	43	1
44	44	1
45	45	1
46	46	1
47	47	1
48	48	1
49	49	1
50	50	1
51	51	1
52	52	1
53	53	1
54	54	1
55	55	1
56	56	1
57	57	1
58	58	1
59	59	1
60	60	1
61	61	1
62	62	1
63	63	1
64	64	1
65	65	1
66	66	1
67	67	1
68	68	1
69	69	1
70	70	1
71	71	1
72	72	1
73	73	1
74	74	1
75	75	1
76	76	1
77	77	1
78	78	1
79	79	1
80	80	1
81	81	1
82	82	1
83	83	1
84	84	1
85	85	1
86	86	1
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-10-17 08:54:44.536	2022-10-17 08:54:44.536	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-10-17 08:54:44.542	2022-10-17 08:54:44.542	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2022-10-17 08:54:44.546	2022-10-17 08:54:44.546	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	willian	lins	\N	willianlinsa@gmail.com	$2a$10$W9QcvAIqlV51SmFZ9yR8yO5SPYy9brfzLtSP7ZZZ3srI79o2vXJYa	\N	\N	t	f	\N	2022-10-17 08:56:51.116	2022-10-17 08:56:51.116	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.admin_users_roles_links (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.authors (id, name, role, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Willian Justen	Instrutor	Desenvolvedor Front-end há mais de 10 anos, tendo trabalhado em grandes empresas como Toptal, Globo.com e Huge. Tenho um blog com mais de 200 mil views por mês, além de ter diversos cursos na Udemy, alcançando a incrível marca de mais de 200 mil alunos!	2022-10-17 08:58:51.979	2022-10-17 08:58:51.979	1	1
2	Guilherme Louro	Instrutor	Desenvolvedor Fullstack há muitos anos, com conhecimento em diversas linguagens de programação. Já liderou grandes projetos e trabalha atualmente na Personare, um dos maiores portais de autoconhecimento do Brasil. Nas horas vagas é o criador e mantenedor do Netfla, site de notícias do Flamengo com mais de meio milhão de views por mês!	2022-10-17 09:00:03.908	2022-10-17 09:00:03.908	1	1
3	Marcos Oliveira	Designer	Front-End e UI Designer há alguns anos. Atualmente trabalha na Lukin Co. Já participou de diversos tipos de projetos, na área da saúde, streaming e varejo. Sempre dividido entre design e programação. No tempo livre sempre está envolvido com a comunidade, organizando eventos e meetups.	2022-10-17 09:00:48.421	2022-10-17 09:00:48.421	1	1
\.


--
-- Data for Name: authors_components; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.authors_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	page.social-links	socialLinks	1
2	1	2	page.social-links	socialLinks	2
3	2	3	page.social-links	socialLinks	1
4	2	4	page.social-links	socialLinks	2
5	3	5	page.social-links	socialLinks	1
6	3	6	page.social-links	socialLinks	2
7	3	7	page.social-links	socialLinks	3
\.


--
-- Data for Name: components_page_buttons; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_buttons (id, label, url) FROM stdin;
1	Comprar	http://localhost:3000/
2	Comprar o curso	http://localhost:3000/
\.


--
-- Data for Name: components_page_concepts; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_concepts (id, title) FROM stdin;
1	Boas práticas com ReactJS
2	Boas práticas com Styled
3	Boas práticas com Testes
4	Server Side Rendering (SSR)
5	Static Site Generation (SSG)
6	Rotas simples e dinâmicas
7	Funcionamento do GraphQL
8	Queries e Mutations
9	Filtros e paginações
11	Utilizar componentes third-party
12	Utilizar Storybook
13	Criar APIs rapidamente
14	Envio de emails automatizado
15	Autenticação de usuários
16	Fluxo de pagamentos
17	Criação de pipelines em CI
18	Deploy automatizado
10	Criar componentes do zero
\.


--
-- Data for Name: components_page_headers; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_headers (id, title, description) FROM stdin;
1	React Avançado	Crie aplicações reais com NextJS, Strapi, GraphQL e mais!
\.


--
-- Data for Name: components_page_headers_components; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_headers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
4	1	1	page.button	button	1
\.


--
-- Data for Name: components_page_modules; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_modules (id, title, subtitle, description) FROM stdin;
1	Módulo 1	Introdução e Arquitetura do Projeto	<p style="margin-left:0px;">Iremos conhecer a <i>Stack</i> utilizada no curso, tendo explicação de cada uma das escolhas, assim como mostrando os prós e contras de cada uma delas</p><p style="margin-left:0px;">Iremos construir nosso boilerplate do zero, aprendendo a configurar as ferramentas de qualidade de código, como <i>Eslint</i>, <i>Prettier</i>, <i>Git hooks</i> e <i>TypeScript</i>. Assim como também configurar o <i>Styled Components</i> para funcionar com <i>SSR</i> e <i>PWA</i>.</p>
2	Módulo 2	Strapi e GraphQL	<p style="margin-left:0px;">Vamos iniciar nosso backend/CMS com o Strapi, aprender mais sobre sua API, como o content type builder, single types, custom components. Além de aprender a criar controllers customizados, serviços, instalar plugins de documentação e também do GraphQL, onde iremos aprender como funciona, como criar queries, filtros, mutations e mais.</p><p style="margin-left:0px;">Para finalizar, aprenderemos como customizar o CMS para que ele tenha a cara da loja e se torne uma solução mais interessante para o cliente.</p>
4	Módulo 4	Sistema de Pagamento e Área do Cliente	<p style="margin-left:0px;">Conheceremos algumas soluções de pagamento do mercado, vendo suas vantagens, desvantagens e APIs.</p><p style="margin-left:0px;">Criaremos toda a parte final do fluxo de pagamentos, conectando a nossa loja a um gateway de pagamento, salvando as compras em nosso banco de dados. Além de desenvolvermos a área do cliente, para que o cliente possa editar seus dados, ver compras realizadas e sua wishlist.</p>
3	Módulo 3	Criando o Frontend	<p style="margin-left:0px;">Essa que será uma das maiores etapas, é onde vamos aprender a pegar um layout diretamente do Figma e vamos transformá-los em diferentes componentes e estilos.</p><p style="margin-left:0px;">Faremos todos os componentes com styled components, com testes, cenários no Storybook e pensando na responsividade. Com os componentes prontos, construiremos as páginas, ajustando o que for necessário para que tudo se encaixe perfeitamente.</p>
5	Módulo 5	Testes de Integração	<p style="margin-left:0px;">Neste módulo iremos aprender a importância dos testes de integração e como garantir ainda mais qualidade no nosso projeto.</p><p style="margin-left:0px;">Vamos criar testes para todos os fluxos que um usuário normal pode executar em nosso site, desde a navegação normal até uma compra efetuada.</p>
6	Módulo 6	CI e Deploy	<p style="margin-left:0px;">Normalmente a maioria dos cursos termina na criação do projeto, mas nunca ensina como fazer para realmente deixar em produção.</p><p style="margin-left:0px;">Aqui nós iremos aprender quais as necessidades do projeto e quais as soluçoes que podemos utilizar. Além disso, iremos criar uma pipeline em um CI para que tenhamos todo o processo de deploy o mais automatizado possível</p>
\.


--
-- Data for Name: components_page_pricing_boxes; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_pricing_boxes (id, total_price, number_installments, pricing_installments, benefits) FROM stdin;
1	415	6	269	<ul><li>Acesso aos <strong>6 módulos</strong></li><li>Código de <strong>todo o projeto</strong> separado em commits</li><li>Contato <strong>direto</strong> com os instrutores via Slack</li><li><strong>Lives exclusivas</strong> durante o curso</li></ul>
\.


--
-- Data for Name: components_page_pricing_boxes_components; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_pricing_boxes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
4	1	2	page.button	button	1
\.


--
-- Data for Name: components_page_questions; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_questions (id, question, answer) FROM stdin;
5	Esse curso tem certificado?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Sim, o curso terá certificado e você poderá baixá-lo diretamente da Udemy ao término do curso.</span></p>
6	Posso usar o projeto para o meu Portfólio?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Definitivamente! A ideia é que vocês tenham um projeto de verdade que possam utilizar como bem entenderem.</span></p>
7	Eu tenho outra dúvida!	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Sem problemas! Você pode acessar qualquer uma das </span><a href="https://willianjusten.com.br/about">minhas redes sociais</a><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);"> ou entrar no </span><a href="http://bit.ly/slack-will">slack do nosso curso.</a></p>
1	O que preciso saber para o curso?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Um conhecimento básico de JavaScript/React é necessário para maior entendimento do curso, mas todo o conteúdo será explicado em detalhes e todas as perguntas/dúvidas serão respondidas.</span></p>
2	Quanto tempo tenho para fazer o curso?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">O curso é vitalício, faça quantas vezes quiser e quando quiser, nada de bloqueios ou pressa.</span></p>
3	Quais outros cursos você tem?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Tenho alguns cursos gratuitos e pagos, você pode acessar todos os cursos </span><a href="https://willianjusten.com.br/cursos">nesse link.</a></p>
4	Onde os vídeos serão publicados?	<p><span style="background-color:rgb(255,255,255);color:rgb(3,5,23);">Os vídeos serão publicados na Udemy, com o mesmo funcionamento que já existe, vídeos offline, autoplay, acelerar em 2x, aplicativo nativo e mais.</span></p>
\.


--
-- Data for Name: components_page_reviews; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_reviews (id, name, text) FROM stdin;
17	Rafael de Jesus	Didática incrível. O conhecimento básico no início do curso me serviu como revisão. Aquilo que já sabia fui passando rapidamente. Iniciei agora a parte prática de testes e gostei muito do exemplo real, assim como qualidade do audio e também conteúdo. Gostei muito que o autor explica algumas "teorias" em torno do que estamos fazendo e isso a longo prazo fixa melhor o conteúdo e faz total diferença.
10	Lianker Lopes	Willian é um otimo professor e seus cursos são extremamente uteis, pois focam em praticas reais de mercado e ele faz isso sem perder a excelência técnica mantendo o uso de boas praticas de codigo.
1	Henrique Albert Schmaiske	O Curso foi incrível! Gostei muito das explicações, bem claras e objetivas! Deixo a sugestão para um próximo Curso: NextJS mostrando fazer um Ecommerce. Compraria sem nem olhar o preço.
2	Alexandre Teixeira	Esse já é o terceiro curso do Will que faço, e a didática do cara é incrível! Além disso, o cara segue trazendo o que tem de mais moderno no mercado de forma bem explicada e com aplicações práticas.
3	Daniel P. de Oliveira	É incrível a forma como foi passado o conteúdo do curso, dá para ver que o Will tem um domínio impressionante sobre as ferramentas e tecnologias passadas, e mesmo eu tendo pouco conhecimento em React consegui acompanhar o curso sem muitas dificuldades. Espero que tenha mais cursos nessa linha, com certeza comprarei! Obrigado Will!
5	Douglas Lopes	Não teve nenhum curso que eu tenha feito, cuja autoria é do Willian Justem que eu não tenha gostado. Explica de uma maneira simples, didática, fácil de entender e assimilar. Fora isso, existem uma série de outros conhecimentos que acabam por vir embarcados em todos os cursos. Coisas como melhores práticas, facilidades da linguagem e itens novos da linguagem, organização de código, organização de arquivos, otimização para performance, otimização para SEO, etc. Sério, que curso completo e fácil de assimilar. Will, parabéns novamente e obrigado por disponibilizar um conteúdo tão rico e capaz de mudar a vida profissional de quem o faz. Não vejo a hora de fazer o próximo curso.
7	Luiz Cláudio Silva	Curso excelente! O Willian aborda os assuntos com uma explicação muito clara, simples e, a meu ver, com uma profundidade "na medida" (nem superficial, nem super aprofundado). Também deixa um "caminho" para o caso de o aluno querer se aprofundar em algum detalhe específico e tem se demonstrado sempre solícito tanto nas perguntas aqui na Udemy quanto lá no Slack. Por fim, recomendo também a leitura dos artigos do próprio blog do Willian. Lá ele fala sobre vários assuntos, inclusive tocando em em um ponto que não é citado pela maioria dos profissionais: problemas com saúde (Ex.: depressão). Ganhou um "fã", com ctz :)
9	Alane Ribeiro	Willian é maravilhoso! Didática excelente, interage muito com os alunos. Gosto muito da didática que ele usa e da forma que ele explica. Parabéns, Professor!
11	Jorge Bierhals Ramos	Os cursos do professor Willian Justen são excelentes, sua forma de ensinar é incrível. Caso precise de uma ajuda ele está sempre pronto para ajudar, seja aqui pela plataforma da Udemy ou em suas redes sociais. Recomendo à todos!!!
12	Michael Costa	Curso de altíssima qualidade. O professor Willian Justen tem uma didática muito boa e nos mostrou várias tecnologias além dessas mencionados no nome do curso em um exemplo real do dia a dia. Estou curtindo tanto o curso, que já até comprei outros dois dele: Aprendendo SVG Do Início ao Avançado e Aprenda a criar sites animados com Greensock, agora só falta começar. 
13	Lianker Lopes	Willian é um otimo professor e seus cursos são extremamente uteis, pois focam em praticas reais de mercado e ele faz isso sem perder a excelência técnica mantendo o uso de boas praticas de codigo.
14	Anuar Daher Neto	Show! Fiquei impressionado com o domínio que o Willian possui sobre os temas abordados, temas parelelos que surgem ao longo do curso e como ele externa esse domínio passando, com facilidade, tudo que precisando pra ter uma ótima experiência e entender o que é necessário.
15	Michael Costa	Curso de altíssima qualidade. O professor Willian Justen tem uma didática muito boa e nos mostrou várias tecnologias além dessas mencionados no nome do curso em um exemplo real do dia a dia. Estou curtindo tanto o curso, que já até comprei outros dois dele: Aprendendo SVG Do Início ao Avançado e Aprenda a criar sites animados com Greensock, agora só falta começar. 
16	Anuar Daher Neto	Show! Fiquei impressionado com o domínio que o Willian possui sobre os temas abordados, temas parelelos que surgem ao longo do curso e como ele externa esse domínio passando, com facilidade, tudo que precisando pra ter uma ótima experiência e entender o que é necessário.
4	Mileine Souto	Sensacional! A didática do instrutor é excelente para estruturar o curso e dar o ritmo das aulas. Foi uma experiência muito enriquecedora (e divertida) construir um blog seguindo o passo-a-passo dos vídeos. Não sabia nada sobre Gatsby, GraphQL ou Netlify CMS mas consegui acompanhar todo o processo sem grandes dificuldades. Além disso, foi ótimo aprender um pouquinho mais sobre algumas práticas de desenvolvimento, como temas em React, estilização CSS in JS com styled-components e utilização do Algolia como solução de busca. Recomendo! =)
6	Ariel Dalton	Sensacional esse curso, os pontos que destaco são a clareza nas explicações, stack tecnológica mais atual possível e sem enrolação. Agradeço ao Willian pelo esforço em produzir essa qualidade de curso que é até difícil encontrar algo desse na nível em Português.
8	Karoline Medeiros	A didática é ótima, professor sabe o que fala e como passar a informação da melhor maneira possível. Acabei consumindo +60% do curso no dia em que comprei, depois que comecei foi difícil parar rsrs nota mil!
\.


--
-- Data for Name: components_page_seaction_concepts; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_seaction_concepts (id, title) FROM stdin;
1	Conceitos que você irá aprender
\.


--
-- Data for Name: components_page_seaction_concepts_components; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_seaction_concepts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
55	1	1	page.concepts	concepts	1
56	1	2	page.concepts	concepts	2
57	1	3	page.concepts	concepts	3
58	1	4	page.concepts	concepts	4
59	1	5	page.concepts	concepts	5
60	1	6	page.concepts	concepts	6
61	1	7	page.concepts	concepts	7
62	1	8	page.concepts	concepts	8
63	1	9	page.concepts	concepts	9
64	1	10	page.concepts	concepts	10
65	1	11	page.concepts	concepts	11
66	1	12	page.concepts	concepts	12
67	1	13	page.concepts	concepts	13
68	1	14	page.concepts	concepts	14
69	1	15	page.concepts	concepts	15
70	1	16	page.concepts	concepts	16
71	1	17	page.concepts	concepts	17
72	1	18	page.concepts	concepts	18
\.


--
-- Data for Name: components_page_section_about_projects; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_about_projects (id, title, description) FROM stdin;
1	O que iremos construir	<p style="margin-left:0px;">Iremos criar um e-commerce de jogos, incluindo toda a parte de pagamentos e área do cliente. Os clientes poderão fazer buscas, filtrar, adicionar ao carrinho e comprar seus jogos favoritos.</p><p style="margin-left:0px;">Teremos também um <strong>CMS completamente customizado</strong> para que os administradores possam adicionar produtos, categorias, plataformas, criar promoções, editar partes do site, além de emails automatizados para às vendas de cada produto.</p><p style="margin-left:0px;">Para criar tudo isso, iremos utilizar ferramentas muito famosas no mercado de trabalho, como ReactJS, Next, Apollo e outras coisas mais. Sempre prezando pela qualidade do código, ou seja, teremos <strong>testes em tudo!</strong></p>
\.


--
-- Data for Name: components_page_section_aboutuses; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_aboutuses (id, title) FROM stdin;
1	Quem somos nós?
\.


--
-- Data for Name: components_page_section_aboutuses_authors_links; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_aboutuses_authors_links (id, section_about_us_id, author_id) FROM stdin;
10	1	1
11	1	2
12	1	3
\.


--
-- Data for Name: components_page_section_agenda; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_agenda (id, title, description) FROM stdin;
1	Curso 100% completo!	<p style="margin-left:0px;">Todos os módulos do curso <strong>já foram lançados</strong>! E você pode assistir todos no seu tempo, pois o acesso é vitalício.</p><p style="margin-left:0px;">Os módulos podem ser feitos em ordem ou você pode assistir conforme sua necessidade.</p>
\.


--
-- Data for Name: components_page_section_faqs; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_faqs (id, title) FROM stdin;
1	FAQ
\.


--
-- Data for Name: components_page_section_faqs_components; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_faqs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
22	1	1	page.questions	questions	1
23	1	2	page.questions	questions	2
24	1	3	page.questions	questions	3
25	1	4	page.questions	questions	4
26	1	5	page.questions	questions	5
27	1	6	page.questions	questions	6
28	1	7	page.questions	questions	7
\.


--
-- Data for Name: components_page_section_reviews; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_reviews (id, title) FROM stdin;
1	Junte-se a mais de 200 mil alunos
\.


--
-- Data for Name: components_page_section_reviews_components; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_reviews_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
52	1	1	page.reviews	reviews	1
53	1	2	page.reviews	reviews	2
54	1	3	page.reviews	reviews	3
55	1	4	page.reviews	reviews	4
56	1	5	page.reviews	reviews	5
57	1	6	page.reviews	reviews	6
58	1	7	page.reviews	reviews	7
59	1	8	page.reviews	reviews	8
60	1	9	page.reviews	reviews	9
61	1	10	page.reviews	reviews	10
62	1	11	page.reviews	reviews	11
63	1	12	page.reviews	reviews	12
64	1	13	page.reviews	reviews	13
65	1	14	page.reviews	reviews	14
66	1	15	page.reviews	reviews	15
67	1	16	page.reviews	reviews	16
68	1	17	page.reviews	reviews	17
\.


--
-- Data for Name: components_page_section_teches; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_teches (id, title) FROM stdin;
1	Tecnologias utilizadas
\.


--
-- Data for Name: components_page_section_teches_components; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_section_teches_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
31	1	1	page.tech-icons	techIcons	1
32	1	2	page.tech-icons	techIcons	2
33	1	3	page.tech-icons	techIcons	3
34	1	4	page.tech-icons	techIcons	4
35	1	5	page.tech-icons	techIcons	5
36	1	6	page.tech-icons	techIcons	6
37	1	7	page.tech-icons	techIcons	7
38	1	8	page.tech-icons	techIcons	8
39	1	9	page.tech-icons	techIcons	9
40	1	10	page.tech-icons	techIcons	10
\.


--
-- Data for Name: components_page_sectionmodules; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_sectionmodules (id, title) FROM stdin;
1	Módulos deste curso
\.


--
-- Data for Name: components_page_sectionmodules_components; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_sectionmodules_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
15	1	1	page.modules	modules	1
16	1	2	page.modules	modules	2
17	1	3	page.modules	modules	3
18	1	4	page.modules	modules	4
19	1	5	page.modules	modules	5
20	1	6	page.modules	modules	6
\.


--
-- Data for Name: components_page_social_links; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_social_links (id, title, url) FROM stdin;
1	Twitter	http://localhost:3000/
2	Github	http://localhost:3000/
3	Twitter	http://localhost:3000/
4	Github	http://localhost:3000/
5	Twitter	http://localhost:3000/
6	Dribbble	http://localhost:3000/
7	Github	http://localhost:3000/
\.


--
-- Data for Name: components_page_tech_icons; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.components_page_tech_icons (id, title) FROM stdin;
1	TypeScript
2	React
3	NextJS
4	Strapi
5	Apollo
6	GraphQL
7	Jest
8	Testing Library
9	Storybook
10	Cypress
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	willian_3f15d1601b.png	willian_3f15d1601b.png	willian_3f15d1601b.png	250	250	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_willian_3f15d1601b_2ce69c8756.png", "hash": "thumbnail_willian_3f15d1601b_2ce69c8756", "mime": "image/png", "name": "thumbnail_willian_3f15d1601b.png", "path": null, "size": 55.54, "width": 156, "height": 156}}	willian_3f15d1601b_2ce69c8756	.png	image/png	38.54	/uploads/willian_3f15d1601b_2ce69c8756.png	\N	local	\N	/	2022-10-17 08:58:48.696	2022-10-17 08:58:48.696	1	1
2	guilherme_5278e405b4.png	guilherme_5278e405b4.png	guilherme_5278e405b4.png	396	396	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_guilherme_5278e405b4_c423f0b08c.png", "hash": "thumbnail_guilherme_5278e405b4_c423f0b08c", "mime": "image/png", "name": "thumbnail_guilherme_5278e405b4.png", "path": null, "size": 62.17, "width": 156, "height": 156}}	guilherme_5278e405b4_c423f0b08c	.png	image/png	92.72	/uploads/guilherme_5278e405b4_c423f0b08c.png	\N	local	\N	/	2022-10-17 09:00:01.646	2022-10-17 09:00:01.646	1	1
3	marcos_4c630b4166.png	marcos_4c630b4166.png	marcos_4c630b4166.png	252	251	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_marcos_4c630b4166_ab7bed02df.png", "hash": "thumbnail_marcos_4c630b4166_ab7bed02df", "mime": "image/png", "name": "thumbnail_marcos_4c630b4166.png", "path": null, "size": 62.27, "width": 157, "height": 156}}	marcos_4c630b4166_ab7bed02df	.png	image/png	143.00	/uploads/marcos_4c630b4166_ab7bed02df.png	\N	local	\N	/	2022-10-17 09:00:45.647	2022-10-17 09:00:45.647	1	1
4	logo_74e2fdc755.svg	logo_74e2fdc755.svg	logo_74e2fdc755.svg	256	56	\N	logo_74e2fdc755_0e3ac96c98	.svg	image/svg+xml	7.11	/uploads/logo_74e2fdc755_0e3ac96c98.svg	\N	local	\N	/	2022-10-17 09:01:23.61	2022-10-17 09:01:23.61	1	1
5	hero_illustration_86997ad966.svg	hero_illustration_86997ad966.svg	hero_illustration_86997ad966.svg	427	373	\N	hero_illustration_86997ad966_7d7e47ab0c	.svg	image/svg+xml	12.61	/uploads/hero_illustration_86997ad966_7d7e47ab0c.svg	\N	local	\N	/	2022-10-17 09:02:39.265	2022-10-17 09:02:39.265	1	1
6	small_project_440f25b520.png	small_project_440f25b520.png	small_project_440f25b520.png	500	381	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_small_project_440f25b520_37289d5251.png", "hash": "thumbnail_small_project_440f25b520_37289d5251", "mime": "image/png", "name": "thumbnail_small_project_440f25b520.png", "path": null, "size": 43.03, "width": 205, "height": 156}}	small_project_440f25b520_37289d5251	.png	image/png	192.52	/uploads/small_project_440f25b520_37289d5251.png	\N	local	\N	/	2022-10-17 09:03:15.506	2022-10-17 09:03:15.506	1	1
7	typescript_b6c016631d.svg	typescript_b6c016631d.svg	typescript_b6c016631d.svg	128	129	\N	typescript_b6c016631d_45b410c53a	.svg	image/svg+xml	1.84	/uploads/typescript_b6c016631d_45b410c53a.svg	\N	local	\N	/	2022-10-17 09:03:44.213	2022-10-17 09:03:44.213	1	1
8	react_791425b954.svg	react_791425b954.svg	react_791425b954.svg	131	129	\N	react_791425b954_c746a4283b	.svg	image/svg+xml	2.23	/uploads/react_791425b954_c746a4283b.svg	\N	local	\N	/	2022-10-17 09:04:02.601	2022-10-17 09:04:02.601	1	1
9	nextjs_722bbe18a3.svg	nextjs_722bbe18a3.svg	nextjs_722bbe18a3.svg	131	128	\N	nextjs_722bbe18a3_09c86bb7a4	.svg	image/svg+xml	1.29	/uploads/nextjs_722bbe18a3_09c86bb7a4.svg	\N	local	\N	/	2022-10-17 09:04:20.946	2022-10-17 09:04:20.946	1	1
10	strapi_442d7d4708.svg	strapi_442d7d4708.svg	strapi_442d7d4708.svg	128	129	\N	strapi_442d7d4708_90843d9b35	.svg	image/svg+xml	1.17	/uploads/strapi_442d7d4708_90843d9b35.svg	\N	local	\N	/	2022-10-17 09:04:36.454	2022-10-17 09:04:36.454	1	1
11	apollo_e2a8694530.svg	apollo_e2a8694530.svg	apollo_e2a8694530.svg	130	128	\N	apollo_e2a8694530_28167a298a	.svg	image/svg+xml	1.54	/uploads/apollo_e2a8694530_28167a298a.svg	\N	local	\N	/	2022-10-17 09:04:55.955	2022-10-17 09:04:55.955	1	1
12	graphql_20c1bf23e2.svg	graphql_20c1bf23e2.svg	graphql_20c1bf23e2.svg	129	128	\N	graphql_20c1bf23e2_d9350e6d2a	.svg	image/svg+xml	2.84	/uploads/graphql_20c1bf23e2_d9350e6d2a.svg	\N	local	\N	/	2022-10-17 09:05:29.419	2022-10-17 09:05:29.419	1	1
13	jest_da49922029.svg	jest_da49922029.svg	jest_da49922029.svg	123	123	\N	jest_da49922029_9a1d9c8072	.svg	image/svg+xml	2.78	/uploads/jest_da49922029_9a1d9c8072.svg	\N	local	\N	/	2022-10-17 09:05:47.763	2022-10-17 09:05:47.763	1	1
14	rtl_e863b3c932.svg	rtl_e863b3c932.svg	rtl_e863b3c932.svg	128	129	\N	rtl_e863b3c932_d623183bf2	.svg	image/svg+xml	9.62	/uploads/rtl_e863b3c932_d623183bf2.svg	\N	local	\N	/	2022-10-17 09:06:06.748	2022-10-17 09:06:06.748	1	1
15	storybook_d7b6134b45.svg	storybook_d7b6134b45.svg	storybook_d7b6134b45.svg	128	129	\N	storybook_d7b6134b45_f6a3dae2f2	.svg	image/svg+xml	2.56	/uploads/storybook_d7b6134b45_f6a3dae2f2.svg	\N	local	\N	/	2022-10-17 09:06:35.667	2022-10-17 09:06:35.667	1	1
16	cypress_3aa76eb266.svg	cypress_3aa76eb266.svg	cypress_3aa76eb266.svg	130	129	\N	cypress_3aa76eb266_91575ab863	.svg	image/svg+xml	1.73	/uploads/cypress_3aa76eb266_91575ab863.svg	\N	local	\N	/	2022-10-17 09:07:04.248	2022-10-17 09:07:04.248	1	1
17	henrique_albert_934b240c41.jpeg	henrique_albert_934b240c41.jpeg	henrique_albert_934b240c41.jpeg	50	50	\N	henrique_albert_934b240c41_cb3afaea7b	.jpeg	image/jpeg	1.10	/uploads/henrique_albert_934b240c41_cb3afaea7b.jpeg	\N	local	\N	/	2022-10-17 09:12:24.186	2022-10-17 09:12:24.186	1	1
18	alexandre_teixeira_3477db86cc.jpeg	alexandre_teixeira_3477db86cc.jpeg	alexandre_teixeira_3477db86cc.jpeg	50	50	\N	alexandre_teixeira_3477db86cc_a9be5c77fd	.jpeg	image/jpeg	1.14	/uploads/alexandre_teixeira_3477db86cc_a9be5c77fd.jpeg	\N	local	\N	/	2022-10-17 09:12:53.071	2022-10-17 09:12:53.071	1	1
19	daniel_oliveira_22ceef05a5.jpeg	daniel_oliveira_22ceef05a5.jpeg	daniel_oliveira_22ceef05a5.jpeg	50	50	\N	daniel_oliveira_22ceef05a5_e3121916d1	.jpeg	image/jpeg	1.10	/uploads/daniel_oliveira_22ceef05a5_e3121916d1.jpeg	\N	local	\N	/	2022-10-17 09:13:52.752	2022-10-17 09:13:52.752	1	1
20	mileine_souto_992539f184.jpeg	mileine_souto_992539f184.jpeg	mileine_souto_992539f184.jpeg	50	50	\N	mileine_souto_992539f184_3dbcf30daf	.jpeg	image/jpeg	1.21	/uploads/mileine_souto_992539f184_3dbcf30daf.jpeg	\N	local	\N	/	2022-10-17 09:14:47.154	2022-10-17 09:14:47.154	1	1
21	douglas_lopes_5c3cea8c4a.jpeg	douglas_lopes_5c3cea8c4a.jpeg	douglas_lopes_5c3cea8c4a.jpeg	50	50	\N	douglas_lopes_5c3cea8c4a_b1e9be84b9	.jpeg	image/jpeg	1.14	/uploads/douglas_lopes_5c3cea8c4a_b1e9be84b9.jpeg	\N	local	\N	/	2022-10-17 09:15:18.152	2022-10-17 09:15:18.152	1	1
22	ariel_dalton_d3d50ca590.jpeg	ariel_dalton_d3d50ca590.jpeg	ariel_dalton_d3d50ca590.jpeg	50	50	\N	ariel_dalton_d3d50ca590_30565c5582	.jpeg	image/jpeg	1.04	/uploads/ariel_dalton_d3d50ca590_30565c5582.jpeg	\N	local	\N	/	2022-10-17 09:15:39.136	2022-10-17 09:15:39.136	1	1
23	luiz_claudio_silva_6e178a2283.jpeg	luiz_claudio_silva_6e178a2283.jpeg	luiz_claudio_silva_6e178a2283.jpeg	50	50	\N	luiz_claudio_silva_6e178a2283_a4817ee0ff	.jpeg	image/jpeg	1.44	/uploads/luiz_claudio_silva_6e178a2283_a4817ee0ff.jpeg	\N	local	\N	/	2022-10-17 09:16:49.467	2022-10-17 09:16:49.467	1	1
24	karoline_medeiros_cecb15095a.jpeg	karoline_medeiros_cecb15095a.jpeg	karoline_medeiros_cecb15095a.jpeg	50	50	\N	karoline_medeiros_cecb15095a_8aabd2ada7	.jpeg	image/jpeg	1.52	/uploads/karoline_medeiros_cecb15095a_8aabd2ada7.jpeg	\N	local	\N	/	2022-10-17 09:17:15.07	2022-10-17 09:17:15.07	1	1
25	alane_ribeiro_da08475e76.jpeg	alane_ribeiro_da08475e76.jpeg	alane_ribeiro_da08475e76.jpeg	50	50	\N	alane_ribeiro_da08475e76_5dd01e37b7	.jpeg	image/jpeg	1.40	/uploads/alane_ribeiro_da08475e76_5dd01e37b7.jpeg	\N	local	\N	/	2022-10-17 09:17:39.819	2022-10-17 09:17:39.819	1	1
26	lianker_lopes_c90c9e2872.jpeg	lianker_lopes_c90c9e2872.jpeg	lianker_lopes_c90c9e2872.jpeg	50	50	\N	lianker_lopes_c90c9e2872_8b345a7fb5	.jpeg	image/jpeg	1.41	/uploads/lianker_lopes_c90c9e2872_8b345a7fb5.jpeg	\N	local	\N	/	2022-10-17 09:18:05.595	2022-10-17 09:18:05.595	1	1
27	jorge_ramos_995906fcff.jpeg	jorge_ramos_995906fcff.jpeg	jorge_ramos_995906fcff.jpeg	50	50	\N	jorge_ramos_995906fcff_3dccc6ad4c	.jpeg	image/jpeg	1.00	/uploads/jorge_ramos_995906fcff_3dccc6ad4c.jpeg	\N	local	\N	/	2022-10-17 09:18:40.754	2022-10-17 09:18:40.754	1	1
28	reviewer_17f000c1cd.jpeg	reviewer_17f000c1cd.jpeg	reviewer_17f000c1cd.jpeg	300	300	{"thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_reviewer_17f000c1cd_c0432049fe.jpeg", "hash": "thumbnail_reviewer_17f000c1cd_c0432049fe", "mime": "image/jpeg", "name": "thumbnail_reviewer_17f000c1cd.jpeg", "path": null, "size": 1.26, "width": 156, "height": 156}}	reviewer_17f000c1cd_c0432049fe	.jpeg	image/jpeg	2.64	/uploads/reviewer_17f000c1cd_c0432049fe.jpeg	\N	local	\N	/	2022-10-17 09:19:40.839	2022-10-17 09:19:40.839	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.files_folder_links (id, file_id, folder_id) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	api::author.author	photo	1
2	2	2	api::author.author	photo	1
3	3	3	api::author.author	photo	1
94	5	1	page.header	image	1
95	6	1	page.section-about-project	image	1
96	7	1	page.tech-icons	icon	1
97	8	2	page.tech-icons	icon	1
98	9	3	page.tech-icons	icon	1
99	10	4	page.tech-icons	icon	1
100	11	5	page.tech-icons	icon	1
101	12	6	page.tech-icons	icon	1
102	13	7	page.tech-icons	icon	1
103	14	8	page.tech-icons	icon	1
104	15	9	page.tech-icons	icon	1
105	16	10	page.tech-icons	icon	1
106	17	1	page.reviews	photo	1
107	20	4	page.reviews	photo	1
108	19	3	page.reviews	photo	1
109	21	5	page.reviews	photo	1
110	22	6	page.reviews	photo	1
111	23	7	page.reviews	photo	1
112	24	8	page.reviews	photo	1
113	25	9	page.reviews	photo	1
114	27	11	page.reviews	photo	1
115	18	2	page.reviews	photo	1
116	26	13	page.reviews	photo	1
117	28	14	page.reviews	photo	1
118	28	15	page.reviews	photo	1
119	28	17	page.reviews	photo	1
120	28	16	page.reviews	photo	1
121	28	12	page.reviews	photo	1
122	26	10	page.reviews	photo	1
123	4	1	api::landing-page.landing-page	logo	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2022-10-17 08:54:44.442	2022-10-17 08:54:44.442	\N	\N
\.


--
-- Data for Name: landing_pages; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.landing_pages (id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	2022-10-17 09:22:40.207	2022-10-18 13:23:19.897	1	1
\.


--
-- Data for Name: landing_pages_components; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.landing_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
31	1	1	page.header	header	1
32	1	1	page.section-about-project	sectionAboutProject	1
33	1	1	page.section-tech	sectionTech	1
34	1	1	page.seaction-concepts	sectionConcepts	1
35	1	1	page.sectionmodules	sectionModules	1
36	1	1	page.section-agenda	sectionAgenda	1
37	1	1	page.pricing-box	pricingBox	1
38	1	1	page.section-about-us	sectionAboutUs	1
39	1	1	page.section-reviews	sectionReviews	1
40	1	1	page.section-faq	sectionFaq	1
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
3	plugin_content_manager_configuration_components::page.concepts	{"uid":"page.concepts","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
8	plugin_content_manager_configuration_components::page.section-about-project	{"uid":"page.section-about-project","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","image"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}],[{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
4	plugin_content_manager_configuration_components::page.header	{"uid":"page.header","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","description","button"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"button","size":12}],[{"name":"image","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::page.modules	{"uid":"page.modules","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subtitle","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","subtitle"],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"description","size":12}]],"editRelations":[]},"isComponent":true}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"integer","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"integer","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::author.author":{"kind":"collectionType","collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"author","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"photo":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"name":{"type":"string","required":true},"role":{"type":"string","required":true},"socialLinks":{"displayName":"socialLinks","type":"component","repeatable":true,"component":"page.social-links","required":true},"description":{"type":"text","required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"authors","info":{"singularName":"author","pluralName":"authors","displayName":"author","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"photo":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"name":{"type":"string","required":true},"role":{"type":"string","required":true},"socialLinks":{"displayName":"socialLinks","type":"component","repeatable":true,"component":"page.social-links","required":true},"description":{"type":"text","required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"author","connection":"default","uid":"api::author.author","apiName":"author","globalId":"Author","actions":{},"lifecycles":{}},"api::landing-page.landing-page":{"kind":"singleType","collectionName":"landing_pages","info":{"singularName":"landing-page","pluralName":"landing-pages","displayName":"landingPage","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"logo":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"header":{"displayName":"header","type":"component","repeatable":false,"component":"page.header"},"sectionAboutProject":{"displayName":"sectionAboutProject","type":"component","repeatable":false,"component":"page.section-about-project"},"sectionTech":{"displayName":"sectionTech","type":"component","repeatable":false,"component":"page.section-tech"},"sectionConcepts":{"displayName":"seactionConcepts","type":"component","repeatable":false,"component":"page.seaction-concepts"},"sectionModules":{"displayName":"sectionmodules","type":"component","repeatable":false,"component":"page.sectionmodules","required":true},"sectionAgenda":{"displayName":"sectionAgenda","type":"component","repeatable":false,"component":"page.section-agenda"},"pricingBox":{"displayName":"pricingBox","type":"component","repeatable":false,"component":"page.pricing-box"},"sectionAboutUs":{"displayName":"sectionAboutUs","type":"component","repeatable":false,"component":"page.section-about-us"},"sectionReviews":{"displayName":"sectionReviews","type":"component","repeatable":false,"component":"page.section-reviews"},"sectionFaq":{"displayName":"sectionFaq","type":"component","repeatable":false,"component":"page.section-faq"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"landing_pages","info":{"singularName":"landing-page","pluralName":"landing-pages","displayName":"landingPage","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"logo":{"type":"media","multiple":false,"required":true,"allowedTypes":["images"]},"header":{"displayName":"header","type":"component","repeatable":false,"component":"page.header"},"sectionAboutProject":{"displayName":"sectionAboutProject","type":"component","repeatable":false,"component":"page.section-about-project"},"sectionTech":{"displayName":"sectionTech","type":"component","repeatable":false,"component":"page.section-tech"},"sectionConcepts":{"displayName":"seactionConcepts","type":"component","repeatable":false,"component":"page.seaction-concepts"},"sectionModules":{"displayName":"sectionmodules","type":"component","repeatable":false,"component":"page.sectionmodules","required":true},"sectionAgenda":{"displayName":"sectionAgenda","type":"component","repeatable":false,"component":"page.section-agenda"},"pricingBox":{"displayName":"pricingBox","type":"component","repeatable":false,"component":"page.pricing-box"},"sectionAboutUs":{"displayName":"sectionAboutUs","type":"component","repeatable":false,"component":"page.section-about-us"},"sectionReviews":{"displayName":"sectionReviews","type":"component","repeatable":false,"component":"page.section-reviews"},"sectionFaq":{"displayName":"sectionFaq","type":"component","repeatable":false,"component":"page.section-faq"}},"kind":"singleType"},"modelType":"contentType","modelName":"landing-page","connection":"default","uid":"api::landing-page.landing-page","apiName":"landing-page","globalId":"LandingPage","actions":{},"lifecycles":{}}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
9	plugin_content_manager_configuration_components::page.section-about-us	{"uid":"page.section-about-us","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"authors":{"edit":{"label":"authors","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"authors","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","authors"],"edit":[[{"name":"title","size":6},{"name":"authors","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
38	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
29	plugin_content_manager_configuration_content_types::api::landing-page.landing-page	{"uid":"api::landing-page.landing-page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"header":{"edit":{"label":"header","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"header","searchable":false,"sortable":false}},"sectionAboutProject":{"edit":{"label":"sectionAboutProject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionAboutProject","searchable":false,"sortable":false}},"sectionTech":{"edit":{"label":"sectionTech","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionTech","searchable":false,"sortable":false}},"sectionConcepts":{"edit":{"label":"sectionConcepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionConcepts","searchable":false,"sortable":false}},"sectionModules":{"edit":{"label":"sectionModules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionModules","searchable":false,"sortable":false}},"sectionAgenda":{"edit":{"label":"sectionAgenda","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionAgenda","searchable":false,"sortable":false}},"pricingBox":{"edit":{"label":"pricingBox","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pricingBox","searchable":false,"sortable":false}},"sectionAboutUs":{"edit":{"label":"sectionAboutUs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionAboutUs","searchable":false,"sortable":false}},"sectionReviews":{"edit":{"label":"sectionReviews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionReviews","searchable":false,"sortable":false}},"sectionFaq":{"edit":{"label":"sectionFaq","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sectionFaq","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","logo","header","sectionAboutProject"],"editRelations":[],"edit":[[{"name":"logo","size":6}],[{"name":"header","size":12}],[{"name":"sectionAboutProject","size":12}],[{"name":"sectionTech","size":12}],[{"name":"sectionConcepts","size":12}],[{"name":"sectionModules","size":12}],[{"name":"sectionAgenda","size":12}],[{"name":"pricingBox","size":12}],[{"name":"sectionAboutUs","size":12}],[{"name":"sectionReviews","size":12}],[{"name":"sectionFaq","size":12}]]}}	object	\N	\N
32	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
33	plugin_upload_metrics	{"weeklySchedule":"44 59 8 * * 1","lastWeeklyUpdate":1666007984015}	object	\N	\N
10	plugin_content_manager_configuration_components::page.section-agenda	{"uid":"page.section-agenda","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}}},"layouts":{"list":["id","title"],"edit":[[{"name":"title","size":6}],[{"name":"description","size":12}]],"editRelations":[]},"isComponent":true}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
28	plugin_content_manager_configuration_content_types::api::author.author	{"uid":"api::author.author","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"role","searchable":true,"sortable":true}},"socialLinks":{"edit":{"label":"socialLinks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialLinks","searchable":false,"sortable":false}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","photo","name","role"],"editRelations":[],"edit":[[{"name":"photo","size":6},{"name":"name","size":6}],[{"name":"role","size":6}],[{"name":"socialLinks","size":12}],[{"name":"description","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_components::page.section-faq	{"uid":"page.section-faq","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"questions":{"edit":{"label":"questions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"questions","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","questions"],"edit":[[{"name":"title","size":6}],[{"name":"questions","size":12}]],"editRelations":[]},"isComponent":true}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object	\N	\N
27	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object	\N	\N
12	plugin_content_manager_configuration_components::page.section-reviews	{"uid":"page.section-reviews","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"reviews":{"edit":{"label":"reviews","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reviews","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","reviews"],"edit":[[{"name":"title","size":6}],[{"name":"reviews","size":12}]],"editRelations":[]},"isComponent":true}	object	\N	\N
26	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
31	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_components::page.section-tech	{"uid":"page.section-tech","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"techIcons":{"edit":{"label":"techIcons","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"techIcons","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","techIcons"],"edit":[[{"name":"title","size":6}],[{"name":"techIcons","size":12}]],"editRelations":[]},"isComponent":true}	object	\N	\N
17	plugin_content_manager_configuration_components::page.sectionmodules	{"uid":"page.sectionmodules","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"modules":{"edit":{"label":"modules","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"modules","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","modules"],"edit":[[{"name":"title","size":6}],[{"name":"modules","size":12}]],"editRelations":[]},"isComponent":true}	object	\N	\N
24	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"editRelations":["parent","children","files"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"path","size":6}]]}}	object	\N	\N
25	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
30	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["folder"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folderPath","size":6}]]}}	object	\N	\N
14	plugin_content_manager_configuration_components::page.tech-icons	{"uid":"page.tech-icons","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"icon":{"edit":{"label":"icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"icon","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}}},"layouts":{"list":["id","icon","title"],"edit":[[{"name":"icon","size":6},{"name":"title","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
18	plugin_content_manager_configuration_components::page.social-links	{"uid":"page.social-links","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"url","defaultSortBy":"url","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","url"],"edit":[[{"name":"title","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
21	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object	\N	\N
34	plugin_i18n_default_locale	"en"	string	\N	\N
35	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
36	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
37	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"editRelations":["token"],"edit":[[{"name":"action","size":6}]]}}	object	\N	\N
2	plugin_content_manager_configuration_components::page.button	{"uid":"page.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","url"],"edit":[[{"name":"label","size":6},{"name":"url","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::page.pricing-box	{"uid":"page.pricing-box","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"totalPrice":{"edit":{"label":"totalPrice","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"totalPrice","searchable":true,"sortable":true}},"numberInstallments":{"edit":{"label":"numberInstallments","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"numberInstallments","searchable":true,"sortable":true}},"pricingInstallments":{"edit":{"label":"pricingInstallments","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pricingInstallments","searchable":true,"sortable":true}},"benefits":{"edit":{"label":"benefits","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"benefits","searchable":false,"sortable":false}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":false,"sortable":false}}},"layouts":{"list":["id","totalPrice","numberInstallments","pricingInstallments"],"edit":[[{"name":"totalPrice","size":4},{"name":"numberInstallments","size":4},{"name":"pricingInstallments","size":4}],[{"name":"benefits","size":12}],[{"name":"button","size":12}]],"editRelations":[]},"isComponent":true}	object	\N	\N
15	plugin_content_manager_configuration_components::page.questions	{"uid":"page.questions","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"question":{"edit":{"label":"question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"answer","searchable":false,"sortable":false}}},"layouts":{"list":["id","question"],"edit":[[{"name":"question","size":6}],[{"name":"answer","size":12}]],"editRelations":[]},"isComponent":true}	object	\N	\N
16	plugin_content_manager_configuration_components::page.reviews	{"uid":"page.reviews","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}},"photo":{"edit":{"label":"photo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"photo","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","text","photo"],"edit":[[{"name":"name","size":6},{"name":"text","size":6}],[{"name":"photo","size":6}]],"editRelations":[]},"isComponent":true}	object	\N	\N
7	plugin_content_manager_configuration_components::page.seaction-concepts	{"uid":"page.seaction-concepts","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"concepts":{"edit":{"label":"concepts","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"concepts","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","concepts"],"edit":[[{"name":"title","size":6}],[{"name":"concepts","size":12}]],"editRelations":[]},"isComponent":true}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
1	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"authors","indexes":[{"name":"authors_created_by_id_fk","columns":["created_by_id"]},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"authors_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"authors_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"role","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"landing_pages","indexes":[{"name":"landing_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"landing_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"landing_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"landing_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_buttons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_concepts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_headers","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_modules","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subtitle","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_pricing_boxes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"total_price","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"number_installments","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"pricing_installments","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"benefits","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_questions","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"question","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"answer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_reviews","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_seaction_concepts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_about_projects","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_aboutuses","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_agenda","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_faqs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_reviews","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_section_teches","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_sectionmodules","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_social_links","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_page_tech_icons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"authors_components","indexes":[{"name":"authors_field_index","columns":["field"],"type":null},{"name":"authors_component_type_index","columns":["component_type"],"type":null},{"name":"authors_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"authors_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"landing_pages_components","indexes":[{"name":"landing_pages_field_index","columns":["field"],"type":null},{"name":"landing_pages_component_type_index","columns":["component_type"],"type":null},{"name":"landing_pages_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"landing_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"landing_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"components_page_headers_components","indexes":[{"name":"components_page_headers_field_index","columns":["field"],"type":null},{"name":"components_page_headers_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_headers_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"components_page_headers_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_headers","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"components_page_pricing_boxes_components","indexes":[{"name":"components_page_pricing_boxes_field_index","columns":["field"],"type":null},{"name":"components_page_pricing_boxes_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_pricing_boxes_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"components_page_pricing_boxes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_pricing_boxes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"components_page_seaction_concepts_components","indexes":[{"name":"components_page_seaction_concepts_field_index","columns":["field"],"type":null},{"name":"components_page_seaction_concepts_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_seaction_concepts_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"components_page_seaction_concepts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_seaction_concepts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_aboutuses_authors_links","indexes":[{"name":"components_page_section_aboutuses_authors_links_fk","columns":["section_about_us_id"]},{"name":"components_page_section_aboutuses_authors_links_inv_fk","columns":["author_id"]}],"foreignKeys":[{"name":"components_page_section_aboutuses_authors_links_fk","columns":["section_about_us_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_aboutuses","onDelete":"CASCADE"},{"name":"components_page_section_aboutuses_authors_links_inv_fk","columns":["author_id"],"referencedColumns":["id"],"referencedTable":"authors","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"section_about_us_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"author_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_faqs_components","indexes":[{"name":"components_page_section_faqs_field_index","columns":["field"],"type":null},{"name":"components_page_section_faqs_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_section_faqs_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"components_page_section_faqs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_faqs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_reviews_components","indexes":[{"name":"components_page_section_reviews_field_index","columns":["field"],"type":null},{"name":"components_page_section_reviews_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_section_reviews_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"components_page_section_reviews_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_reviews","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"components_page_section_teches_components","indexes":[{"name":"components_page_section_teches_field_index","columns":["field"],"type":null},{"name":"components_page_section_teches_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_section_teches_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"components_page_section_teches_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_section_teches","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]},{"name":"components_page_sectionmodules_components","indexes":[{"name":"components_page_sectionmodules_field_index","columns":["field"],"type":null},{"name":"components_page_sectionmodules_component_type_index","columns":["component_type"],"type":null},{"name":"components_page_sectionmodules_entity_fk","columns":["entity_id"]}],"foreignKeys":[{"name":"components_page_sectionmodules_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_page_sectionmodules","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":0,"notNullable":false,"unsigned":true}]}]}	2022-10-17 08:54:44.158	9185dc653f100c8bdb519a93c762160d
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2022-10-17 08:54:44.501	2022-10-17 08:54:44.501	\N	\N
2	plugin::users-permissions.auth.changePassword	2022-10-17 08:54:44.501	2022-10-17 08:54:44.501	\N	\N
3	plugin::users-permissions.auth.callback	2022-10-17 08:54:44.509	2022-10-17 08:54:44.509	\N	\N
4	plugin::users-permissions.auth.connect	2022-10-17 08:54:44.509	2022-10-17 08:54:44.509	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2022-10-17 08:54:44.509	2022-10-17 08:54:44.509	\N	\N
6	plugin::users-permissions.auth.resetPassword	2022-10-17 08:54:44.509	2022-10-17 08:54:44.509	\N	\N
7	plugin::users-permissions.auth.register	2022-10-17 08:54:44.509	2022-10-17 08:54:44.509	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2022-10-17 08:54:44.509	2022-10-17 08:54:44.509	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2022-10-17 08:54:44.509	2022-10-17 08:54:44.509	\N	\N
10	api::author.author.find	2022-10-17 09:32:37.603	2022-10-17 09:32:37.603	\N	\N
11	api::author.author.findOne	2022-10-17 09:32:37.603	2022-10-17 09:32:37.603	\N	\N
12	api::landing-page.landing-page.find	2022-10-17 09:32:37.603	2022-10-17 09:32:37.603	\N	\N
13	api::author.author.create	2022-10-17 10:55:15.838	2022-10-17 10:55:15.838	\N	\N
14	api::author.author.update	2022-10-17 10:55:15.838	2022-10-17 10:55:15.838	\N	\N
15	api::author.author.delete	2022-10-17 10:55:15.839	2022-10-17 10:55:15.839	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.up_permissions_role_links (id, permission_id, role_id) FROM stdin;
1	1	1
2	2	1
3	3	2
4	6	2
5	5	2
6	7	2
7	4	2
8	8	2
9	9	2
10	10	2
11	11	2
12	12	2
13	13	2
14	14	2
15	15	2
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2022-10-17 08:54:44.489	2022-10-17 08:54:44.489	\N	\N
2	Public	Default role given to unauthenticated user.	public	2022-10-17 08:54:44.493	2022-10-17 10:55:15.834	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.up_users_role_links (id, user_id, role_id) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: strapi-api
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 86, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 86, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: authors_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.authors_components_id_seq', 7, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.authors_id_seq', 3, true);


--
-- Name: components_page_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_buttons_id_seq', 2, true);


--
-- Name: components_page_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_concepts_id_seq', 18, true);


--
-- Name: components_page_headers_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_headers_components_id_seq', 4, true);


--
-- Name: components_page_headers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_headers_id_seq', 1, true);


--
-- Name: components_page_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_modules_id_seq', 6, true);


--
-- Name: components_page_pricing_boxes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_pricing_boxes_components_id_seq', 4, true);


--
-- Name: components_page_pricing_boxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_pricing_boxes_id_seq', 1, true);


--
-- Name: components_page_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_questions_id_seq', 7, true);


--
-- Name: components_page_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_reviews_id_seq', 17, true);


--
-- Name: components_page_seaction_concepts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_seaction_concepts_components_id_seq', 72, true);


--
-- Name: components_page_seaction_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_seaction_concepts_id_seq', 1, true);


--
-- Name: components_page_section_about_projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_about_projects_id_seq', 1, true);


--
-- Name: components_page_section_aboutuses_authors_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_aboutuses_authors_links_id_seq', 12, true);


--
-- Name: components_page_section_aboutuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_aboutuses_id_seq', 1, true);


--
-- Name: components_page_section_agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_agenda_id_seq', 1, true);


--
-- Name: components_page_section_faqs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_faqs_components_id_seq', 28, true);


--
-- Name: components_page_section_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_faqs_id_seq', 1, true);


--
-- Name: components_page_section_reviews_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_reviews_components_id_seq', 68, true);


--
-- Name: components_page_section_reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_reviews_id_seq', 1, true);


--
-- Name: components_page_section_teches_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_teches_components_id_seq', 40, true);


--
-- Name: components_page_section_teches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_section_teches_id_seq', 1, true);


--
-- Name: components_page_sectionmodules_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_sectionmodules_components_id_seq', 20, true);


--
-- Name: components_page_sectionmodules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_sectionmodules_id_seq', 1, true);


--
-- Name: components_page_social_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_social_links_id_seq', 7, true);


--
-- Name: components_page_tech_icons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.components_page_tech_icons_id_seq', 10, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.files_id_seq', 28, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 123, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: landing_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.landing_pages_components_id_seq', 40, true);


--
-- Name: landing_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.landing_pages_id_seq', 1, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 38, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 15, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 15, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi-api
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: authors_components authors_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_components_pkey PRIMARY KEY (id);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- Name: components_page_buttons components_page_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_buttons
    ADD CONSTRAINT components_page_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_page_concepts components_page_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_concepts
    ADD CONSTRAINT components_page_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers_components components_page_headers_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_headers components_page_headers_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_headers
    ADD CONSTRAINT components_page_headers_pkey PRIMARY KEY (id);


--
-- Name: components_page_modules components_page_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_modules
    ADD CONSTRAINT components_page_modules_pkey PRIMARY KEY (id);


--
-- Name: components_page_pricing_boxes_components components_page_pricing_boxes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_pricing_boxes components_page_pricing_boxes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_pricing_boxes
    ADD CONSTRAINT components_page_pricing_boxes_pkey PRIMARY KEY (id);


--
-- Name: components_page_questions components_page_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_questions
    ADD CONSTRAINT components_page_questions_pkey PRIMARY KEY (id);


--
-- Name: components_page_reviews components_page_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_reviews
    ADD CONSTRAINT components_page_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_seaction_concepts_components components_page_seaction_concepts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_seaction_concepts_components
    ADD CONSTRAINT components_page_seaction_concepts_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_seaction_concepts components_page_seaction_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_seaction_concepts
    ADD CONSTRAINT components_page_seaction_concepts_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_about_projects components_page_section_about_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_about_projects
    ADD CONSTRAINT components_page_section_about_projects_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_aboutuses_authors_links components_page_section_aboutuses_authors_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_aboutuses_authors_links
    ADD CONSTRAINT components_page_section_aboutuses_authors_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_aboutuses components_page_section_aboutuses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_aboutuses
    ADD CONSTRAINT components_page_section_aboutuses_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_agenda components_page_section_agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_agenda
    ADD CONSTRAINT components_page_section_agenda_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs_components components_page_section_faqs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_faqs components_page_section_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_faqs
    ADD CONSTRAINT components_page_section_faqs_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews_components components_page_section_reviews_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_reviews components_page_section_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_reviews
    ADD CONSTRAINT components_page_section_reviews_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches_components components_page_section_teches_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_section_teches components_page_section_teches_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_teches
    ADD CONSTRAINT components_page_section_teches_pkey PRIMARY KEY (id);


--
-- Name: components_page_sectionmodules_components components_page_sectionmodules_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_sectionmodules_components
    ADD CONSTRAINT components_page_sectionmodules_components_pkey PRIMARY KEY (id);


--
-- Name: components_page_sectionmodules components_page_sectionmodules_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_sectionmodules
    ADD CONSTRAINT components_page_sectionmodules_pkey PRIMARY KEY (id);


--
-- Name: components_page_social_links components_page_social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_social_links
    ADD CONSTRAINT components_page_social_links_pkey PRIMARY KEY (id);


--
-- Name: components_page_tech_icons components_page_tech_icons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_tech_icons
    ADD CONSTRAINT components_page_tech_icons_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: landing_pages_components landing_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_components_pkey PRIMARY KEY (id);


--
-- Name: landing_pages landing_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: authors_component_type_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX authors_component_type_index ON public.authors_components USING btree (component_type);


--
-- Name: authors_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);


--
-- Name: authors_entity_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX authors_entity_fk ON public.authors_components USING btree (entity_id);


--
-- Name: authors_field_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX authors_field_index ON public.authors_components USING btree (field);


--
-- Name: authors_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);


--
-- Name: components_page_headers_component_type_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_headers_component_type_index ON public.components_page_headers_components USING btree (component_type);


--
-- Name: components_page_headers_entity_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_headers_entity_fk ON public.components_page_headers_components USING btree (entity_id);


--
-- Name: components_page_headers_field_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_headers_field_index ON public.components_page_headers_components USING btree (field);


--
-- Name: components_page_pricing_boxes_component_type_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_pricing_boxes_component_type_index ON public.components_page_pricing_boxes_components USING btree (component_type);


--
-- Name: components_page_pricing_boxes_entity_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_pricing_boxes_entity_fk ON public.components_page_pricing_boxes_components USING btree (entity_id);


--
-- Name: components_page_pricing_boxes_field_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_pricing_boxes_field_index ON public.components_page_pricing_boxes_components USING btree (field);


--
-- Name: components_page_seaction_concepts_component_type_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_seaction_concepts_component_type_index ON public.components_page_seaction_concepts_components USING btree (component_type);


--
-- Name: components_page_seaction_concepts_entity_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_seaction_concepts_entity_fk ON public.components_page_seaction_concepts_components USING btree (entity_id);


--
-- Name: components_page_seaction_concepts_field_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_seaction_concepts_field_index ON public.components_page_seaction_concepts_components USING btree (field);


--
-- Name: components_page_section_aboutuses_authors_links_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_aboutuses_authors_links_fk ON public.components_page_section_aboutuses_authors_links USING btree (section_about_us_id);


--
-- Name: components_page_section_aboutuses_authors_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_aboutuses_authors_links_inv_fk ON public.components_page_section_aboutuses_authors_links USING btree (author_id);


--
-- Name: components_page_section_faqs_component_type_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_faqs_component_type_index ON public.components_page_section_faqs_components USING btree (component_type);


--
-- Name: components_page_section_faqs_entity_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_faqs_entity_fk ON public.components_page_section_faqs_components USING btree (entity_id);


--
-- Name: components_page_section_faqs_field_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_faqs_field_index ON public.components_page_section_faqs_components USING btree (field);


--
-- Name: components_page_section_reviews_component_type_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_reviews_component_type_index ON public.components_page_section_reviews_components USING btree (component_type);


--
-- Name: components_page_section_reviews_entity_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_reviews_entity_fk ON public.components_page_section_reviews_components USING btree (entity_id);


--
-- Name: components_page_section_reviews_field_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_reviews_field_index ON public.components_page_section_reviews_components USING btree (field);


--
-- Name: components_page_section_teches_component_type_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_teches_component_type_index ON public.components_page_section_teches_components USING btree (component_type);


--
-- Name: components_page_section_teches_entity_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_teches_entity_fk ON public.components_page_section_teches_components USING btree (entity_id);


--
-- Name: components_page_section_teches_field_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_section_teches_field_index ON public.components_page_section_teches_components USING btree (field);


--
-- Name: components_page_sectionmodules_component_type_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_sectionmodules_component_type_index ON public.components_page_sectionmodules_components USING btree (component_type);


--
-- Name: components_page_sectionmodules_entity_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_sectionmodules_entity_fk ON public.components_page_sectionmodules_components USING btree (entity_id);


--
-- Name: components_page_sectionmodules_field_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX components_page_sectionmodules_field_index ON public.components_page_sectionmodules_components USING btree (field);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: landing_pages_component_type_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX landing_pages_component_type_index ON public.landing_pages_components USING btree (component_type);


--
-- Name: landing_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX landing_pages_created_by_id_fk ON public.landing_pages USING btree (created_by_id);


--
-- Name: landing_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX landing_pages_entity_fk ON public.landing_pages_components USING btree (entity_id);


--
-- Name: landing_pages_field_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX landing_pages_field_index ON public.landing_pages_components USING btree (field);


--
-- Name: landing_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX landing_pages_updated_by_id_fk ON public.landing_pages USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi-api
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors authors_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: authors_components authors_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.authors_components
    ADD CONSTRAINT authors_entity_fk FOREIGN KEY (entity_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: authors authors_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_page_headers_components components_page_headers_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_headers_components
    ADD CONSTRAINT components_page_headers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_headers(id) ON DELETE CASCADE;


--
-- Name: components_page_pricing_boxes_components components_page_pricing_boxes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_pricing_boxes_components
    ADD CONSTRAINT components_page_pricing_boxes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_pricing_boxes(id) ON DELETE CASCADE;


--
-- Name: components_page_seaction_concepts_components components_page_seaction_concepts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_seaction_concepts_components
    ADD CONSTRAINT components_page_seaction_concepts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_seaction_concepts(id) ON DELETE CASCADE;


--
-- Name: components_page_section_aboutuses_authors_links components_page_section_aboutuses_authors_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_aboutuses_authors_links
    ADD CONSTRAINT components_page_section_aboutuses_authors_links_fk FOREIGN KEY (section_about_us_id) REFERENCES public.components_page_section_aboutuses(id) ON DELETE CASCADE;


--
-- Name: components_page_section_aboutuses_authors_links components_page_section_aboutuses_authors_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_aboutuses_authors_links
    ADD CONSTRAINT components_page_section_aboutuses_authors_links_inv_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;


--
-- Name: components_page_section_faqs_components components_page_section_faqs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_faqs_components
    ADD CONSTRAINT components_page_section_faqs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_faqs(id) ON DELETE CASCADE;


--
-- Name: components_page_section_reviews_components components_page_section_reviews_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_reviews_components
    ADD CONSTRAINT components_page_section_reviews_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_reviews(id) ON DELETE CASCADE;


--
-- Name: components_page_section_teches_components components_page_section_teches_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_section_teches_components
    ADD CONSTRAINT components_page_section_teches_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_section_teches(id) ON DELETE CASCADE;


--
-- Name: components_page_sectionmodules_components components_page_sectionmodules_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.components_page_sectionmodules_components
    ADD CONSTRAINT components_page_sectionmodules_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_page_sectionmodules(id) ON DELETE CASCADE;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: landing_pages landing_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: landing_pages_components landing_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.landing_pages_components
    ADD CONSTRAINT landing_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.landing_pages(id) ON DELETE CASCADE;


--
-- Name: landing_pages landing_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.landing_pages
    ADD CONSTRAINT landing_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi-api
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

