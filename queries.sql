

use prism;
drop table prism.symptom;
CREATE TABLE prism.symptom
  (
     id           INT auto_increment PRIMARY KEY,
     category     VARCHAR(256),
     sub_category VARCHAR(256),
     symptom_name VARCHAR(256)
  );

drop table prism.patient;
CREATE TABLE prism.patient
  (
     id              INT auto_increment PRIMARY KEY,
     name            VARCHAR(100),
     age             INT,
     dob             DATE,
     patient_number  INT,
     informant       VARCHAR(100),
     is_referred     CHAR(1),
     assessment_date DATE,
     assessment_time TIME,
     address         VARCHAR(256),
     phone           INT,
     occupation      VARCHAR(50),
     marital_status  VARCHAR(50),
     informant_contact VARCHAR(50),
     cell1           INT,
     cell2           INT,
     emer_contact_name VARCHAR(50),
     emer_contact_rel  VARCHAR(50),
     emer_contact_phone INT
  );

drop table prism.patient_symptom;
CREATE TABLE prism.patient_symptom
  (
     patient_id     INT,
     symptom_id     INT,
     duration       INT,
     duration_uom   VARCHAR(100),
     start_date     DATE,
     end_date       DATE,
     pattern_of_use VARCHAR(100),
     efficacy       VARCHAR(50),
     is_allergy     CHAR(1),
     drug           VARCHAR(256),
     side_effects   VARCHAR(256),
     flex1          VARCHAR(256),
     flex2          VARCHAR(256),
     flex3          VARCHAR(256),
     still_present  INT default 0,
     drug_dose      FLOAT(10,2),
     drug_schedule  INT,
     drug_duration  INT,
     drug_duration_uom INT
  );

  drop table prism.patient_diagnosis;
  CREATE TABLE prism.patient_diagnosis
    (
       patient_id     INT,
       symptom_id     INT
    );

    drop table prism.symptom_cat_color;
    CREATE TABLE prism.symptom_cat_color
      (
         category     VARCHAR(256),
         color     VARCHAR(256)
      );

      drop table prism.patient_treatment;
      CREATE TABLE prism.patient_treatment
        (
           patient_id     INT,
           symptom_id     INT
        );

        drop table prism.patient_drug;
        CREATE TABLE prism.patient_drug
          (
             patient_id     INT,
             symptom_id     INT
          );


truncate table prism.symptom_cat_color;
insert into prism.symptom_cat_color(category, color) values('organic_symptoms','#F01010');
insert into prism.symptom_cat_color(category, color) values('cognitive_symptoms','#F21010');
insert into prism.symptom_cat_color(category, color) values('substance_use','#F01330');
insert into prism.symptom_cat_color(category, color) values('psychotic_symptoms1','#F44010');
insert into prism.symptom_cat_color(category, color) values('psychotic_symptoms2','#F05510');
insert into prism.symptom_cat_color(category, color) values('mood_symptoms','#FAA010');
insert into prism.symptom_cat_color(category, color) values('anxiety_symptoms','#F01FF0');
insert into prism.symptom_cat_color(category, color) values('obsessive_compulsive_symptoms','#FCC010');
insert into prism.symptom_cat_color(category, color) values('trauma_related_symptoms','#F0DD10');
insert into prism.symptom_cat_color(category, color) values('dissociative_symptoms','#F01EE0');
insert into prism.symptom_cat_color(category, color) values('somatic_symptoms','#F010EE');
insert into prism.symptom_cat_color(category, color) values('biological_symptoms','#FAA010');
insert into prism.symptom_cat_color(category, color) values('medical_history1','#F01DDD');
insert into prism.symptom_cat_color(category, color) values('medical_history2','#F01234');
insert into prism.symptom_cat_color(category, color) values('past_history','#F04540');
insert into prism.symptom_cat_color(category, color) values('premorbid_personality','#F66610');
insert into prism.symptom_cat_color(category, color) values('treatment_side_effects','#F72210');
insert into prism.symptom_cat_color(category, color) values('family_history_psychiatric','#F0A230');
insert into prism.symptom_cat_color(category, color) values('family_history_medical','#F1D410');
insert into prism.symptom_cat_color(category, color) values('personal_history','#245010');
insert into prism.symptom_cat_color(category, color) values('stressors','#D44010');
insert into prism.symptom_cat_color(category, color) values('physical_examination','#F0D010');
insert into prism.symptom_cat_color(category, color) values('physical_examination_neurological','#F45010');
insert into prism.symptom_cat_color(category, color) values('additional_mental_status_examination','#F01660');
insert into prism.symptom_cat_color(category, color) values('intellectual_functioning','#F01330');
insert into prism.symptom_cat_color(category, color) values('social_language_developmental_symptoms','#F01010');
insert into prism.symptom_cat_color(category, color) values('behvioral_symptoms_childhood','#F44010');
insert into prism.symptom_cat_color(category, color) values('substance_use_auto','#F0BB10');
insert into prism.symptom_cat_color(category, color) values('severity_functioning','#F010CC');
insert into prism.symptom_cat_color(category, color) values('past_treatment_history','#FDD010');


truncate table prism.symptom;
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Generalized seizures');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Partial seizures');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Meningitis/encephalitis');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Head trauma');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Stroke/TIA');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Dysarthria');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Neurological deficits');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','involuntary_movements','Tremors');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','involuntary_movements','Rigidity');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','involuntary_movements','Bradykinesia');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','involuntary_movements','Chorea-athetosis');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','involuntary_movements','Dyskinesia');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','cognitive_symptom','Recent memory loss');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','cognitive_symptom','Remote memory loss');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','cognitive_symptom','Aphasia');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','cognitive_symptom','Apraxia');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','cognitive_symptom','Agnosia');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','cognitive_symptom','Loss of executive function');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','cognitive_symptom','Poor attention');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','cognitive_symptom','Visuaspatial disorientation');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','cognitive_symptom','Personality change');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','severity','Impaired functioning');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','severity','Minimal impairment in functioning');
insert into prism.symptom(category, sub_category, symptom_name) values ('cognitive_symptoms','severity','No impairment in functioning');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use','substance','Nicotine');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use','substance','Alchohol');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use','substance','Cannabis');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use','substance','Cocaine');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use','substance','Opinoids');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use','substance','Hallucinogen');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use','substance','Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','delusions','Paranoid');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','delusions','Reference');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','delusions','Grandiose');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','delusions','Nihilistic');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','delusions','Infidelity');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','delusions','Somatic');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','delusions','Control(Made phenomenon)');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','delusions','Thought alienation');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','delusions','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','hallucinations','Running commentary');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','hallucinations','Voices discussing');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','hallucinations','Auditory hallucinations');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','hallucinations','Visual');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','hallucinations','Olfactory');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','hallucinations','Tactile');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','hallucinations','Gustatory');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms1','hallucinations','Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','negative_symptoms','Alogia');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','negative_symptoms','Apathy-avolition');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','negative_symptoms','Flat effect');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','negative_symptoms','Anhedonia - asocial');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','negative_symptoms','Inattention');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','negative_symptoms','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','other_psychotic_symptoms','Catatonia');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','other_psychotic_symptoms','Disorganization');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','other_psychotic_symptoms','Cognitive disorientation');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','other_psychotic_symptoms','Formal thought disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','other_psychotic_symptoms','Odd, eccentric behaviour');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','other_psychotic_symptoms','Prodromal psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','other_psychotic_symptoms','Magical thinking');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','other_psychotic_symptoms','Circumstantial speech');
insert into prism.symptom(category, sub_category, symptom_name) values ('psychotic_symptoms2','other_psychotic_symptoms','Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Depressed mood');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Lack of interest');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Fatigue');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Poor concentration');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Decreased self esteem');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Guilt');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Hopelessness/worthlessness/helplessness');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Death wishes/suicidal attempt');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Suicidal attempt');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Decreased sleep');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','depressive_symptoms','Decrease appetite');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','manic_symptoms','Elevated mood');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','manic_symptoms','Irritable mood');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','manic_symptoms','Increased activity');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','manic_symptoms','Increased speech');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','manic_symptoms','Increased religiosity');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','manic_symptoms','Disinhibition');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','manic_symptoms','Distractability');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','manic_symptoms','Grandiose ideas (non delusional)');
insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','manic_symptoms','Decreased need for sleep');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','general','Excessive worry');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','general','Autonomic arousal');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','general','Motor tension');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','general','Avoidance behavior');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','general','Fear of dying');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','general','Episodes of intense anxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','general','Inter episode anticipatory anxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','general','Palpitations');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','general','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','situational','Height');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','situational','Closed spaces');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','situational','Social situations');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','situational','Travelling alone');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','situational','Crowded spaces');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','situational','Blood');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','situational','Objects');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','situational','Animals');
insert into prism.symptom(category, sub_category, symptom_name) values ('anxiety_symptoms','situational','Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Contamination');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Doubts');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Sexual');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Blasphemous');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Aggressive');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Symmetry');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Repetition');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Hoarding');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Rumination');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','obsessions','Miscellaneous/others');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','compulsions','Washing');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','compulsions','Checking');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','compulsions','Praying');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','compulsions','Cognitive');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','compulsions','Arranging');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','compulsions','Counting');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','compulsions','Hoarding');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms','compulsions','Miscellaneous/Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','eating','Binging');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','eating','Purging');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','eating','Restriction of food intake');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','eating','Laxative abuse/excessive exercising');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','eating','Amenorrhea/endocrine disturbance');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','eating','Normal weight');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','eating','Underweight');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','impulse_dyscontrol','Hair pulling');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','impulse_dyscontrol','Gambling');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','impulse_dyscontrol','Stealing in inappropriate places');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','impulse_dyscontrol','Fire setting');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','impulse_dyscontrol','Problem shopping');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','impulse_dyscontrol','Excessive internet use');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','body_image_disturbance','Preoccupation with misshapen body part');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','body_image_disturbance','Refusal to accept reassurance or medical advice');
insert into prism.symptom(category, sub_category, symptom_name) values ('obsessive_compulsive_symptoms_disorders','body_image_disturbance','Dread of fatness');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','acute','Daze');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','acute','Numbness');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','acute','Anxiety/Anger/Despair');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','acute','Inability to cope');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','acute','Overactivity');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','acute','Withdrawal');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','acute','Conduct problems');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','acute','Miscellaneous/Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','post_trauma','Reliving');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','post_trauma','Numbness');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','post_trauma','Emotional blunting');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','post_trauma','Avoiding');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','post_trauma','Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','other','Unreal feeling of self');
insert into prism.symptom(category, sub_category, symptom_name) values ('trauma_related_symptoms','other','Unreal feeling of others');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','symptom','Seizures (non-epileptic)');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','symptom','Motor deficit');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','symptom','Trance/possession');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','symptom','Fugue');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','symptom','Amnesia');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','symptom','Identity');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','symptom','Stupor');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','symptom','Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','stressors','Family');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','stressors','Interpersonal');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','stressors','Financial');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','stressors','Professional');
insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','stressors','Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','symptom','Pain');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','symptom','Skin sensation');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','symptom','GI symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','symptom','Sexual/menstrual');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','symptom','Autonomic');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','symptom','Cardiac/Respiratory');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','symptom','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','specific_symptom','Preoccupied with illness');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','specific_symptom','Repeated investigation');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','specific_symptom','Worried about loss of semen');
insert into prism.symptom(category, sub_category, symptom_name) values ('somatic_symptoms','specific_symptom','Worried that penis will retract');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sleep','Insomnia');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sleep','Hypersomnia');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sleep','Altered sleep/wake cycle');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sleep','Sleep walking/talking');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sleep','Sleep terror/nightmares');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sleep','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','appetite','Increased appetite');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','appetite','Decreased appetite');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','appetite','Carbohydrate craving');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','appetite','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sexual','Increased libido');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sexual','Decreased libido');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sexual','Erectile dysfunction');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sexual','Premature ejaculation');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sexual','Dyspareunia');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sexual','Paraphilias');
insert into prism.symptom(category, sub_category, symptom_name) values ('biological_symptoms','sexual','Others');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','cardiac','Hypertension');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','cardiac','Ischemic heart disease');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','cardiac','Arrhythmia');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','cardiac','Valvular heart disease');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','cardiac','Cardiac myopathy');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','respiratory','Asthma');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','respiratory','COPD');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','respiratory','Allergic bronchitis');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','respiratory','URTI');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','respiratory','LRTI');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','gastro_intestinal','Cirrhosis');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','gastro_intestinal','Portal hypertension');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','gastro_intestinal','Hepatitis');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','gastro_intestinal','Inflamatory bowel disease');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','gastro_intestinal','Gastric ulcer');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','gastro_intestinal','Pile/fissure/fistula');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','CVA-stroke');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','Parkinsons');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','Wilsons');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','Huntingtons');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','Drug induced EPS');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','Peripheral neuropathy');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','Encephalopathy');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','CNS infection');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','Tardive symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history1','neurological','Tics');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','endocrine','Diabetes mellitus');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','endocrine','Obesity');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','endocrine','Hypothyroidism');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','endocrine','Hyperthyroidism');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','endocrine','Cushings');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','endocrine','Addisons');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','endocrine','Acromegaly');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Malignancy');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Arthritis');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Connective tissue disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Psoriasis');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Atopic dermatitis');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Acne');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Vitiligo');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Renal dysfunction');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','HIV');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Tuberculosis');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Other systemic infection');
insert into prism.symptom(category, sub_category, symptom_name) values ('medical_history2','others','Tuberculosis');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_history','episode','Depression');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_history','episode','Mania');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_history','episode','Hypomania');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_history','episode','Schizophrenia');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_history','episode','Other psychosis');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_history','episode','Anxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_history','episode','OCD');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_history','episode','Somatoform');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_history','episode','Substance');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_a','Suspicious');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_a','Keeping grudges');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_a','Sensitive to setbacks');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_a','Emotionally cold');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_a','Indifferent/lack of pleasure');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_a','No close friends');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_a','Preoccupied with fantasy');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Callous/unconcerned');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Manipulative');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Irresponsible/Disregard to social norm');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Impulsivity/aggression');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Affective instability');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Borderline thinking');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Suicidal threats');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Multiple unstable relations');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Self dramatization');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_b','Inappropriate seductiveness');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_c','Perfectionism');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_c','Excessive caution');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_c','Preoccupied with detail');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_c','Tensed/Inability to relax');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_c','Anxious and avoid social situations');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_c','Being inept/inferior to others');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_c','Being subordinate');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_c','Allow others to make important decision');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','cluster_c','Helpless when alone');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Tremor');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Rigidity');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Bradykinesia');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Hypersalivation');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Tardive dyskinesia');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Dystonia');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Seizures');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Chorea');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Memory loss');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','neurological','Word finding difficulty');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','metabolic','Weight gain');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','metabolic','Glucose intolerance');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','metabolic','Hypertension');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','metabolic','Appetite change');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','metabolic','Dyslipidemia');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','metabolic','Hyperprolactinemia');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','metabolic','Vitamin B12 deficiency');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','metabolic','Dysphoria');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','psychiatric','Depression');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','psychiatric','OCD');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','psychiatric','Manic switch');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','psychiatric','Cognitive slowing');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','other_systemic','Hypothyroidism');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','other_systemic','Hyperthyroidism');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','other_systemic','Acne');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','other_systemic','Psoriasis');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','other_systemic','Renal impairment');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','other_systemic','Altered liver functions');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','other_systemic','Pancreatitis');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','non_specific','Gastritis');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','non_specific','Headache');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','non_specific','Agitation');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','non_specific','Decreased sleep');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment_side_effects','non_specific','Increased sleep');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','parent','Psychosis');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','parent','Bipolar');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','parent','Depression');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','parent','Substance use');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','parent','Suicide');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','parent','Anxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','parent','OCD');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','parent','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','sibling','Psychosis');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','sibling','Bipolar');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','sibling','Depression');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','sibling','Substance use');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','sibling','Suicide');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','sibling','Anxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','sibling','OCD');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','sibling','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','2nd_relative','Psychosis');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','2nd_relative','Bipolar');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','2nd_relative','Depression');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','2nd_relative','Substance use');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','2nd_relative','Suicide');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','2nd_relative','Anxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','2nd_relative','OCD');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_psychiatric','2nd_relative','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','parent','Cardiovascular');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','parent','Diabetes');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','parent','Hypertension');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','parent','Neurological');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','parent','Infections');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','parent','Asthma');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','parent','Endocrine');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','parent','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','sibling','Cardiovascular');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','sibling','Diabetes');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','sibling','Hypertension');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','sibling','Neurological');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','sibling','Infections');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','sibling','Asthma');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','sibling','Endocrine');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','sibling','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','2nd_relative','Cardiovascular');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','2nd_relative','Diabetes');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','2nd_relative','Hypertension');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','2nd_relative','Neurological');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','2nd_relative','Infections');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','2nd_relative','Asthma');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','2nd_relative','Endocrine');
insert into prism.symptom(category, sub_category, symptom_name) values ('family_history_medical','2nd_relative','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','developmental','Prenatal complications');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','developmental','Birth complications');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','developmental','Developmental delay');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','developmental','Febrile seizures');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','childhood','Nail biting');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','childhood','Thumb sucking');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','childhood','Conduct symptom');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','childhood','School refusal');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','childhood','Temper tantrums');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','childhood','Persistent enuresis');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','sexual','Masturbatory anxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','sexual','High risk sexual behaviour');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','sexual','Marital discord');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','sexual','Interpersonal difficulties');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','menstrual','Normal cycles');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','menstrual','Oligomenorrhea');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','menstrual','Amenorrhea');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','menstrual','Polymenorrhea');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','menstrual','Polymenorrhea');
insert into prism.symptom(category, sub_category, symptom_name) values ('personal_history','menstrual','Premenstrual dysphoria');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','psychological','Death of family/friend');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','psychological','Financial loss');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','psychological','Occupational (Job loss)');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','psychological','Migration');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','psychological','Interpersonal conflict');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','biological','Pregnancy');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','biological','Post partum');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','biological','Menopause');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','biological','Medical illness');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','biological','Infection');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','legal','Divorce');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','legal','Violence');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','legal','Absent');
insert into prism.symptom(category, sub_category, symptom_name) values ('stressors','legal','Other');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','type','Height');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','type','Weight');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','type','BMI');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','type','BP(mm/hg)');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','type','Pulse rate');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','general','Pallor');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','general','Icterus');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','general','Clubbing');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','general','Lymphadenopathy');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','general','Edema');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','general','Thyromegaly');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','general','Knuckle pigmentation');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','general','Nicotine stains');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','systemic','Murmurs');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','systemic','Crepitation');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','systemic','Rhonchi');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','systemic','Hepatosplenomegaly');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','systemic','Ascites');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination','systemic','Injuries');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','motor','Monoparesis');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','motor','Hemiparesis');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','motor','Paraparesis');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','motor','Tremors');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','motor','Choreo-athetosis');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','motor','Rigidity');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','motor','Dyskinesia');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','motor','Tics');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','motor','Dystonia');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','side','Right');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','side','Left');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','side','Bilateral');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','site','Upper limb');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','site','Lower limb');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','site','Facial');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','site','Oro-lingual');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','site','Trunk');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','language','Broca''s aphasia');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','language','Wernicke''s aphasia');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','language','Anomia');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','language','Global aphasia');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','others','Impaired consciousness');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','others','Disorientation');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','others','Meningeal signs');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','others','Cerebellar signs');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','others','Dysarthria');
insert into prism.symptom(category, sub_category, symptom_name) values ('physical_examination_neurological','others','Frontal release signs');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','rapport','Easily established');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','rapport','Guarded');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','rapport','Poor');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','rapport','Hostile');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','psychomotor_activity','Agitation');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','psychomotor_activity','Retardation');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','psychomotor_activity','Increased');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','speech','Increased');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','speech','Decreased');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','speech','Irrelevant');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','speech','Incoherent');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','thought','Derailment');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','thought','Flight of ideas');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','thought','Circumstantiality');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','thought','Neologism');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','thought','Poverty of content');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','mood','Depressed');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','mood','Euphoric');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','mood','Irritable');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','mood','Anxious');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','mood','Fearful');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','mood','Perplexed');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','suicide','Ideas');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','suicide','Attempt');
insert into prism.symptom(category, sub_category, symptom_name) values ('additional_mental_status_examination','suicide','Death wishes');
insert into prism.symptom(category, sub_category, symptom_name) values ('intellectual_functioning','developmental_milestones','Global delay');
insert into prism.symptom(category, sub_category, symptom_name) values ('intellectual_functioning','developmental_milestones','Specific delay in speech & language');
insert into prism.symptom(category, sub_category, symptom_name) values ('intellectual_functioning','developmental_milestones','Specific delay in motor skills');
insert into prism.symptom(category, sub_category, symptom_name) values ('intellectual_functioning','developmental_milestones','Specific delay in social milestones');
insert into prism.symptom(category, sub_category, symptom_name) values ('intellectual_functioning','developmental_milestones','Poor academic skills');
insert into prism.symptom(category, sub_category, symptom_name) values ('intellectual_functioning','intellectual_deficiencies','Minimal problems in Independent living and social skills with academic difficulties');
insert into prism.symptom(category, sub_category, symptom_name) values ('intellectual_functioning','intellectual_deficiencies','Significant problems in independent living and social skills with poor academic performance');
insert into prism.symptom(category, sub_category, symptom_name) values ('intellectual_functioning','intellectual_deficiencies','Needs constant supervision for living & social skills and very poor academic performance');
insert into prism.symptom(category, sub_category, symptom_name) values ('intellectual_functioning','intellectual_deficiencies','Completely dependent for living & social skills and impairment in communication abilities');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','autistic','Impaired social interaction');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','autistic','inadequate appreciation of social or emotional cues');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','autistic','poor use of social skills');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','autistic','lack of social and emotional reciprocity');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','autistic','stereotypic behaviors');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','speech_language_symptoms','Receptive  Language delay');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','speech_language_symptoms','Expressive language delay');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','speech_language_symptoms','articulation difficulties');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','speech_language_symptoms','acquired aphasia with epilepsy');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','scholastic_performance','Reading difficulties');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','scholastic_performance','Spelling difficulties');
insert into prism.symptom(category, sub_category, symptom_name) values ('social_language_developmental_symptoms','scholastic_performance','Arithmetic difficulties');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','hyperkinetic','Hyperactivity');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','hyperkinetic','Inattention');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','hyperkinetic','Impulsivity');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','hyperkinetic','Inability to complete tasks');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','conduct_oppositional','repetitive aggressive/ destructive behavior');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','conduct_oppositional','Stealing/lying');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','conduct_oppositional','Truancy from school');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','conduct_oppositional','Disobeying rules/social norms');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','conduct_oppositional','Defiant/disobeying/provocative behavior');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','conduct_oppositional','Hyperactivity');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','emotional','Separation anxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','emotional','social anxiety/ mutism');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','emotional','sibling rivalry');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','other','Motor tics');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','other','Vocal tics');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','other','Stuttering');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','other','Pica');
insert into prism.symptom(category, sub_category, symptom_name) values ('behvioral_symptoms_childhood','other','Enuresis');

insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','dependence','Craving');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','dependence','Tolerance');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','dependence','Withdrawal');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','dependence','Salience');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','dependence','Use Despite Harm');

insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','complication','Convulsions');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','complication','Amnesia');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','complication','Confabulation');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','complication','Cognitive Decline');

insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','usage','Currently abstinent');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use_auto','usage','Currently active use');


insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','paranoid personality');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','schizoid personality');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','emotionally unstable personality borderline type');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','emotionally unstable personality impulsive type');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','dissocial personality disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','histrionic personality disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','anxious avoidant personality');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','anankastic personality');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','dependent personality');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','personality','mixed personality');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','somatoform','Persistent somatoform pain disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','somatoform','hypochondriacal disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','somatoform','Somatization disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','somatoform','Undifferentiated somatoform disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','somatoform','Somatoform autonomic dysfunction');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','somatoform','Dhat syndrome');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Dissociative convulsions');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Dissociative stupor');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Trance and posession disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Dissociative motor disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Dissociative anesthesia or sensory loss');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Dissociative amnesia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Dissociative fugue');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Multiple personality disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Ganser''s syndrome');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','dissociative','Mixed dissociative');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','trauma_related','acute stress reaction');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','trauma_related','post traumatic stress disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','trauma_related','Depersonalization disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','trauma_related','Derealization disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','trauma_related','adjustment disorder, depressive type');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','trauma_related','adjustment disorder, mixed anxiety and depression type');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','OCD - mixed');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','OCD - predominant obsessions');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','OCD- predominant compulsions');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Body dysmorphic disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Trichotillomana');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Pathological gambling');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Kleptomania');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Pyromania');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Compulsive shopping');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Internet addiction');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Bulimia nervosa');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Anorexia nervosa');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Atypical anorexia nervosa');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','oc_spectrum','Atypical bulimia nervosa');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','anxiety','Agoraphobia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','anxiety','Social phobia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','anxiety','Specific phobia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','anxiety','Panic disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','anxiety','Generalized anxiety disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','anxiety','Mixed anxiety and depressive disorder');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Hypomania');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Mania without psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Mania with psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Mixed episode');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','BPAD, hypomania');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','BPAD, mania without psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','BPAD, mania with psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','BPAD, mild-moderate depression');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','BPAD, severe depression without psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','BPAD, severe depression with psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','BPAD, mixed episode');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','BPAD, remission');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Mild depressive episode');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Moderate depressive episode');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Severe depressive episode without psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Severe depressive episode with psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','RDD, mild depression');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','RDD, moderate depression');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','RDD, severe depression without psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','RDD, severe depression with psychotic symptoms');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Cyclothymia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','subthreshold depression (minor depression)');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','subthreshold hypomania');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','mood','Dysthymia');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','psychotic','schizotypal disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','psychotic','persistent delusional disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','psychotic','acute and transient psychotic disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','psychotic','induced delusional disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','psychotic','Post schizophrenia depression');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','mental retardation');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','dyslexia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','expressive or receptive language disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','speech articulation disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','childhood autism');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','PDD NOS');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','asperger''s disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','Hyperkinetic disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','conduct disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','oppositonal defiant disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','separation anxiety disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','sibling rivalry disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','elective mutism');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','tic disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','non organic eneuresis');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','stuttering');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','child','pica of infancy and childhood');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','alzheimers dementia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','vascular dementia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','fronto-temporal dementia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','Mild cognitive impairment');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','dementia in Huntingtons disease');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','dementia in Parkinsons disease');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','dementia in HIV disease');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','organic amnestic syndrome');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','delirium');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','organic psychotic disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','organic mood disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','organic anxiety disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','organic personality disorder');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','post encephalitic syndrome');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','Post concussional syndrome');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','Age related cognitive decline');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','organic','Dementia in Creutzfeldt Jakob disease');

insert into prism.symptom(category, sub_category, symptom_name) values ('severity_functioning','cisf','1 - Indefinite symptoms with Premorbid functioning levels');
insert into prism.symptom(category, sub_category, symptom_name) values ('severity_functioning','cisf','2 – Established symptoms with minimal disruption in personal care, social relations, or work');
insert into prism.symptom(category, sub_category, symptom_name) values ('severity_functioning','cisf','3 – Definite symptomatology with moderate dysfunction in personal care, social relations, or work');
insert into prism.symptom(category, sub_category, symptom_name) values ('severity_functioning','cisf','4 – Marked symptoms with severe dysfunction in personal care, social relations, or work (include loss of job, hospitalisation, aggression, suicidality)');

insert into prism.symptom(category, sub_category, symptom_name) values ('mood_symptoms','disruption','Symptoms not causing dysfunction');

insert into prism.symptom(category, sub_category, symptom_name) values ('past_treatment_history','past_treatment_history','1');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_treatment_history','past_treatment_history','2');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_treatment_history','past_treatment_history','3');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_treatment_history','past_treatment_history','4');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_treatment_history','past_treatment_history','5');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_treatment_history','past_treatment_history','6');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_treatment_history','past_treatment_history','7');
insert into prism.symptom(category, sub_category, symptom_name) values ('past_treatment_history','past_treatment_history','8');

insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','psychotic','schizophrenia');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','psychotic','schizoaffective disorder, depressive type');
insert into prism.symptom(category, sub_category, symptom_name) values ('diagnosis','psychotic','schizoaffective disorder, bipolar type');


insert into prism.symptom(category, sub_category, symptom_name) values ('dissociative_symptoms','symptom','Sensory');

insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','adjusted','Well adjusted');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','adjusted','Poorly adjusted');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','adjusted','Trait');
insert into prism.symptom(category, sub_category, symptom_name) values ('premorbid_personality','adjusted','Disorder');


insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','substance_use','Anticraving drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','substance_use','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','substance_use','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','substance_use','Mood stabilisers');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','substance_use','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','psychotic','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','psychotic','Anticholinergics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','psychotic','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','psychotic','Antipsychotics depot long acting');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','psychotic','Antipsychotics injectable short acting');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','psychotic','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Bipolar disorder diagnosis','Mood stabilisers');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Bipolar disorder diagnosis','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Bipolar disorder diagnosis','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Bipolar disorder diagnosis','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Depression diagnosis','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Depression diagnosis','Mood stabilisers');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Depression diagnosis','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Depression diagnosis','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','anxiety','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','anxiety','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','OC spectrum disorder','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','OC spectrum disorder','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','OC spectrum disorder','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','stress and adjustment disorder diagnosis','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','stress and adjustment disorder diagnosis','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','dissociative','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','dissociative','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','somatoform','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','somatoform','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','eating sleep sexual impulse dyscontrol disorder','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','eating sleep sexual impulse dyscontrol disorder','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','eating sleep sexual impulse dyscontrol disorder','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','eating sleep sexual impulse dyscontrol disorder','Miscellaneous');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','personality disorder','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','personality disorder','Mood stabilisers');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','personality disorder','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','child','Anti ADHD drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','child','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','child','Mood stabilisers');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','child','Antidepressants & Antianxiety drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','dementia','Antidementia drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','dementia','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','dementia','Antidepressants & Antianxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','dementia','Antiepileptics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','dementia','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','dementia','Antiparkinsonian drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','dementia','Mood stabilisers');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','frontotemporal','Antidepressants & Antianxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','frontotemporal','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','frontotemporal','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Other Organic Disorder','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Other Organic Disorder','Antidepressants & Antianxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Other Organic Disorder','Antiepileptics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Other Organic Disorder','BZD & Sedatives');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Other Organic Disorder','Antidementia drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Other Organic Disorder','Antiparkinsonian drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Other Organic Disorder','Mood stabilisers');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Dementia Of Parkinson','Antiparkinsonian drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Dementia Of Parkinson','Antidepressants & Antianxiety');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Dementia Of Parkinson','Antidementia drugs');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Dementia Of Parkinson','Antipsychotics');
insert into prism.symptom(category, sub_category, symptom_name) values ('treatment','Dementia Of Parkinson','BZD & Sedatives');


insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Risperidone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Olanzapine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Quetiapine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Aripiprazole');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Ziprasidone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Clozapine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Iloperidone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Paliperidone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Asenapine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Lurasidone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Blonanserin');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Amisulpiride');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Levosulpride');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Haloperidol');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Trifluperazine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Chlorpromazine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Pimozide');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Thioridazine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Flupenthixol');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','Risperidone 2mg + Trihexyphenidyl2 mg');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics','risperidone 3 mg + Trihexyphenidyl 2 mg');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot long acting','Flufenazine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot long acting','Flupenthixol');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot long acting','Haloperidol');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot long acting','Risperidone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot long acting','Paliperidone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot long acting','Zuclopenthixol');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot short acting','Haloperidol');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot short acting','Olanzapine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot short acting','Ziprasidone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antipsychotics depot short acting','Zuclopenthixol');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticholinergics','Trihexyphenidyl');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticholinergics','Procyclidine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticholinergics','Promethazine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticholinergics','Glycopyrrolate');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticholinergics','Ipratropium bromide');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticholinergics','Tetrabenazine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Mood stabilisers','Lithium');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Mood stabilisers','Sodium Valproate');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Mood stabilisers','Magnesium Valproate');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Mood stabilisers','Divalproex sodium');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Mood stabilisers','Carbamazepine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Mood stabilisers','Lamotrigene');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Mood stabilisers','Topiramate');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Mood stabilisers','Zonisamide');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Fluoxetine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Sertraline');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Paroxetine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Citalopram');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Escitalopram');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Venlafaxine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Desvenlafaxine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Duloxetine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Mirtazapine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Bupropion');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Imipramine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Amitryptilline');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Desipramine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Nortriptyline');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Agomelatine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Buspirone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Dosuelpin');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Milnacipran');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Melitracetan');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Moclobemide');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','Escitalopram 5 mg +  clonazepam 0.25mg');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','escitalopram 10 mg + clonazepam 0.5mg');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','escitalopram 20mg + clonazepam 0.5 mg');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidepressants & Antianxiety drugs','paroxetine 12.5 mg + clonazepam 0.25mg');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Diazepam');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Lorazepam');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Oxazepam');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Clonazepam');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Alprazolam');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Chlordiazepoxide');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Nitrazepam');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Zolpidem');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Melatonin');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','Eszopiclone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','BZD & Sedatives','clonazepam 0.25 mg + propranolol 10mg');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anti ADHD drugs','Methylphenidate');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anti ADHD drugs','Atomoxetine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anti ADHD drugs','Modafinil');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anti ADHD drugs','LysDexAmphetamine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anti ADHD drugs','Bupropion');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anti ADHD drugs','Clonidine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidementia drugs','Donepezil');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidementia drugs','Rivastigmine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidementia drugs','Memantine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidementia drugs','Galantamine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidementia drugs','donepezil 5 mg + memantine 5 mg');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antidementia drugs','donepezil 5 mg + memantine 10 mg');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiparkinsonian drugs','Ropinirole');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiparkinsonian drugs','Syndopa');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiparkinsonian drugs','Pramipexole');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiparkinsonian drugs','Bromocriptine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiparkinsonian drugs','Amantadine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiparkinsonian drugs','Seligiline');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiepileptics','Phenytoin');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiepileptics','Phenobarbitone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiepileptics','Sodium valproate');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiepileptics','Carbamazepine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiepileptics','Levetiracetam');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiepileptics','Topiramate');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiepileptics','Zonisamide');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Antiepileptics','Clobazam');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','SAMe');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','Ginkobiloba');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','Dapoxetine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','Sildenafil');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','tadalafil');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','Vit B12');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','Vit B complex');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','Vit B1 thiamine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','Folic acid');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','Gabapentin');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','pregabalin');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Miscellaneous','thyroxine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','Disulfiram');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','Naltrexone');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','Acamprosate');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','Topiramate');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','Baclofen');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','Ondansetron');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','Vareniciline');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','Nicotine replacement');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','buprenorphine');
insert into prism.symptom(category, sub_category, symptom_name) values ('drug_groups','Anticraving drugs','buprenorphine');

insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Tics');
insert into prism.symptom(category, sub_category, symptom_name) values ('organic_symptoms','organic_symptoms','Delirium');
insert into prism.symptom(category, sub_category, symptom_name) values ('substance_use','substance','Benzodiazepine');
