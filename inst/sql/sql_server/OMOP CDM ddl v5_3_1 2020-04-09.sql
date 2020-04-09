--CDM DDL Specification for OMOP Common Data Model v5_3_1 

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE PERSON (
 
			person_id integer NOT NULL, 
			gender_concept_id integer NOT NULL, 
			year_of_birth integer NOT NULL, 
			month_of_birth integer NULL, 
			day_of_birth integer NULL, 
			birth_datetime datetime NULL, 
			race_concept_id integer NOT NULL, 
			ethnicity_concept_id integer NOT NULL, 
			location_id integer NULL, 
			provider_id integer NULL, 
			care_site_id integer NULL, 
			person_source_value varchar(50) NULL, 
			gender_source_value varchar(50) NULL, 
			gender_source_concept_id Integer NULL, 
			race_source_value varchar(50) NULL, 
			race_source_concept_id Integer NULL, 
			ethnicity_source_value varchar(50) NULL, 
			ethnicity_source_concept_id Integer NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE OBSERVATION_PERIOD (
 
			observation_period_id integer NOT NULL, 
			person_id integer NOT NULL, 
			observation_period_start_date date NOT NULL, 
			observation_period_end_date date NOT NULL, 
			period_type_concept_id Integer NOT NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE VISIT_OCCURRENCE (
 
			visit_occurrence_id integer NOT NULL, 
			person_id integer NOT NULL, 
			visit_concept_id integer NOT NULL, 
			visit_start_date date NOT NULL, 
			visit_start_datetime datetime NULL, 
			visit_end_date date NOT NULL, 
			visit_end_datetime datetime NULL, 
			visit_type_concept_id Integer NOT NULL, 
			provider_id integer NULL, 
			care_site_id integer NULL, 
			visit_source_value varchar(50) NULL, 
			visit_source_concept_id integer NULL, 
			admitting_source_concept_id integer NULL, 
			admitting_source_value varchar(50) NULL, 
			discharge_to_concept_id integer NULL, 
			discharge_to_source_value varchar(50) NULL, 
			preceding_visit_occurrence_id integer NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE CONDITION_OCCURRENCE (
 
			condition_occurrence_id bigint NOT NULL, 
			person_id bigint NOT NULL, 
			condition_concept_id integer NOT NULL, 
			condition_start_date date NOT NULL, 
			condition_start_datetime datetime NULL, 
			condition_end_date date NULL, 
			condition_end_datetime datetime NULL, 
			condition_type_concept_id integer NOT NULL, 
			condition_status_concept_id integer NULL, 
			stop_reason varchar(20) NULL, 
			provider_id integer NULL, 
			visit_occurrence_id integer NULL, 
			visit_detail_id integer NULL, 
			condition_source_value varchar(50) NULL, 
			condition_source_concept_id integer NULL, 
			condition_status_source_value varchar(50) NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE DRUG_EXPOSURE (
 
			drug_exposure_id bigint NOT NULL, 
			person_id bigint NOT NULL, 
			drug_concept_id integer NOT NULL, 
			drug_exposure_start_date date NOT NULL, 
			drug_exposure_start_datetime datetime NULL, 
			drug_exposure_end_date date NOT NULL, 
			drug_exposure_end_datetime datetime NULL, 
			verbatim_end_date date NULL, 
			drug_type_concept_id integer NOT NULL, 
			stop_reason varchar(20) NULL, 
			refills integer NULL, 
			quantity float NULL, 
			days_supply integer NULL, 
			sig varchar(MAX) NULL, 
			route_concept_id integer NULL, 
			lot_number varchar(50) NULL, 
			provider_id integer NULL, 
			visit_occurrence_id integer NULL, 
			visit_detail_id integer NULL, 
			drug_source_value varchar(50) NULL, 
			drug_source_concept_id integer NULL, 
			route_source_value varchar(50) NULL, 
			dose_unit_source_value varchar(50) NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE PROCEDURE_OCCURRENCE (
 
			procedure_occurrence_id integer NOT NULL, 
			person_id integer NOT NULL, 
			procedure_concept_id integer NOT NULL, 
			procedure_date date NOT NULL, 
			procedure_datetime datetime NULL, 
			procedure_type_concept_id integer NOT NULL, 
			modifier_concept_id integer NULL, 
			quantity integer NULL, 
			provider_id integer NULL, 
			visit_occurrence_id integer NULL, 
			visit_detail_id integer NULL, 
			procedure_source_value varchar(50) NULL, 
			procedure_source_concept_id integer NULL, 
			modifier_source_value varchar(50) NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE DEVICE_EXPOSURE (
 
			device_exposure_id bigint NOT NULL, 
			person_id bigint NOT NULL, 
			device_concept_id integer NOT NULL, 
			device_exposure_start_date date NOT NULL, 
			device_exposure_start_datetime datetime NULL, 
			device_exposure_end_date date NULL, 
			device_exposure_end_datetime datetime NULL, 
			device_type_concept_id integer NOT NULL, 
			unique_device_id varchar(50) NULL, 
			quantity integer NULL, 
			provider_id integer NULL, 
			visit_occurrence_id integer NULL, 
			visit_detail_id integer NULL, 
			device_source_value varchar(50) NULL, 
			device_source_concept_id integer NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE MEASUREMENT (
 
			measurement_id integer NOT NULL, 
			person_id integer NOT NULL, 
			measurement_concept_id integer NOT NULL, 
			measurement_date date NOT NULL, 
			measurement_datetime datetime NULL, 
			measurement_time varchar(10) NULL, 
			measurement_type_concept_id integer NOT NULL, 
			operator_concept_id integer NULL, 
			value_as_number float NULL, 
			value_as_concept_id integer NULL, 
			unit_concept_id integer NULL, 
			range_low float NULL, 
			range_high float NULL, 
			provider_id integer NULL, 
			visit_occurrence_id integer NULL, 
			visit_detail_id integer NULL, 
			measurement_source_value varchar(50) NULL, 
			measurement_source_concept_id integer NULL, 
			unit_source_value varchar(50) NULL, 
			value_source_value varchar(50) NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE VISIT_DETAIL (
 
			visit_detail_id integer NOT NULL, 
			person_id integer NOT NULL, 
			visit_detail_concept_id integer NOT NULL, 
			visit_detail_start_date date NOT NULL, 
			visit_detail_start_datetime datetime NULL, 
			visit_detail_end_date date NOT NULL, 
			visit_detail_end_datetime datetime NULL, 
			visit_detail_type_concept_id Integer NOT NULL, 
			provider_id integer NULL, 
			care_site_id integer NULL, 
			visit_detail_source_value string(50) NULL, 
			visit_detail_source_concept_id Integer NULL, 
			admitting_source_value Varchar(50) NULL, 
			admitting_source_concept_id Integer NULL, 
			discharge_to_source_value Varchar(50) NULL, 
			discharge_to_concept_id Integer NULL, 
			preceding_visit_detail_id Integer NULL, 
			visit_detail_parent_id Integer NULL, 
			visit_occurrence_id Integer NOT NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE NOTE (
 
			note_id integer NOT NULL, 
			person_id integer NOT NULL, 
			note_date date NOT NULL, 
			note_datetime datetime NULL, 
			note_type_concept_id integer NOT NULL, 
			note_class_concept_id integer NOT NULL, 
			note_title varchar(250) NULL, 
			note_text varchar(MAX) NOT NULL, 
			encoding_concept_id integer NOT NULL, 
			language_concept_id integer NOT NULL, 
			provider_id integer NULL, 
			visit_occurrence_id integer NULL, 
			visit_detail_id integer NULL, 
			note_source_value varchar(50) NULL );  

--HINT DISTRIBUTE ON RANDOM
 CREATE TABLE NOTE_NLP (
 
			note_nlp_id integer NOT NULL, 
			note_id integer NOT NULL, 
			section_concept_id integer NULL, 
			snippet varchar(250) NULL, 
			offset varchar(50) NULL, 
			lexical_variant varchar(250) NOT NULL, 
			note_nlp_concept_id integer NULL, 
			note_nlp_source_concept_id integer NULL, 
			nlp_system varchar(250) NULL, 
			nlp_date date NOT NULL, 
			nlp_datetime datetime NULL, 
			term_exists varchar(1) NULL, 
			term_temporal varchar(50) NULL, 
			term_modifiers varchar(2000) NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE OBSERVATION (
 
			observation_id integer NOT NULL, 
			person_id integer NOT NULL, 
			observation_concept_id integer NOT NULL, 
			observation_date date NOT NULL, 
			observation_datetime datetime NULL, 
			observation_type_concept_id integer NOT NULL, 
			value_as_number float NULL, 
			value_as_string varchar(60) NULL, 
			value_as_concept_id Integer NULL, 
			qualifier_concept_id integer NULL, 
			unit_concept_id integer NULL, 
			provider_id integer NULL, 
			visit_occurrence_id integer NULL, 
			visit_detail_id integer NULL, 
			observation_source_value varchar(50) NULL, 
			observation_source_concept_id integer NULL, 
			unit_source_value varchar(50) NULL, 
			qualifier_source_value varchar(50) NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE SPECIMEN (
 
			specimen_id integer NOT NULL, 
			person_id integer NOT NULL, 
			specimen_concept_id integer NOT NULL, 
			specimen_type_concept_id integer NOT NULL, 
			specimen_date date NOT NULL, 
			specimen_datetime datetime NULL, 
			quantity float NULL, 
			unit_concept_id integer NULL, 
			anatomic_site_concept_id integer NULL, 
			disease_status_concept_id integer NULL, 
			specimen_source_id varchar(50) NULL, 
			specimen_source_value varchar(50) NULL, 
			unit_source_value varchar(50) NULL, 
			anatomic_site_source_value varchar(50) NULL, 
			disease_status_source_value varchar(50) NULL );  

--HINT DISTRIBUTE ON RANDOM
 CREATE TABLE FACT_RELATIONSHIP (
 
			domain_concept_id_1 integer NOT NULL, 
			fact_id_1 integer NOT NULL, 
			domain_concept_id_2 integer NOT NULL, 
			fact_id_2 integer NOT NULL, 
			relationship_concept_id integer NOT NULL );  

--HINT DISTRIBUTE ON RANDOM
 CREATE TABLE LOCATION (
 
			location_id integer NOT NULL, 
			address_1 varchar(50) NULL, 
			address_2 varchar(50) NULL, 
			city varchar(50) NULL, 
			state varchar(2) NULL, 
			zip varchar(9) NULL, 
			county varchar(20) NULL, 
			location_source_value varchar(50) NULL );  

--HINT DISTRIBUTE ON RANDOM
 CREATE TABLE CARE_SITE (
 
			care_site_id integer NOT NULL, 
			care_site_name varchar(255) NULL, 
			place_of_service_concept_id integer NULL, 
			location_id integer NULL, 
			care_site_source_value varchar(50) NULL, 
			place_of_service_source_value varchar(50) NULL );  

--HINT DISTRIBUTE ON RANDOM
 CREATE TABLE PROVIDER (
 
			provider_id integer NOT NULL, 
			provider_name varchar(255) NULL, 
			npi varchar(20) NULL, 
			dea varchar(20) NULL, 
			specialty_concept_id integer NULL, 
			care_site_id integer NULL, 
			year_of_birth integer NULL, 
			gender_concept_id integer NULL, 
			provider_source_value varchar(50) NULL, 
			specialty_source_value varchar(50) NULL, 
			specialty_source_concept_id integer NULL, 
			gender_source_value varchar(50) NULL, 
			gender_source_concept_id integer NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE PAYER_PLAN_PERIOD (
 
			payer_plan_period_id integer NOT NULL, 
			person_id integer NOT NULL, 
			payer_plan_period_start_date date NOT NULL, 
			payer_plan_period_end_date date NOT NULL, 
			payer_concept_id integer NULL, 
			payer_source_value varchar(50) NULL, 
			payer_source_concept_id integer NULL, 
			plan_concept_id integer NULL, 
			plan_source_value varchar(50) NULL, 
			plan_source_concept_id integer NULL, 
			sponsor_concept_id integer NULL, 
			sponsor_source_value varchar(50) NULL, 
			sponsor_source_concept_id integer NULL, 
			family_source_value varchar(50) NULL, 
			stop_reason_concept_id integer NULL, 
			stop_reason_source_value varchar(50) NULL, 
			stop_reason_source_concept_id integer NULL );  

--HINT DISTRIBUTE ON RANDOM
 CREATE TABLE COST (
 
			cost_id INTEGER NOT NULL, 
			cost_event_id INTEGER NOT NULL, 
			cost_domain_id VARCHAR(20) NOT NULL, 
			cost_type_concept_id integer NOT NULL, 
			currency_concept_id integer NULL, 
			total_charge FLOAT NULL, 
			total_cost FLOAT NULL, 
			total_paid FLOAT NULL, 
			paid_by_payer FLOAT NULL, 
			paid_by_patient FLOAT NULL, 
			paid_patient_copay FLOAT NULL, 
			paid_patient_coinsurance FLOAT NULL, 
			paid_patient_deductible FLOAT NULL, 
			paid_by_primary FLOAT NULL, 
			paid_ingredient_cost FLOAT NULL, 
			paid_dispensing_fee FLOAT NULL, 
			payer_plan_period_id INTEGER NULL, 
			amount_allowed FLOAT NULL, 
			revenue_code_concept_id integer NULL, 
			revenue_code_source_value VARCHAR(50) NULL, 
			drg_concept_id integer NULL, 
			drg_source_value VARCHAR(3) NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE DRUG_ERA (
 
			drug_era_id integer NOT NULL, 
			person_id integer NOT NULL, 
			drug_concept_id integer NOT NULL, 
			drug_era_start_date datetime NOT NULL, 
			drug_era_end_date datetime NOT NULL, 
			drug_exposure_count integer NULL, 
			gap_days integer NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE DOSE_ERA (
 
			dose_era_id integer NOT NULL, 
			person_id integer NOT NULL, 
			drug_concept_id integer NOT NULL, 
			unit_concept_id integer NOT NULL, 
			dose_value float NOT NULL, 
			dose_era_start_date datetime NOT NULL, 
			dose_era_end_date datetime NOT NULL );  

--HINT DISTRIBUTE ON KEY (person_id)
 CREATE TABLE CONDITION_ERA (
 
			condition_era_id integer NOT NULL, 
			person_id integer NOT NULL, 
			condition_concept_id integer NOT NULL, 
			condition_era_start_date datetime NOT NULL, 
			condition_era_end_date datetime NOT NULL, 
			condition_occurrence_count integer NULL ); 