
IF OBJECT_ID('ohdsi.dbo.concept', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.concept;
IF OBJECT_ID('ohdsi.dbo.vocabulary', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.vocabulary;
IF OBJECT_ID('ohdsi.dbo.domain', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.domain;
IF OBJECT_ID('ohdsi.dbo.concept_class', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.concept_class;
IF OBJECT_ID('ohdsi.dbo.concept_relationship', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.concept_relationship;
IF OBJECT_ID('ohdsi.dbo.relationship', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.relationship;
IF OBJECT_ID('ohdsi.dbo.concept_synonym', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.concept_synonym;
IF OBJECT_ID('ohdsi.dbo.concept_ancestor', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.concept_ancestor;
IF OBJECT_ID('ohdsi.dbo.source_to_concept_map', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.source_to_concept_map;
IF OBJECT_ID('ohdsi.dbo.drug_strength', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.drug_strength;

IF OBJECT_ID('ohdsi.dbo.cdm_source', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.cdm_source;
IF OBJECT_ID('ohdsi.dbo.metadata', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.metadata;
IF OBJECT_ID('ohdsi.dbo.person', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.person;
IF OBJECT_ID('ohdsi.dbo.observation_period', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.observation_period;
IF OBJECT_ID('ohdsi.dbo.specimen', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.specimen;
IF OBJECT_ID('ohdsi.dbo.visit_occurrence', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.visit_occurrence;
IF OBJECT_ID('ohdsi.dbo.visit_detail', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.visit_detail;
IF OBJECT_ID('ohdsi.dbo.procedure_occurrence', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.procedure_occurrence;
IF OBJECT_ID('ohdsi.dbo.drug_exposure', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.drug_exposure;
IF OBJECT_ID('ohdsi.dbo.device_exposure', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.device_exposure;
IF OBJECT_ID('ohdsi.dbo.condition_occurrence', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.condition_occurrence;
IF OBJECT_ID('ohdsi.dbo.measurement', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.measurement;
IF OBJECT_ID('ohdsi.dbo.note', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.note;
IF OBJECT_ID('ohdsi.dbo.note_nlp', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.note_nlp;
IF OBJECT_ID('ohdsi.dbo.observation', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.observation;
IF OBJECT_ID('ohdsi.dbo.survey_conduct', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.survey_conduct;
IF OBJECT_ID('ohdsi.dbo.fact_relationship', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.fact_relationship;

IF OBJECT_ID('ohdsi.dbo.location', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.location;
IF OBJECT_ID('ohdsi.dbo.location_history', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.location_history;
IF OBJECT_ID('ohdsi.dbo.care_site', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.care_site;
IF OBJECT_ID('ohdsi.dbo.provider', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.provider;

IF OBJECT_ID('ohdsi.dbo.payer_plan_period', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.payer_plan_period;
IF OBJECT_ID('ohdsi.dbo.cost', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.cost;

IF OBJECT_ID('ohdsi.dbo.drug_era', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.drug_era;
IF OBJECT_ID('ohdsi.dbo.dose_era', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.dose_era;
IF OBJECT_ID('ohdsi.dbo.condition_era', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.condition_era;

IF OBJECT_ID('ohdsi.dbo.attribute_definition', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.attribute_definition;
IF OBJECT_ID('ohdsi.dbo.cohort_definition', 'U') IS NOT NULL  DROP TABLE ohdsi.dbo.cohort_definition;
