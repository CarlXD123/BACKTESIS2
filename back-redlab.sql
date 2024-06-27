PGDMP         ,                |            SL_RedLab_Dev    13.9    15.1 B   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    SL_RedLab_Dev    DATABASE     �   CREATE DATABASE "SL_RedLab_Dev" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE "SL_RedLab_Dev";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    16395 
   Agreements    TABLE     �  CREATE TABLE public."Agreements" (
    id integer NOT NULL,
    name character varying(255),
    address character varying(255),
    ruc character varying(255),
    email character varying(255),
    "tlfNumber" character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "TypeAgreementId" integer
);
     DROP TABLE public."Agreements";
       public         heap    postgres    false    4            �            1259    16401    Agreements_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Agreements_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Agreements_id_seq";
       public          postgres    false    4    200            �           0    0    Agreements_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Agreements_id_seq" OWNED BY public."Agreements".id;
          public          postgres    false    201                       1259    19224    Ambs    TABLE     �   CREATE TABLE public."Ambs" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Ambs";
       public         heap    postgres    false    4            
           1259    19051    ApilisBrands    TABLE     .  CREATE TABLE public."ApilisBrands" (
    id integer NOT NULL,
    "nameBrand" character varying(100) NOT NULL,
    "Descr" character varying(200),
    "codBaja" integer DEFAULT 0,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "Color" character varying(200)
);
 "   DROP TABLE public."ApilisBrands";
       public         heap    postgres    false    4            	           1259    19049    ApilisBrands_id_seq    SEQUENCE     �   ALTER TABLE public."ApilisBrands" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ApilisBrands_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    266                       1259    19307    ApilisMatchDataDetails    TABLE     �  CREATE TABLE public."ApilisMatchDataDetails" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "codBaja" integer DEFAULT 0,
    "idApilisMatchData" integer NOT NULL,
    "idExamenValue" integer NOT NULL,
    fields character varying(150),
    priority integer NOT NULL,
    "createdBy" character varying(100),
    "modifiedBy" character varying(100)
);
 ,   DROP TABLE public."ApilisMatchDataDetails";
       public         heap    postgres    false    4                       1259    19323    ApilisMatchDataDetails_id_seq    SEQUENCE     �   ALTER TABLE public."ApilisMatchDataDetails" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ApilisMatchDataDetails_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    274                       1259    19097    ApilisMatchDatas    TABLE     E  CREATE TABLE public."ApilisMatchDatas" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "codBaja" integer DEFAULT 0,
    "idExamen" integer NOT NULL,
    "idModel" integer NOT NULL,
    "Color" character varying(200),
    "ColorAle" character varying(200)
);
 &   DROP TABLE public."ApilisMatchDatas";
       public         heap    postgres    false    4                       1259    19247    ApilisMatchDatas_id_seq    SEQUENCE     �   ALTER TABLE public."ApilisMatchDatas" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ApilisMatchDatas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    267                       1259    19136    ApilisModels    TABLE     !  CREATE TABLE public."ApilisModels" (
    id integer NOT NULL,
    "nameModel" character varying(200) NOT NULL,
    "codBaja" integer DEFAULT 0,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "Color" character varying(200),
    "idBrand" integer
);
 "   DROP TABLE public."ApilisModels";
       public         heap    postgres    false    4                       1259    19152    ApilisModels_id_seq    SEQUENCE     �   ALTER TABLE public."ApilisModels" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ApilisModels_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    268                       1259    19327    ApilisMonitors    TABLE       CREATE TABLE public."ApilisMonitors" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "codBaja" integer DEFAULT 0,
    "codeApi" character varying(25) NOT NULL,
    "idPatient" integer NOT NULL,
    "idExam" integer NOT NULL,
    "processedAt" timestamp with time zone,
    field01 character varying(100),
    val01 character varying(100),
    val02 character varying(100),
    val03 character varying(100),
    val04 character varying(100),
    val05 character varying(100),
    val06 character varying(100),
    val07 character varying(100),
    val08 character varying(100),
    val09 character varying(100),
    val10 character varying(100),
    val11 character varying(100),
    val12 character varying(100),
    val13 character varying(100),
    val14 character varying(100),
    val15 character varying(100),
    val16 character varying(100),
    val17 character varying(100),
    val18 character varying(100),
    val19 character varying(100),
    val20 character varying(100),
    val21 character varying(100),
    val22 character varying(100),
    val23 character varying(100),
    val24 character varying(100),
    val25 character varying(100),
    val26 character varying(100),
    val27 character varying(100),
    val28 character varying(100),
    val29 character varying(100),
    val30 character varying(100),
    val31 character varying(100),
    val32 character varying(100),
    val33 character varying(100),
    val34 character varying(100),
    val35 character varying(100),
    val36 character varying(100),
    val37 character varying(100),
    val38 character varying(100),
    val39 character varying(100),
    val40 character varying(100),
    obse character varying(150),
    status character varying(1)
);
 $   DROP TABLE public."ApilisMonitors";
       public         heap    postgres    false    4                       1259    19347    ApilisMonitors_id_seq    SEQUENCE     �   ALTER TABLE public."ApilisMonitors" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ApilisMonitors_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    276    4                       1259    19183    ApilisPaths    TABLE     k  CREATE TABLE public."ApilisPaths" (
    id integer NOT NULL,
    env character varying(50) NOT NULL,
    "Api" character varying(200) NOT NULL,
    "codBaja" integer DEFAULT 0,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "user" character varying(100) NOT NULL,
    passw character varying(40),
    "idModel" integer
);
 !   DROP TABLE public."ApilisPaths";
       public         heap    postgres    false    4                       1259    19222    ApilisPaths_id_seq    SEQUENCE     �   ALTER TABLE public."ApilisPaths" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."ApilisPaths_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    270            �            1259    16403    AppointmentDetails    TABLE     1  CREATE TABLE public."AppointmentDetails" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "AppointmentId" integer,
    "ExaminationId" integer,
    "idMuestra" character varying(100),
    result character varying(255)
);
 (   DROP TABLE public."AppointmentDetails";
       public         heap    postgres    false    4            �            1259    16406    AppointmentDetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AppointmentDetails_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."AppointmentDetails_id_seq";
       public          postgres    false    4    202            �           0    0    AppointmentDetails_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."AppointmentDetails_id_seq" OWNED BY public."AppointmentDetails".id;
          public          postgres    false    203            �            1259    16408    Appointments    TABLE       CREATE TABLE public."Appointments" (
    id integer NOT NULL,
    code character varying(255),
    "time" time without time zone DEFAULT '00:00:00'::time without time zone,
    "dateAppointment" date,
    "totalPrice" double precision,
    discount double precision,
    "finalPrice" double precision,
    status character varying(1) DEFAULT 'S'::character varying,
    result character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ClientId" integer,
    "ResponsibleId" integer,
    "PriceListId" integer,
    "HeadquarterId" integer,
    "EmployeeId" integer,
    "RefererId" integer,
    "refererCode" character varying(40),
    "DoctorId" integer,
    "doctorNotes" character varying(255)
);
 "   DROP TABLE public."Appointments";
       public         heap    postgres    false    4            �           0    0 !   COLUMN "Appointments"."RefererId"    COMMENT     ]   COMMENT ON COLUMN public."Appointments"."RefererId" IS 'campo que enlaza la tabla Referers';
          public          postgres    false    204            �            1259    16416    Appointments_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Appointments_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Appointments_id_seq";
       public          postgres    false    4    204            �           0    0    Appointments_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Appointments_id_seq" OWNED BY public."Appointments".id;
          public          postgres    false    205            �            1259    16418 
   Categories    TABLE     �   CREATE TABLE public."Categories" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(2000),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."Categories";
       public         heap    postgres    false    4            �            1259    16424    Categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Categories_id_seq";
       public          postgres    false    4    206            �           0    0    Categories_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Categories_id_seq" OWNED BY public."Categories".id;
          public          postgres    false    207            �            1259    16426    Clients    TABLE     >  CREATE TABLE public."Clients" (
    id integer NOT NULL,
    dni character varying(255),
    "birthDate" date,
    code character varying(255),
    "historyNumber" character varying(255),
    name character varying(255),
    "lastNameP" character varying(255),
    "lastNameM" character varying(255),
    "phoneNumber" character varying(255),
    "tlfNumber" character varying(255),
    gender character varying(1),
    "civilStatus" character varying(1),
    nationality character varying(255),
    address character varying(255),
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "UserId" integer,
    "TypeDocId" integer,
    "DistrictId" character varying(255),
    edad integer,
    "NationId" integer
);
    DROP TABLE public."Clients";
       public         heap    postgres    false    4            �            1259    16433    Clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Clients_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Clients_id_seq";
       public          postgres    false    4    208            �           0    0    Clients_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Clients_id_seq" OWNED BY public."Clients".id;
          public          postgres    false    209            �            1259    16435 	   Districts    TABLE     �   CREATE TABLE public."Districts" (
    id character varying(255) NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ProvinceId" character varying(255)
);
    DROP TABLE public."Districts";
       public         heap    postgres    false    4            �            1259    16441    Doctors    TABLE     �   CREATE TABLE public."Doctors" (
    id integer NOT NULL,
    "doctorName" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Doctors";
       public         heap    postgres    false    4            �            1259    16444    Doctors_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Doctors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Doctors_id_seq";
       public          postgres    false    4    211            �           0    0    Doctors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Doctors_id_seq" OWNED BY public."Doctors".id;
          public          postgres    false    212            �            1259    16446 	   Employees    TABLE     ]  CREATE TABLE public."Employees" (
    id integer NOT NULL,
    dni character varying(255),
    "admissionDate" date,
    "birthDate" date,
    name character varying(255),
    "lastNameP" character varying(255),
    "lastNameM" character varying(255),
    gender character varying(1),
    "civilStatus" character varying(1),
    "phoneNumber" character varying(255),
    "tlfNumber" character varying(255),
    "digitalSignatureUrl" character varying(500),
    "tuitionNumber" character varying(255),
    "tuitionNumber2" character varying(255),
    address character varying(500),
    "referencePoint" character varying(500),
    "typeDirection" character varying(1),
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "CategoryId" integer,
    "DistrictId" character varying(255),
    "UserId" integer,
    "TypeDocId" integer,
    "TypeEmployeeId" integer,
    "SpecialityId" integer,
    "ProfessionId" integer,
    "TuitionId" integer,
    "Tuition2Id" integer,
    "HeadquarterId" integer
);
    DROP TABLE public."Employees";
       public         heap    postgres    false    4            �            1259    16453    Employees_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Employees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Employees_id_seq";
       public          postgres    false    4    213            �           0    0    Employees_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Employees_id_seq" OWNED BY public."Employees".id;
          public          postgres    false    214            �            1259    16455    ExaminationDetails    TABLE     L  CREATE TABLE public."ExaminationDetails" (
    value character varying(255),
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "AppointmentDetailId" integer NOT NULL,
    "ExaminationValueId" integer NOT NULL
);
 (   DROP TABLE public."ExaminationDetails";
       public         heap    postgres    false    4            �            1259    16459    ExaminationGroups    TABLE     @  CREATE TABLE public."ExaminationGroups" (
    id integer NOT NULL,
    name character varying(255),
    "countEV" integer,
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ExaminationId" integer
);
 '   DROP TABLE public."ExaminationGroups";
       public         heap    postgres    false    4            �            1259    16463    ExaminationGroups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ExaminationGroups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."ExaminationGroups_id_seq";
       public          postgres    false    216    4            �           0    0    ExaminationGroups_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ExaminationGroups_id_seq" OWNED BY public."ExaminationGroups".id;
          public          postgres    false    217            �            1259    16465    ExaminationPrices    TABLE     �   CREATE TABLE public."ExaminationPrices" (
    price double precision,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ExaminationId" integer NOT NULL,
    "PriceListId" integer NOT NULL
);
 '   DROP TABLE public."ExaminationPrices";
       public         heap    postgres    false    4            �            1259    16468    ExaminationReferenceValues    TABLE       CREATE TABLE public."ExaminationReferenceValues" (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ExaminationValueId" integer,
    "ExaminationId" integer
);
 0   DROP TABLE public."ExaminationReferenceValues";
       public         heap    postgres    false    4            �            1259    16471 !   ExaminationReferenceValues_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ExaminationReferenceValues_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."ExaminationReferenceValues_id_seq";
       public          postgres    false    4    219            �           0    0 !   ExaminationReferenceValues_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."ExaminationReferenceValues_id_seq" OWNED BY public."ExaminationReferenceValues".id;
          public          postgres    false    220            �            1259    16473    ExaminationValues    TABLE     �  CREATE TABLE public."ExaminationValues" (
    id integer NOT NULL,
    name character varying(255),
    "countVR" integer,
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ExaminationGroupId" integer,
    "MethodId" integer,
    "UnitId" integer,
    "countVR2" character varying(255)
);
 '   DROP TABLE public."ExaminationValues";
       public         heap    postgres    false    4            �            1259    16477    ExaminationValues_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ExaminationValues_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."ExaminationValues_id_seq";
       public          postgres    false    4    221            �           0    0    ExaminationValues_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."ExaminationValues_id_seq" OWNED BY public."ExaminationValues".id;
          public          postgres    false    222            �            1259    16479    Examinations    TABLE     �  CREATE TABLE public."Examinations" (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    indications character varying(3000),
    "typeSample" character varying(255),
    volume character varying(255),
    supplies character varying(255),
    "storageTemperature" character varying(255),
    "fastingConditions" character varying(255),
    "runFrequency" character varying(255),
    "processTime" character varying(255),
    "reportTime" character varying(255),
    "countEG" character varying(255),
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ServiceId" integer
);
 "   DROP TABLE public."Examinations";
       public         heap    postgres    false    4            �            1259    16486    Examinations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Examinations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Examinations_id_seq";
       public          postgres    false    4    223            �           0    0    Examinations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Examinations_id_seq" OWNED BY public."Examinations".id;
          public          postgres    false    224            �            1259    16488 	   Functions    TABLE     �  CREATE TABLE public."Functions" (
    id integer NOT NULL,
    title character varying(255),
    type character varying(255),
    parent_id integer,
    url character varying(255),
    icon character varying(255),
    "typeApplication" character varying(1) DEFAULT 'I'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Functions";
       public         heap    postgres    false    4            �            1259    16495    Functions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Functions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Functions_id_seq";
       public          postgres    false    225    4            �           0    0    Functions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Functions_id_seq" OWNED BY public."Functions".id;
          public          postgres    false    226            �            1259    16497    Headquarters    TABLE     �  CREATE TABLE public."Headquarters" (
    id integer NOT NULL,
    name character varying(255),
    address character varying(255),
    "tlfNumber" character varying(255),
    email character varying(255),
    "urlImage" character varying(2000) DEFAULT 'http://localhost:8080/public/imgs/headquarter/dark-material-bg.jpg'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Headquarters";
       public         heap    postgres    false    4            �            1259    16504    Headquarters_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Headquarters_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Headquarters_id_seq";
       public          postgres    false    227    4            �           0    0    Headquarters_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Headquarters_id_seq" OWNED BY public."Headquarters".id;
          public          postgres    false    228            �            1259    16506    Methods    TABLE     �   CREATE TABLE public."Methods" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Methods";
       public         heap    postgres    false    4            �            1259    16512    Methods_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Methods_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Methods_id_seq";
       public          postgres    false    4    229            �           0    0    Methods_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Methods_id_seq" OWNED BY public."Methods".id;
          public          postgres    false    230                       1259    17813    Nations_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Nations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 '   DROP SEQUENCE public."Nations_id_seq";
       public          postgres    false    4                       1259    17805    Nations    TABLE       CREATE TABLE public."Nations" (
    id integer DEFAULT nextval('public."Nations_id_seq"'::regclass) NOT NULL,
    name character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Nations";
       public         heap    postgres    false    264    4            �            1259    16514 
   PriceLists    TABLE        CREATE TABLE public."PriceLists" (
    id integer NOT NULL,
    name character varying(255),
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "AgreementId" integer
);
     DROP TABLE public."PriceLists";
       public         heap    postgres    false    4            �            1259    16518    PriceLists_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PriceLists_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."PriceLists_id_seq";
       public          postgres    false    4    231            �           0    0    PriceLists_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."PriceLists_id_seq" OWNED BY public."PriceLists".id;
          public          postgres    false    232            �            1259    16520    Professions    TABLE     �   CREATE TABLE public."Professions" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(2000),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 !   DROP TABLE public."Professions";
       public         heap    postgres    false    4            �            1259    16526    Professions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Professions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Professions_id_seq";
       public          postgres    false    4    233            �           0    0    Professions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Professions_id_seq" OWNED BY public."Professions".id;
          public          postgres    false    234            �            1259    16528 	   Provinces    TABLE     �   CREATE TABLE public."Provinces" (
    id character varying(255) NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "RegionId" character varying(255)
);
    DROP TABLE public."Provinces";
       public         heap    postgres    false    4            �            1259    16534    ReferenceValues    TABLE     �   CREATE TABLE public."ReferenceValues" (
    id integer NOT NULL,
    name character varying(255),
    unit character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 %   DROP TABLE public."ReferenceValues";
       public         heap    postgres    false    4            �            1259    16540    ReferenceValues_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ReferenceValues_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."ReferenceValues_id_seq";
       public          postgres    false    4    236            �           0    0    ReferenceValues_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."ReferenceValues_id_seq" OWNED BY public."ReferenceValues".id;
          public          postgres    false    237            �            1259    16542    Referers    TABLE     �   CREATE TABLE public."Referers" (
    id integer NOT NULL,
    "refererName" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Referers";
       public         heap    postgres    false    4            �            1259    16545    Referers_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Referers_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Referers_id_seq";
       public          postgres    false    4    238            �           0    0    Referers_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Referers_id_seq" OWNED BY public."Referers".id;
          public          postgres    false    239            �            1259    16547    Regions    TABLE     �   CREATE TABLE public."Regions" (
    id character varying(255) NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Regions";
       public         heap    postgres    false    4            �            1259    16553    RoleFunctions    TABLE     d  CREATE TABLE public."RoleFunctions" (
    "canView" boolean DEFAULT true,
    "canEdit" boolean DEFAULT true,
    "canDelete" boolean DEFAULT true,
    "canCreate" boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "FunctionId" integer NOT NULL,
    "RoleId" integer NOT NULL
);
 #   DROP TABLE public."RoleFunctions";
       public         heap    postgres    false    4            �            1259    16560    Roles    TABLE     (  CREATE TABLE public."Roles" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Roles";
       public         heap    postgres    false    4            �            1259    16567    Roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Roles_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Roles_id_seq";
       public          postgres    false    4    242            �           0    0    Roles_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Roles_id_seq" OWNED BY public."Roles".id;
          public          postgres    false    243            �            1259    16569    Services    TABLE     �   CREATE TABLE public."Services" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Services";
       public         heap    postgres    false    4            �            1259    16575    Services_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Services_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Services_id_seq";
       public          postgres    false    4    244            �           0    0    Services_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Services_id_seq" OWNED BY public."Services".id;
          public          postgres    false    245            �            1259    16577    Specialities    TABLE     �   CREATE TABLE public."Specialities" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(2000),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."Specialities";
       public         heap    postgres    false    4            �            1259    16583    Specialities_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Specialities_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Specialities_id_seq";
       public          postgres    false    4    246            �           0    0    Specialities_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Specialities_id_seq" OWNED BY public."Specialities".id;
          public          postgres    false    247            �            1259    16585    Tokens    TABLE     �  CREATE TABLE public."Tokens" (
    id integer NOT NULL,
    hash character varying(255),
    expiration_date timestamp with time zone DEFAULT '2021-11-22 09:30:48.661-05'::timestamp with time zone,
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "UserId" integer
);
    DROP TABLE public."Tokens";
       public         heap    postgres    false    4            �            1259    16590    Tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tokens_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Tokens_id_seq";
       public          postgres    false    4    248            �           0    0    Tokens_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Tokens_id_seq" OWNED BY public."Tokens".id;
          public          postgres    false    249            �            1259    16592    Tuitions    TABLE     �   CREATE TABLE public."Tuitions" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(2000),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Tuitions";
       public         heap    postgres    false    4            �            1259    16598    Tuitions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Tuitions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Tuitions_id_seq";
       public          postgres    false    4    250            �           0    0    Tuitions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Tuitions_id_seq" OWNED BY public."Tuitions".id;
          public          postgres    false    251            �            1259    16600    TypeAgreements    TABLE     �   CREATE TABLE public."TypeAgreements" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(2000),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 $   DROP TABLE public."TypeAgreements";
       public         heap    postgres    false    4            �            1259    16606    TypeAgreements_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TypeAgreements_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."TypeAgreements_id_seq";
       public          postgres    false    4    252            �           0    0    TypeAgreements_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."TypeAgreements_id_seq" OWNED BY public."TypeAgreements".id;
          public          postgres    false    253            �            1259    16608    TypeDocs    TABLE       CREATE TABLE public."TypeDocs" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(2000),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    description2 character varying(255)
);
    DROP TABLE public."TypeDocs";
       public         heap    postgres    false    4            �            1259    16614    TypeDocs_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TypeDocs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."TypeDocs_id_seq";
       public          postgres    false    4    254            �           0    0    TypeDocs_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."TypeDocs_id_seq" OWNED BY public."TypeDocs".id;
          public          postgres    false    255                        1259    16616    TypeEmployees    TABLE     �   CREATE TABLE public."TypeEmployees" (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 #   DROP TABLE public."TypeEmployees";
       public         heap    postgres    false    4                       1259    16622    TypeEmployees_id_seq    SEQUENCE     �   CREATE SEQUENCE public."TypeEmployees_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."TypeEmployees_id_seq";
       public          postgres    false    4    256            �           0    0    TypeEmployees_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."TypeEmployees_id_seq" OWNED BY public."TypeEmployees".id;
          public          postgres    false    257                       1259    16624    Units    TABLE     �   CREATE TABLE public."Units" (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Units";
       public         heap    postgres    false    4                       1259    16627    Units_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Units_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Units_id_seq";
       public          postgres    false    4    258            �           0    0    Units_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Units_id_seq" OWNED BY public."Units".id;
          public          postgres    false    259                       1259    16629    UserRole    TABLE     �   CREATE TABLE public."UserRole" (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "RoleId" integer NOT NULL,
    "UserId" integer NOT NULL
);
    DROP TABLE public."UserRole";
       public         heap    postgres    false    4                       1259    16632    Users    TABLE     �  CREATE TABLE public."Users" (
    id integer NOT NULL,
    username character varying(255),
    password character varying(255),
    "urlAvatar" character varying(2000) DEFAULT 'http://localhost/public/imgs/avatar/avatardefault.png'::character varying,
    status character varying(1) DEFAULT 'A'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false    4                       1259    16640    Users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          postgres    false    4    261            �           0    0    Users_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;
          public          postgres    false    262            +           2604    16642    Agreements id    DEFAULT     r   ALTER TABLE ONLY public."Agreements" ALTER COLUMN id SET DEFAULT nextval('public."Agreements_id_seq"'::regclass);
 >   ALTER TABLE public."Agreements" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200            ,           2604    16643    AppointmentDetails id    DEFAULT     �   ALTER TABLE ONLY public."AppointmentDetails" ALTER COLUMN id SET DEFAULT nextval('public."AppointmentDetails_id_seq"'::regclass);
 F   ALTER TABLE public."AppointmentDetails" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            -           2604    16644    Appointments id    DEFAULT     v   ALTER TABLE ONLY public."Appointments" ALTER COLUMN id SET DEFAULT nextval('public."Appointments_id_seq"'::regclass);
 @   ALTER TABLE public."Appointments" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            0           2604    16645    Categories id    DEFAULT     r   ALTER TABLE ONLY public."Categories" ALTER COLUMN id SET DEFAULT nextval('public."Categories_id_seq"'::regclass);
 >   ALTER TABLE public."Categories" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            1           2604    16646 
   Clients id    DEFAULT     l   ALTER TABLE ONLY public."Clients" ALTER COLUMN id SET DEFAULT nextval('public."Clients_id_seq"'::regclass);
 ;   ALTER TABLE public."Clients" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            3           2604    16647 
   Doctors id    DEFAULT     l   ALTER TABLE ONLY public."Doctors" ALTER COLUMN id SET DEFAULT nextval('public."Doctors_id_seq"'::regclass);
 ;   ALTER TABLE public."Doctors" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            4           2604    16648    Employees id    DEFAULT     p   ALTER TABLE ONLY public."Employees" ALTER COLUMN id SET DEFAULT nextval('public."Employees_id_seq"'::regclass);
 =   ALTER TABLE public."Employees" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213            7           2604    16649    ExaminationGroups id    DEFAULT     �   ALTER TABLE ONLY public."ExaminationGroups" ALTER COLUMN id SET DEFAULT nextval('public."ExaminationGroups_id_seq"'::regclass);
 E   ALTER TABLE public."ExaminationGroups" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            9           2604    16650    ExaminationReferenceValues id    DEFAULT     �   ALTER TABLE ONLY public."ExaminationReferenceValues" ALTER COLUMN id SET DEFAULT nextval('public."ExaminationReferenceValues_id_seq"'::regclass);
 N   ALTER TABLE public."ExaminationReferenceValues" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            :           2604    16651    ExaminationValues id    DEFAULT     �   ALTER TABLE ONLY public."ExaminationValues" ALTER COLUMN id SET DEFAULT nextval('public."ExaminationValues_id_seq"'::regclass);
 E   ALTER TABLE public."ExaminationValues" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            <           2604    16652    Examinations id    DEFAULT     v   ALTER TABLE ONLY public."Examinations" ALTER COLUMN id SET DEFAULT nextval('public."Examinations_id_seq"'::regclass);
 @   ALTER TABLE public."Examinations" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            >           2604    16653    Functions id    DEFAULT     p   ALTER TABLE ONLY public."Functions" ALTER COLUMN id SET DEFAULT nextval('public."Functions_id_seq"'::regclass);
 =   ALTER TABLE public."Functions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            @           2604    16654    Headquarters id    DEFAULT     v   ALTER TABLE ONLY public."Headquarters" ALTER COLUMN id SET DEFAULT nextval('public."Headquarters_id_seq"'::regclass);
 @   ALTER TABLE public."Headquarters" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            B           2604    16655 
   Methods id    DEFAULT     l   ALTER TABLE ONLY public."Methods" ALTER COLUMN id SET DEFAULT nextval('public."Methods_id_seq"'::regclass);
 ;   ALTER TABLE public."Methods" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            C           2604    16656    PriceLists id    DEFAULT     r   ALTER TABLE ONLY public."PriceLists" ALTER COLUMN id SET DEFAULT nextval('public."PriceLists_id_seq"'::regclass);
 >   ALTER TABLE public."PriceLists" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            E           2604    16657    Professions id    DEFAULT     t   ALTER TABLE ONLY public."Professions" ALTER COLUMN id SET DEFAULT nextval('public."Professions_id_seq"'::regclass);
 ?   ALTER TABLE public."Professions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            F           2604    16658    ReferenceValues id    DEFAULT     |   ALTER TABLE ONLY public."ReferenceValues" ALTER COLUMN id SET DEFAULT nextval('public."ReferenceValues_id_seq"'::regclass);
 C   ALTER TABLE public."ReferenceValues" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            G           2604    16659    Referers id    DEFAULT     n   ALTER TABLE ONLY public."Referers" ALTER COLUMN id SET DEFAULT nextval('public."Referers_id_seq"'::regclass);
 <   ALTER TABLE public."Referers" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            L           2604    16660    Roles id    DEFAULT     h   ALTER TABLE ONLY public."Roles" ALTER COLUMN id SET DEFAULT nextval('public."Roles_id_seq"'::regclass);
 9   ALTER TABLE public."Roles" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            N           2604    16661    Services id    DEFAULT     n   ALTER TABLE ONLY public."Services" ALTER COLUMN id SET DEFAULT nextval('public."Services_id_seq"'::regclass);
 <   ALTER TABLE public."Services" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            O           2604    16662    Specialities id    DEFAULT     v   ALTER TABLE ONLY public."Specialities" ALTER COLUMN id SET DEFAULT nextval('public."Specialities_id_seq"'::regclass);
 @   ALTER TABLE public."Specialities" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            P           2604    16663 	   Tokens id    DEFAULT     j   ALTER TABLE ONLY public."Tokens" ALTER COLUMN id SET DEFAULT nextval('public."Tokens_id_seq"'::regclass);
 :   ALTER TABLE public."Tokens" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            S           2604    16664    Tuitions id    DEFAULT     n   ALTER TABLE ONLY public."Tuitions" ALTER COLUMN id SET DEFAULT nextval('public."Tuitions_id_seq"'::regclass);
 <   ALTER TABLE public."Tuitions" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250            T           2604    16665    TypeAgreements id    DEFAULT     z   ALTER TABLE ONLY public."TypeAgreements" ALTER COLUMN id SET DEFAULT nextval('public."TypeAgreements_id_seq"'::regclass);
 B   ALTER TABLE public."TypeAgreements" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252            U           2604    16666    TypeDocs id    DEFAULT     n   ALTER TABLE ONLY public."TypeDocs" ALTER COLUMN id SET DEFAULT nextval('public."TypeDocs_id_seq"'::regclass);
 <   ALTER TABLE public."TypeDocs" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254            V           2604    16667    TypeEmployees id    DEFAULT     x   ALTER TABLE ONLY public."TypeEmployees" ALTER COLUMN id SET DEFAULT nextval('public."TypeEmployees_id_seq"'::regclass);
 A   ALTER TABLE public."TypeEmployees" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256            W           2604    16668    Units id    DEFAULT     h   ALTER TABLE ONLY public."Units" ALTER COLUMN id SET DEFAULT nextval('public."Units_id_seq"'::regclass);
 9   ALTER TABLE public."Units" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            X           2604    16669    Users id    DEFAULT     h   ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 9   ALTER TABLE public."Users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261            ~          0    16395 
   Agreements 
   TABLE DATA           �   COPY public."Agreements" (id, name, address, ruc, email, "tlfNumber", description, "createdAt", "updatedAt", "TypeAgreementId") FROM stdin;
    public          postgres    false    200   S�      �          0    19224    Ambs 
   TABLE DATA           Q   COPY public."Ambs" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    272   �      �          0    19051    ApilisBrands 
   TABLE DATA           p   COPY public."ApilisBrands" (id, "nameBrand", "Descr", "codBaja", "createdAt", "updatedAt", "Color") FROM stdin;
    public          postgres    false    266   o�      �          0    19307    ApilisMatchDataDetails 
   TABLE DATA           �   COPY public."ApilisMatchDataDetails" (id, "createdAt", "updatedAt", "codBaja", "idApilisMatchData", "idExamenValue", fields, priority, "createdBy", "modifiedBy") FROM stdin;
    public          postgres    false    274   ��      �          0    19097    ApilisMatchDatas 
   TABLE DATA           �   COPY public."ApilisMatchDatas" (id, "createdAt", "updatedAt", "codBaja", "idExamen", "idModel", "Color", "ColorAle") FROM stdin;
    public          postgres    false    267   n�      �          0    19136    ApilisModels 
   TABLE DATA           r   COPY public."ApilisModels" (id, "nameModel", "codBaja", "createdAt", "updatedAt", "Color", "idBrand") FROM stdin;
    public          postgres    false    268   9�      �          0    19327    ApilisMonitors 
   TABLE DATA           �  COPY public."ApilisMonitors" (id, "createdAt", "updatedAt", "codBaja", "codeApi", "idPatient", "idExam", "processedAt", field01, val01, val02, val03, val04, val05, val06, val07, val08, val09, val10, val11, val12, val13, val14, val15, val16, val17, val18, val19, val20, val21, val22, val23, val24, val25, val26, val27, val28, val29, val30, val31, val32, val33, val34, val35, val36, val37, val38, val39, val40, obse, status) FROM stdin;
    public          postgres    false    276   ��      �          0    19183    ApilisPaths 
   TABLE DATA           v   COPY public."ApilisPaths" (id, env, "Api", "codBaja", "createdAt", "updatedAt", "user", passw, "idModel") FROM stdin;
    public          postgres    false    270   ��      �          0    16403    AppointmentDetails 
   TABLE DATA           �   COPY public."AppointmentDetails" (id, "createdAt", "updatedAt", "AppointmentId", "ExaminationId", "idMuestra", result) FROM stdin;
    public          postgres    false    202   �       �          0    16408    Appointments 
   TABLE DATA             COPY public."Appointments" (id, code, "time", "dateAppointment", "totalPrice", discount, "finalPrice", status, result, "createdAt", "updatedAt", "ClientId", "ResponsibleId", "PriceListId", "HeadquarterId", "EmployeeId", "RefererId", "refererCode", "DoctorId", "doctorNotes") FROM stdin;
    public          postgres    false    204   q      �          0    16418 
   Categories 
   TABLE DATA           W   COPY public."Categories" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    206   X      �          0    16426    Clients 
   TABLE DATA             COPY public."Clients" (id, dni, "birthDate", code, "historyNumber", name, "lastNameP", "lastNameM", "phoneNumber", "tlfNumber", gender, "civilStatus", nationality, address, status, "createdAt", "updatedAt", "UserId", "TypeDocId", "DistrictId", edad, "NationId") FROM stdin;
    public          postgres    false    208   �      �          0    16435 	   Districts 
   TABLE DATA           W   COPY public."Districts" (id, name, "createdAt", "updatedAt", "ProvinceId") FROM stdin;
    public          postgres    false    210   �I      �          0    16441    Doctors 
   TABLE DATA           O   COPY public."Doctors" (id, "doctorName", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    211   ��      �          0    16446 	   Employees 
   TABLE DATA           �  COPY public."Employees" (id, dni, "admissionDate", "birthDate", name, "lastNameP", "lastNameM", gender, "civilStatus", "phoneNumber", "tlfNumber", "digitalSignatureUrl", "tuitionNumber", "tuitionNumber2", address, "referencePoint", "typeDirection", status, "createdAt", "updatedAt", "CategoryId", "DistrictId", "UserId", "TypeDocId", "TypeEmployeeId", "SpecialityId", "ProfessionId", "TuitionId", "Tuition2Id", "HeadquarterId") FROM stdin;
    public          postgres    false    213   p�      �          0    16455    ExaminationDetails 
   TABLE DATA           �   COPY public."ExaminationDetails" (value, status, "createdAt", "updatedAt", "AppointmentDetailId", "ExaminationValueId") FROM stdin;
    public          postgres    false    215   ��      �          0    16459    ExaminationGroups 
   TABLE DATA           u   COPY public."ExaminationGroups" (id, name, "countEV", status, "createdAt", "updatedAt", "ExaminationId") FROM stdin;
    public          postgres    false    216   �      �          0    16465    ExaminationPrices 
   TABLE DATA           n   COPY public."ExaminationPrices" (price, "createdAt", "updatedAt", "ExaminationId", "PriceListId") FROM stdin;
    public          postgres    false    218   Y�      �          0    16468    ExaminationReferenceValues 
   TABLE DATA           �   COPY public."ExaminationReferenceValues" (id, name, "createdAt", "updatedAt", "ExaminationValueId", "ExaminationId") FROM stdin;
    public          postgres    false    219   c�      �          0    16473    ExaminationValues 
   TABLE DATA           �   COPY public."ExaminationValues" (id, name, "countVR", status, "createdAt", "updatedAt", "ExaminationGroupId", "MethodId", "UnitId", "countVR2") FROM stdin;
    public          postgres    false    221   *�      �          0    16479    Examinations 
   TABLE DATA           �   COPY public."Examinations" (id, name, code, indications, "typeSample", volume, supplies, "storageTemperature", "fastingConditions", "runFrequency", "processTime", "reportTime", "countEG", status, "createdAt", "updatedAt", "ServiceId") FROM stdin;
    public          postgres    false    223         �          0    16488 	   Functions 
   TABLE DATA           y   COPY public."Functions" (id, title, type, parent_id, url, icon, "typeApplication", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   ;      �          0    16497    Headquarters 
   TABLE DATA           u   COPY public."Headquarters" (id, name, address, "tlfNumber", email, "urlImage", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   y      �          0    16506    Methods 
   TABLE DATA           T   COPY public."Methods" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   �      �          0    17805    Nations 
   TABLE DATA           T   COPY public."Nations" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    263   ^      �          0    16514 
   PriceLists 
   TABLE DATA           a   COPY public."PriceLists" (id, name, status, "createdAt", "updatedAt", "AgreementId") FROM stdin;
    public          postgres    false    231   f      �          0    16520    Professions 
   TABLE DATA           X   COPY public."Professions" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    233         �          0    16528 	   Provinces 
   TABLE DATA           U   COPY public."Provinces" (id, name, "createdAt", "updatedAt", "RegionId") FROM stdin;
    public          postgres    false    235   �      �          0    16534    ReferenceValues 
   TABLE DATA           U   COPY public."ReferenceValues" (id, name, unit, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    236   �!      �          0    16542    Referers 
   TABLE DATA           Q   COPY public."Referers" (id, "refererName", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    238   t"      �          0    16547    Regions 
   TABLE DATA           G   COPY public."Regions" (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    240   p#      �          0    16553    RoleFunctions 
   TABLE DATA           �   COPY public."RoleFunctions" ("canView", "canEdit", "canDelete", "canCreate", "createdAt", "updatedAt", "FunctionId", "RoleId") FROM stdin;
    public          postgres    false    241   �$      �          0    16560    Roles 
   TABLE DATA           Z   COPY public."Roles" (id, name, description, status, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    242   Q%      �          0    16569    Services 
   TABLE DATA           U   COPY public."Services" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    244   �%      �          0    16577    Specialities 
   TABLE DATA           Y   COPY public."Specialities" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    246   �'      �          0    16585    Tokens 
   TABLE DATA           i   COPY public."Tokens" (id, hash, expiration_date, status, "createdAt", "updatedAt", "UserId") FROM stdin;
    public          postgres    false    248   t)      �          0    16592    Tuitions 
   TABLE DATA           U   COPY public."Tuitions" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    250   �)      �          0    16600    TypeAgreements 
   TABLE DATA           [   COPY public."TypeAgreements" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    252   �+      �          0    16608    TypeDocs 
   TABLE DATA           c   COPY public."TypeDocs" (id, name, description, "createdAt", "updatedAt", description2) FROM stdin;
    public          postgres    false    254   �+      �          0    16616    TypeEmployees 
   TABLE DATA           Z   COPY public."TypeEmployees" (id, name, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    256   �,      �          0    16624    Units 
   TABLE DATA           E   COPY public."Units" (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    258   �-      �          0    16629    UserRole 
   TABLE DATA           R   COPY public."UserRole" ("createdAt", "updatedAt", "RoleId", "UserId") FROM stdin;
    public          postgres    false    260   S/      �          0    16632    Users 
   TABLE DATA           h   COPY public."Users" (id, username, password, "urlAvatar", status, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    261   u?      �           0    0    Agreements_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Agreements_id_seq"', 25, true);
          public          postgres    false    201            �           0    0    ApilisBrands_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."ApilisBrands_id_seq"', 105, true);
          public          postgres    false    265            �           0    0    ApilisMatchDataDetails_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."ApilisMatchDataDetails_id_seq"', 2199, true);
          public          postgres    false    275            �           0    0    ApilisMatchDatas_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ApilisMatchDatas_id_seq"', 1251, true);
          public          postgres    false    273            �           0    0    ApilisModels_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."ApilisModels_id_seq"', 80, true);
          public          postgres    false    269            �           0    0    ApilisMonitors_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."ApilisMonitors_id_seq"', 398, true);
          public          postgres    false    277            �           0    0    ApilisPaths_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ApilisPaths_id_seq"', 61, true);
          public          postgres    false    271            �           0    0    AppointmentDetails_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."AppointmentDetails_id_seq"', 303, true);
          public          postgres    false    203            �           0    0    Appointments_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Appointments_id_seq"', 107, true);
          public          postgres    false    205            �           0    0    Categories_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Categories_id_seq"', 3, true);
          public          postgres    false    207            �           0    0    Clients_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Clients_id_seq"', 293, true);
          public          postgres    false    209            �           0    0    Doctors_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Doctors_id_seq"', 6, true);
          public          postgres    false    212            �           0    0    Employees_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Employees_id_seq"', 47, true);
          public          postgres    false    214            �           0    0    ExaminationGroups_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ExaminationGroups_id_seq"', 176, true);
          public          postgres    false    217            �           0    0 !   ExaminationReferenceValues_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."ExaminationReferenceValues_id_seq"', 235, true);
          public          postgres    false    220            �           0    0    ExaminationValues_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."ExaminationValues_id_seq"', 345, true);
          public          postgres    false    222                        0    0    Examinations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Examinations_id_seq"', 123, true);
          public          postgres    false    224                       0    0    Functions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Functions_id_seq"', 10, true);
          public          postgres    false    226                       0    0    Headquarters_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Headquarters_id_seq"', 11, true);
          public          postgres    false    228                       0    0    Methods_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Methods_id_seq"', 14, true);
          public          postgres    false    230                       0    0    Nations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Nations_id_seq"', 22, true);
          public          postgres    false    264                       0    0    PriceLists_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."PriceLists_id_seq"', 31, true);
          public          postgres    false    232                       0    0    Professions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Professions_id_seq"', 7, true);
          public          postgres    false    234                       0    0    ReferenceValues_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."ReferenceValues_id_seq"', 12, true);
          public          postgres    false    237                       0    0    Referers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Referers_id_seq"', 10, true);
          public          postgres    false    239            	           0    0    Roles_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Roles_id_seq"', 3, true);
          public          postgres    false    243            
           0    0    Services_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Services_id_seq"', 16, true);
          public          postgres    false    245                       0    0    Specialities_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Specialities_id_seq"', 16, true);
          public          postgres    false    247                       0    0    Tokens_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Tokens_id_seq"', 1, false);
          public          postgres    false    249                       0    0    Tuitions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Tuitions_id_seq"', 25, true);
          public          postgres    false    251                       0    0    TypeAgreements_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."TypeAgreements_id_seq"', 2, true);
          public          postgres    false    253                       0    0    TypeDocs_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."TypeDocs_id_seq"', 4, true);
          public          postgres    false    255                       0    0    TypeEmployees_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."TypeEmployees_id_seq"', 11, true);
          public          postgres    false    257                       0    0    Units_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Units_id_seq"', 20, true);
          public          postgres    false    259                       0    0    Users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Users_id_seq"', 652, true);
          public          postgres    false    262            c           2606    16671    Agreements Agreements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Agreements"
    ADD CONSTRAINT "Agreements_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Agreements" DROP CONSTRAINT "Agreements_pkey";
       public            postgres    false    200            e           2606    16673    Agreements Agreements_ruc_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Agreements"
    ADD CONSTRAINT "Agreements_ruc_key" UNIQUE (ruc);
 K   ALTER TABLE ONLY public."Agreements" DROP CONSTRAINT "Agreements_ruc_key";
       public            postgres    false    200            �           2606    19231    Ambs Ambs_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Ambs"
    ADD CONSTRAINT "Ambs_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Ambs" DROP CONSTRAINT "Ambs_pkey";
       public            postgres    false    272            �           2606    19056    ApilisBrands ApilisBrands_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ApilisBrands"
    ADD CONSTRAINT "ApilisBrands_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ApilisBrands" DROP CONSTRAINT "ApilisBrands_pkey";
       public            postgres    false    266            �           2606    19141    ApilisModels ApilisBuilds_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."ApilisModels"
    ADD CONSTRAINT "ApilisBuilds_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."ApilisModels" DROP CONSTRAINT "ApilisBuilds_pkey";
       public            postgres    false    268            �           2606    19312 2   ApilisMatchDataDetails ApilisMatchDataDetails_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."ApilisMatchDataDetails"
    ADD CONSTRAINT "ApilisMatchDataDetails_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."ApilisMatchDataDetails" DROP CONSTRAINT "ApilisMatchDataDetails_pkey";
       public            postgres    false    274            �           2606    19102 %   ApilisMatchDatas ApilisMatchData_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."ApilisMatchDatas"
    ADD CONSTRAINT "ApilisMatchData_pkey" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public."ApilisMatchDatas" DROP CONSTRAINT "ApilisMatchData_pkey";
       public            postgres    false    267            �           2606    19335 "   ApilisMonitors ApilisMonitors_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public."ApilisMonitors"
    ADD CONSTRAINT "ApilisMonitors_pkey" PRIMARY KEY ("idPatient", id);
 P   ALTER TABLE ONLY public."ApilisMonitors" DROP CONSTRAINT "ApilisMonitors_pkey";
       public            postgres    false    276    276            �           2606    19187    ApilisPaths ApilisPaths_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."ApilisPaths"
    ADD CONSTRAINT "ApilisPaths_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."ApilisPaths" DROP CONSTRAINT "ApilisPaths_pkey";
       public            postgres    false    270            g           2606    16675 E   AppointmentDetails AppointmentDetails_AppointmentId_ExaminationId_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."AppointmentDetails"
    ADD CONSTRAINT "AppointmentDetails_AppointmentId_ExaminationId_key" UNIQUE ("AppointmentId", "ExaminationId");
 s   ALTER TABLE ONLY public."AppointmentDetails" DROP CONSTRAINT "AppointmentDetails_AppointmentId_ExaminationId_key";
       public            postgres    false    202    202            i           2606    16677 *   AppointmentDetails AppointmentDetails_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."AppointmentDetails"
    ADD CONSTRAINT "AppointmentDetails_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."AppointmentDetails" DROP CONSTRAINT "AppointmentDetails_pkey";
       public            postgres    false    202            k           2606    16679 "   Appointments Appointments_code_key 
   CONSTRAINT     a   ALTER TABLE ONLY public."Appointments"
    ADD CONSTRAINT "Appointments_code_key" UNIQUE (code);
 P   ALTER TABLE ONLY public."Appointments" DROP CONSTRAINT "Appointments_code_key";
       public            postgres    false    204            m           2606    16681    Appointments Appointments_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Appointments"
    ADD CONSTRAINT "Appointments_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Appointments" DROP CONSTRAINT "Appointments_pkey";
       public            postgres    false    204            p           2606    16683    Categories Categories_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Categories" DROP CONSTRAINT "Categories_pkey";
       public            postgres    false    206            r           2606    16685    Clients Clients_code_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_code_key" UNIQUE (code);
 F   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_code_key";
       public            postgres    false    208            t           2606    16687    Clients Clients_dni_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_dni_key" UNIQUE (dni);
 E   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_dni_key";
       public            postgres    false    208            v           2606    16689 !   Clients Clients_historyNumber_key 
   CONSTRAINT     k   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_historyNumber_key" UNIQUE ("historyNumber");
 O   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_historyNumber_key";
       public            postgres    false    208            x           2606    16691    Clients Clients_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_pkey";
       public            postgres    false    208            z           2606    16693    Districts Districts_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_pkey";
       public            postgres    false    210            |           2606    16695    Doctors Doctors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Doctors"
    ADD CONSTRAINT "Doctors_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Doctors" DROP CONSTRAINT "Doctors_pkey";
       public            postgres    false    211            ~           2606    16697    Employees Employees_dni_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_dni_key" UNIQUE (dni);
 I   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_dni_key";
       public            postgres    false    213            �           2606    16699    Employees Employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_pkey";
       public            postgres    false    213            �           2606    16701 *   ExaminationDetails ExaminationDetails_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationDetails"
    ADD CONSTRAINT "ExaminationDetails_pkey" PRIMARY KEY ("AppointmentDetailId", "ExaminationValueId");
 X   ALTER TABLE ONLY public."ExaminationDetails" DROP CONSTRAINT "ExaminationDetails_pkey";
       public            postgres    false    215    215            �           2606    16703 (   ExaminationGroups ExaminationGroups_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."ExaminationGroups"
    ADD CONSTRAINT "ExaminationGroups_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."ExaminationGroups" DROP CONSTRAINT "ExaminationGroups_pkey";
       public            postgres    false    216            �           2606    16705 (   ExaminationPrices ExaminationPrices_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationPrices"
    ADD CONSTRAINT "ExaminationPrices_pkey" PRIMARY KEY ("ExaminationId", "PriceListId");
 V   ALTER TABLE ONLY public."ExaminationPrices" DROP CONSTRAINT "ExaminationPrices_pkey";
       public            postgres    false    218    218            �           2606    16707 :   ExaminationReferenceValues ExaminationReferenceValues_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."ExaminationReferenceValues"
    ADD CONSTRAINT "ExaminationReferenceValues_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."ExaminationReferenceValues" DROP CONSTRAINT "ExaminationReferenceValues_pkey";
       public            postgres    false    219            �           2606    16709 (   ExaminationValues ExaminationValues_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."ExaminationValues"
    ADD CONSTRAINT "ExaminationValues_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."ExaminationValues" DROP CONSTRAINT "ExaminationValues_pkey";
       public            postgres    false    221            �           2606    16711    Examinations Examinations_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Examinations"
    ADD CONSTRAINT "Examinations_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Examinations" DROP CONSTRAINT "Examinations_pkey";
       public            postgres    false    223            �           2606    16713    Functions Functions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Functions"
    ADD CONSTRAINT "Functions_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Functions" DROP CONSTRAINT "Functions_pkey";
       public            postgres    false    225            �           2606    16715    Headquarters Headquarters_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Headquarters"
    ADD CONSTRAINT "Headquarters_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Headquarters" DROP CONSTRAINT "Headquarters_pkey";
       public            postgres    false    227            �           2606    16717    Methods Methods_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Methods"
    ADD CONSTRAINT "Methods_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Methods" DROP CONSTRAINT "Methods_pkey";
       public            postgres    false    229            �           2606    17812    Nations Nations_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Nations"
    ADD CONSTRAINT "Nations_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Nations" DROP CONSTRAINT "Nations_pkey";
       public            postgres    false    263            �           2606    16719    PriceLists PriceLists_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."PriceLists"
    ADD CONSTRAINT "PriceLists_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."PriceLists" DROP CONSTRAINT "PriceLists_pkey";
       public            postgres    false    231            �           2606    16721    Professions Professions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Professions"
    ADD CONSTRAINT "Professions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Professions" DROP CONSTRAINT "Professions_pkey";
       public            postgres    false    233            �           2606    16723    Provinces Provinces_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Provinces"
    ADD CONSTRAINT "Provinces_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Provinces" DROP CONSTRAINT "Provinces_pkey";
       public            postgres    false    235            �           2606    16725 $   ReferenceValues ReferenceValues_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."ReferenceValues"
    ADD CONSTRAINT "ReferenceValues_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."ReferenceValues" DROP CONSTRAINT "ReferenceValues_pkey";
       public            postgres    false    236            �           2606    16727    Referers Referers_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Referers"
    ADD CONSTRAINT "Referers_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Referers" DROP CONSTRAINT "Referers_pkey";
       public            postgres    false    238            �           2606    16729    Regions Regions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Regions"
    ADD CONSTRAINT "Regions_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Regions" DROP CONSTRAINT "Regions_pkey";
       public            postgres    false    240            �           2606    16731     RoleFunctions RoleFunctions_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."RoleFunctions"
    ADD CONSTRAINT "RoleFunctions_pkey" PRIMARY KEY ("FunctionId", "RoleId");
 N   ALTER TABLE ONLY public."RoleFunctions" DROP CONSTRAINT "RoleFunctions_pkey";
       public            postgres    false    241    241            �           2606    16733    Roles Roles_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public            postgres    false    242            �           2606    16735    Services Services_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Services"
    ADD CONSTRAINT "Services_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Services" DROP CONSTRAINT "Services_pkey";
       public            postgres    false    244            �           2606    16737    Specialities Specialities_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Specialities"
    ADD CONSTRAINT "Specialities_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Specialities" DROP CONSTRAINT "Specialities_pkey";
       public            postgres    false    246            �           2606    16739    Tokens Tokens_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_pkey";
       public            postgres    false    248            �           2606    16741    Tuitions Tuitions_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Tuitions"
    ADD CONSTRAINT "Tuitions_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Tuitions" DROP CONSTRAINT "Tuitions_pkey";
       public            postgres    false    250            �           2606    16743 "   TypeAgreements TypeAgreements_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."TypeAgreements"
    ADD CONSTRAINT "TypeAgreements_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."TypeAgreements" DROP CONSTRAINT "TypeAgreements_pkey";
       public            postgres    false    252            �           2606    16745    TypeDocs TypeDocs_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."TypeDocs"
    ADD CONSTRAINT "TypeDocs_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."TypeDocs" DROP CONSTRAINT "TypeDocs_pkey";
       public            postgres    false    254            �           2606    16747     TypeEmployees TypeEmployees_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."TypeEmployees"
    ADD CONSTRAINT "TypeEmployees_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."TypeEmployees" DROP CONSTRAINT "TypeEmployees_pkey";
       public            postgres    false    256            �           2606    16749    Units Units_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Units"
    ADD CONSTRAINT "Units_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Units" DROP CONSTRAINT "Units_pkey";
       public            postgres    false    258            �           2606    16751    UserRole UserRole_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."UserRole"
    ADD CONSTRAINT "UserRole_pkey" PRIMARY KEY ("RoleId", "UserId");
 D   ALTER TABLE ONLY public."UserRole" DROP CONSTRAINT "UserRole_pkey";
       public            postgres    false    260    260            �           2606    16753    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    261            �           2606    16755    Users Users_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);
 F   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_username_key";
       public            postgres    false    261            n           1259    16756    fki_Appointments_RefererId_Fkey    INDEX     c   CREATE INDEX "fki_Appointments_RefererId_Fkey" ON public."Appointments" USING btree ("RefererId");
 5   DROP INDEX public."fki_Appointments_RefererId_Fkey";
       public            postgres    false    204            �           2606    16757 *   Agreements Agreements_TypeAgreementId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Agreements"
    ADD CONSTRAINT "Agreements_TypeAgreementId_fkey" FOREIGN KEY ("TypeAgreementId") REFERENCES public."TypeAgreements"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."Agreements" DROP CONSTRAINT "Agreements_TypeAgreementId_fkey";
       public          postgres    false    200    252    3244            �           2606    16762 8   AppointmentDetails AppointmentDetails_AppointmentId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AppointmentDetails"
    ADD CONSTRAINT "AppointmentDetails_AppointmentId_fkey" FOREIGN KEY ("AppointmentId") REFERENCES public."Appointments"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY public."AppointmentDetails" DROP CONSTRAINT "AppointmentDetails_AppointmentId_fkey";
       public          postgres    false    204    202    3181            �           2606    16767 8   AppointmentDetails AppointmentDetails_ExaminationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."AppointmentDetails"
    ADD CONSTRAINT "AppointmentDetails_ExaminationId_fkey" FOREIGN KEY ("ExaminationId") REFERENCES public."Examinations"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY public."AppointmentDetails" DROP CONSTRAINT "AppointmentDetails_ExaminationId_fkey";
       public          postgres    false    202    3212    223            �           2606    16772 '   Appointments Appointments_ClientId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Appointments"
    ADD CONSTRAINT "Appointments_ClientId_fkey" FOREIGN KEY ("ClientId") REFERENCES public."Clients"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public."Appointments" DROP CONSTRAINT "Appointments_ClientId_fkey";
       public          postgres    false    204    208    3192            �           2606    16777 )   Appointments Appointments_EmployeeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Appointments"
    ADD CONSTRAINT "Appointments_EmployeeId_fkey" FOREIGN KEY ("EmployeeId") REFERENCES public."Employees"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 W   ALTER TABLE ONLY public."Appointments" DROP CONSTRAINT "Appointments_EmployeeId_fkey";
       public          postgres    false    204    213    3200            �           2606    16782 ,   Appointments Appointments_HeadquarterId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Appointments"
    ADD CONSTRAINT "Appointments_HeadquarterId_fkey" FOREIGN KEY ("HeadquarterId") REFERENCES public."Headquarters"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public."Appointments" DROP CONSTRAINT "Appointments_HeadquarterId_fkey";
       public          postgres    false    204    227    3216            �           2606    16787 *   Appointments Appointments_PriceListId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Appointments"
    ADD CONSTRAINT "Appointments_PriceListId_fkey" FOREIGN KEY ("PriceListId") REFERENCES public."PriceLists"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 X   ALTER TABLE ONLY public."Appointments" DROP CONSTRAINT "Appointments_PriceListId_fkey";
       public          postgres    false    204    231    3220            �           2606    16792 (   Appointments Appointments_RefererId_Fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Appointments"
    ADD CONSTRAINT "Appointments_RefererId_Fkey" FOREIGN KEY ("RefererId") REFERENCES public."Referers"(id);
 V   ALTER TABLE ONLY public."Appointments" DROP CONSTRAINT "Appointments_RefererId_Fkey";
       public          postgres    false    3228    238    204            �           2606    16797 ,   Appointments Appointments_ResponsibleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Appointments"
    ADD CONSTRAINT "Appointments_ResponsibleId_fkey" FOREIGN KEY ("ResponsibleId") REFERENCES public."Employees"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public."Appointments" DROP CONSTRAINT "Appointments_ResponsibleId_fkey";
       public          postgres    false    213    204    3200            �           2606    16802    Clients Clients_DistrictId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_DistrictId_fkey" FOREIGN KEY ("DistrictId") REFERENCES public."Districts"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_DistrictId_fkey";
       public          postgres    false    3194    208    210            �           2606    17816    Clients Clients_NationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_NationId_fkey" FOREIGN KEY ("NationId") REFERENCES public."Nations"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_NationId_fkey";
       public          postgres    false    208    3258    263            �           2606    16807    Clients Clients_TypeDocId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_TypeDocId_fkey" FOREIGN KEY ("TypeDocId") REFERENCES public."TypeDocs"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 L   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_TypeDocId_fkey";
       public          postgres    false    254    208    3246            �           2606    16812    Clients Clients_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 I   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_UserId_fkey";
       public          postgres    false    261    208    3254            �           2606    16817 #   Districts Districts_ProvinceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Districts"
    ADD CONSTRAINT "Districts_ProvinceId_fkey" FOREIGN KEY ("ProvinceId") REFERENCES public."Provinces"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Districts" DROP CONSTRAINT "Districts_ProvinceId_fkey";
       public          postgres    false    210    3224    235            �           2606    16822 #   Employees Employees_CategoryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_CategoryId_fkey" FOREIGN KEY ("CategoryId") REFERENCES public."Categories"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_CategoryId_fkey";
       public          postgres    false    3184    213    206            �           2606    16827 #   Employees Employees_DistrictId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_DistrictId_fkey" FOREIGN KEY ("DistrictId") REFERENCES public."Districts"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_DistrictId_fkey";
       public          postgres    false    3194    210    213            �           2606    16832 &   Employees Employees_HeadquarterId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_HeadquarterId_fkey" FOREIGN KEY ("HeadquarterId") REFERENCES public."Headquarters"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_HeadquarterId_fkey";
       public          postgres    false    227    213    3216            �           2606    16837 %   Employees Employees_ProfessionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_ProfessionId_fkey" FOREIGN KEY ("ProfessionId") REFERENCES public."Professions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_ProfessionId_fkey";
       public          postgres    false    3222    213    233            �           2606    16842 %   Employees Employees_SpecialityId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_SpecialityId_fkey" FOREIGN KEY ("SpecialityId") REFERENCES public."Specialities"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_SpecialityId_fkey";
       public          postgres    false    246    3238    213            �           2606    16847 #   Employees Employees_Tuition2Id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_Tuition2Id_fkey" FOREIGN KEY ("Tuition2Id") REFERENCES public."Tuitions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_Tuition2Id_fkey";
       public          postgres    false    3242    213    250            �           2606    16852 "   Employees Employees_TuitionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_TuitionId_fkey" FOREIGN KEY ("TuitionId") REFERENCES public."Tuitions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_TuitionId_fkey";
       public          postgres    false    250    213    3242            �           2606    16857 "   Employees Employees_TypeDocId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_TypeDocId_fkey" FOREIGN KEY ("TypeDocId") REFERENCES public."TypeDocs"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_TypeDocId_fkey";
       public          postgres    false    213    254    3246            �           2606    16862 '   Employees Employees_TypeEmployeeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_TypeEmployeeId_fkey" FOREIGN KEY ("TypeEmployeeId") REFERENCES public."TypeEmployees"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 U   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_TypeEmployeeId_fkey";
       public          postgres    false    213    256    3248            �           2606    16867    Employees Employees_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "Employees_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "Employees_UserId_fkey";
       public          postgres    false    3254    213    261            �           2606    16872 >   ExaminationDetails ExaminationDetails_AppointmentDetailId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationDetails"
    ADD CONSTRAINT "ExaminationDetails_AppointmentDetailId_fkey" FOREIGN KEY ("AppointmentDetailId") REFERENCES public."AppointmentDetails"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 l   ALTER TABLE ONLY public."ExaminationDetails" DROP CONSTRAINT "ExaminationDetails_AppointmentDetailId_fkey";
       public          postgres    false    202    215    3177            �           2606    16877 =   ExaminationDetails ExaminationDetails_ExaminationValueId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationDetails"
    ADD CONSTRAINT "ExaminationDetails_ExaminationValueId_fkey" FOREIGN KEY ("ExaminationValueId") REFERENCES public."ExaminationValues"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY public."ExaminationDetails" DROP CONSTRAINT "ExaminationDetails_ExaminationValueId_fkey";
       public          postgres    false    3210    221    215            �           2606    16882 6   ExaminationGroups ExaminationGroups_ExaminationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationGroups"
    ADD CONSTRAINT "ExaminationGroups_ExaminationId_fkey" FOREIGN KEY ("ExaminationId") REFERENCES public."Examinations"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public."ExaminationGroups" DROP CONSTRAINT "ExaminationGroups_ExaminationId_fkey";
       public          postgres    false    223    3212    216            �           2606    16887 6   ExaminationPrices ExaminationPrices_ExaminationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationPrices"
    ADD CONSTRAINT "ExaminationPrices_ExaminationId_fkey" FOREIGN KEY ("ExaminationId") REFERENCES public."Examinations"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public."ExaminationPrices" DROP CONSTRAINT "ExaminationPrices_ExaminationId_fkey";
       public          postgres    false    218    223    3212            �           2606    16892 4   ExaminationPrices ExaminationPrices_PriceListId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationPrices"
    ADD CONSTRAINT "ExaminationPrices_PriceListId_fkey" FOREIGN KEY ("PriceListId") REFERENCES public."PriceLists"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public."ExaminationPrices" DROP CONSTRAINT "ExaminationPrices_PriceListId_fkey";
       public          postgres    false    218    3220    231            �           2606    16897 H   ExaminationReferenceValues ExaminationReferenceValues_ExaminationId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationReferenceValues"
    ADD CONSTRAINT "ExaminationReferenceValues_ExaminationId_fkey" FOREIGN KEY ("ExaminationId") REFERENCES public."Examinations"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 v   ALTER TABLE ONLY public."ExaminationReferenceValues" DROP CONSTRAINT "ExaminationReferenceValues_ExaminationId_fkey";
       public          postgres    false    219    3212    223            �           2606    16902 M   ExaminationReferenceValues ExaminationReferenceValues_ExaminationValueId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationReferenceValues"
    ADD CONSTRAINT "ExaminationReferenceValues_ExaminationValueId_fkey" FOREIGN KEY ("ExaminationValueId") REFERENCES public."ExaminationValues"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 {   ALTER TABLE ONLY public."ExaminationReferenceValues" DROP CONSTRAINT "ExaminationReferenceValues_ExaminationValueId_fkey";
       public          postgres    false    3210    221    219            �           2606    16907 ;   ExaminationValues ExaminationValues_ExaminationGroupId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationValues"
    ADD CONSTRAINT "ExaminationValues_ExaminationGroupId_fkey" FOREIGN KEY ("ExaminationGroupId") REFERENCES public."ExaminationGroups"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 i   ALTER TABLE ONLY public."ExaminationValues" DROP CONSTRAINT "ExaminationValues_ExaminationGroupId_fkey";
       public          postgres    false    3204    221    216            �           2606    16912 1   ExaminationValues ExaminationValues_MethodId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationValues"
    ADD CONSTRAINT "ExaminationValues_MethodId_fkey" FOREIGN KEY ("MethodId") REFERENCES public."Methods"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 _   ALTER TABLE ONLY public."ExaminationValues" DROP CONSTRAINT "ExaminationValues_MethodId_fkey";
       public          postgres    false    3218    221    229            �           2606    16917 /   ExaminationValues ExaminationValues_UnitId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ExaminationValues"
    ADD CONSTRAINT "ExaminationValues_UnitId_fkey" FOREIGN KEY ("UnitId") REFERENCES public."Units"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 ]   ALTER TABLE ONLY public."ExaminationValues" DROP CONSTRAINT "ExaminationValues_UnitId_fkey";
       public          postgres    false    258    3250    221            �           2606    16922 (   Examinations Examinations_ServiceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Examinations"
    ADD CONSTRAINT "Examinations_ServiceId_fkey" FOREIGN KEY ("ServiceId") REFERENCES public."Services"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public."Examinations" DROP CONSTRAINT "Examinations_ServiceId_fkey";
       public          postgres    false    223    3236    244            �           2606    16927 "   Functions Functions_parent_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Functions"
    ADD CONSTRAINT "Functions_parent_id_fkey" FOREIGN KEY (parent_id) REFERENCES public."Functions"(id) ON UPDATE CASCADE;
 P   ALTER TABLE ONLY public."Functions" DROP CONSTRAINT "Functions_parent_id_fkey";
       public          postgres    false    3214    225    225            �           2606    16932 &   PriceLists PriceLists_AgreementId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PriceLists"
    ADD CONSTRAINT "PriceLists_AgreementId_fkey" FOREIGN KEY ("AgreementId") REFERENCES public."Agreements"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 T   ALTER TABLE ONLY public."PriceLists" DROP CONSTRAINT "PriceLists_AgreementId_fkey";
       public          postgres    false    200    231    3171            �           2606    16937 !   Provinces Provinces_RegionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Provinces"
    ADD CONSTRAINT "Provinces_RegionId_fkey" FOREIGN KEY ("RegionId") REFERENCES public."Regions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 O   ALTER TABLE ONLY public."Provinces" DROP CONSTRAINT "Provinces_RegionId_fkey";
       public          postgres    false    240    235    3230            �           2606    16942 +   RoleFunctions RoleFunctions_FunctionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."RoleFunctions"
    ADD CONSTRAINT "RoleFunctions_FunctionId_fkey" FOREIGN KEY ("FunctionId") REFERENCES public."Functions"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public."RoleFunctions" DROP CONSTRAINT "RoleFunctions_FunctionId_fkey";
       public          postgres    false    225    241    3214            �           2606    16947 '   RoleFunctions RoleFunctions_RoleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."RoleFunctions"
    ADD CONSTRAINT "RoleFunctions_RoleId_fkey" FOREIGN KEY ("RoleId") REFERENCES public."Roles"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public."RoleFunctions" DROP CONSTRAINT "RoleFunctions_RoleId_fkey";
       public          postgres    false    3234    242    241            �           2606    16952    Tokens Tokens_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public."Tokens" DROP CONSTRAINT "Tokens_UserId_fkey";
       public          postgres    false    261    248    3254            �           2606    16957    UserRole UserRole_RoleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRole"
    ADD CONSTRAINT "UserRole_RoleId_fkey" FOREIGN KEY ("RoleId") REFERENCES public."Roles"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public."UserRole" DROP CONSTRAINT "UserRole_RoleId_fkey";
       public          postgres    false    242    260    3234            �           2606    16962    UserRole UserRole_UserId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."UserRole"
    ADD CONSTRAINT "UserRole_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public."UserRole" DROP CONSTRAINT "UserRole_UserId_fkey";
       public          postgres    false    3254    260    261            �           2606    19313 ;   ApilisMatchDataDetails fk_idApilisMatchData_ApilisMatchData    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApilisMatchDataDetails"
    ADD CONSTRAINT "fk_idApilisMatchData_ApilisMatchData" FOREIGN KEY ("idApilisMatchData") REFERENCES public."ApilisMatchDatas"(id) NOT VALID;
 i   ALTER TABLE ONLY public."ApilisMatchDataDetails" DROP CONSTRAINT "fk_idApilisMatchData_ApilisMatchData";
       public          postgres    false    267    3262    274            �           2606    19147 $   ApilisModels fk_idBrand_ApilisBrands    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApilisModels"
    ADD CONSTRAINT "fk_idBrand_ApilisBrands" FOREIGN KEY ("idBrand") REFERENCES public."ApilisBrands"(id) NOT VALID;
 R   ALTER TABLE ONLY public."ApilisModels" DROP CONSTRAINT "fk_idBrand_ApilisBrands";
       public          postgres    false    3260    268    266            �           2606    19318 9   ApilisMatchDataDetails fk_idExamenValue_ExaminationValues    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApilisMatchDataDetails"
    ADD CONSTRAINT "fk_idExamenValue_ExaminationValues" FOREIGN KEY ("idExamenValue") REFERENCES public."ExaminationValues"(id) NOT VALID;
 g   ALTER TABLE ONLY public."ApilisMatchDataDetails" DROP CONSTRAINT "fk_idExamenValue_ExaminationValues";
       public          postgres    false    3210    221    274            �           2606    19233 )   ApilisMatchDatas fk_idExamen_Examinations    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApilisMatchDatas"
    ADD CONSTRAINT "fk_idExamen_Examinations" FOREIGN KEY ("idExamen") REFERENCES public."Examinations"(id) NOT VALID;
 W   ALTER TABLE ONLY public."ApilisMatchDatas" DROP CONSTRAINT "fk_idExamen_Examinations";
       public          postgres    false    3212    223    267            �           2606    19217 #   ApilisPaths fk_idModel_ApilisModels    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApilisPaths"
    ADD CONSTRAINT "fk_idModel_ApilisModels" FOREIGN KEY ("idModel") REFERENCES public."ApilisModels"(id) NOT VALID;
 Q   ALTER TABLE ONLY public."ApilisPaths" DROP CONSTRAINT "fk_idModel_ApilisModels";
       public          postgres    false    268    270    3264            �           2606    19238 (   ApilisMatchDatas fk_idModel_ApilisModels    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApilisMatchDatas"
    ADD CONSTRAINT "fk_idModel_ApilisModels" FOREIGN KEY ("idModel") REFERENCES public."ApilisModels"(id) NOT VALID;
 V   ALTER TABLE ONLY public."ApilisMatchDatas" DROP CONSTRAINT "fk_idModel_ApilisModels";
       public          postgres    false    267    3264    268            �           2606    19342    ApilisMonitors idExam_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApilisMonitors"
    ADD CONSTRAINT "idExam_fk" FOREIGN KEY ("idExam") REFERENCES public."Examinations"(id) NOT VALID;
 F   ALTER TABLE ONLY public."ApilisMonitors" DROP CONSTRAINT "idExam_fk";
       public          postgres    false    276    3212    223            �           2606    19337    ApilisMonitors idPatient_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."ApilisMonitors"
    ADD CONSTRAINT "idPatient_fk" FOREIGN KEY ("idPatient") REFERENCES public."Clients"(id) NOT VALID;
 I   ALTER TABLE ONLY public."ApilisMonitors" DROP CONSTRAINT "idPatient_fk";
       public          postgres    false    276    3192    208            ~   �  x���Mn�0�ףS�8�%���*�6�	Z V&R�1$7�z��V��h�E��j�G���7�v���FS������ΐ��gC���&ۺq&O^�L�2�c��5O��	RS�/�q����m���w�`{�:V��4�1i�(�;��;����`��._q9�X��pY$}��؁y�e��q!S�`��~�o�9�/T!E��l}���wf1�1R��f�,ɔx��$�1�<[�)t�%���`ٜ����$)ayS�:zmʥ2Q4{��T�r�)�m*rs�T7;(Hu_��My �E
�e��~��=�����>�k�!���o�%Ք&2ϯ�K�p�75�ʻr[��FTF��}S5~�9�C!3��2s�����d�/(&{��ד��_ށ����]"��!A�C;,�W�,��2Ք%
��1������      �   I   x�3�tqaW� � N##c]C]#S+##+Ss=SK]S<R\F����`L�~c΀ 0&O� �'>      �   l
  x�}��n�H��UO!���E��_�cG��D�<����ސ���,�1fޣ��_l�â�,�d�.�cչ�眲e���=��������I�������B�tK�K+?�+���cO�_O{������x<$�� �Z���xF�Қ�8�A�X",e,cpOjv�V۪'��y�����������,�+�
s,��*�RW�b���8f>T�	Q������
��A�+Qb�/�?���i�y�fL^�`&sx+�i�i�j��f�i{zZ��_�#[EG*�RĒ!����өڳن��O���B�R��
e�W���:���񾚣�_[z�(��o�l�}x�V+������������左c�D��{d�9�/m(]�pf��\����p\zv��o��f	�`�����t�+.�����+��c��>E��kW�X��A����Xj����D�\�"�%�PB�c�]D��c���Ԝk���Y�fH�T C W:�o�P�v$��H@�,;z"Z ���k��0Q�Hqid]�xR!��Bc�\y��{��ʖ.glM�*���tM����q4|�J's���9���J���J����eN�X����(��H{��x�\[������k_�0��0Dw:{Qkٴ\;v���3(���'�C���o����ed�!�#�V���P����~)D?��.8˕`���OkH��#�
(ʠ^+<W�s��Qƹ��V�<ٞu���
�/Y�ycY6E�h�E�j��]v;�9���>���t-�c�&�T%C�8��R�JP��qeq��Y2~^�z��(�Cl�Ƶ�8h�l�A�d���d�k5מ�]�K ~e2�m�M$W����u`(��U�s�La��\(��\GV=Tlu�ɡ���3#T(Րp����F��5�@�gq�������e�Z�QMv�6����rЩh��
����D9�B��}�뷠�ɃNu
�>p+��3����J#��CmG��5ݙ� 	��ݓL�Nh���aJ��P��HK�����q�٧O���={m'�w�!7�씚�d�H�X4���N�ŗ�D����-05J.��l	&�R!�:�x��ݬl]m�蕜�� v.���Hf���l���W����o�q��(M}���rP<Y��6�ZR���%E�1���c�)�6�n�ql�!{���}9�ۉ��H�)��P{��S+D�ju�/l��;��&sKF_�����{za�Bݝ/�;��Nr�~�Lս4!LIp��W(�~�!�b��yx8�a�(�����ѳ��B�-k�L-kx�7f*���B/jn[���c_aiC}�_��s�mА��ED����/�� �Z{�
~��#_���φ"�	J	�6r����@g7�R>�z��)Z
�tW	E��"�4N�٧�L݆B�=Qqj@E� �Vj34�r9s�=.�Y>�!~��fN�bi�\���I���tMjkĢ�L.Z���V�?������?��]�yF'���;k�=:%��6vM�Vکx(�HP��L
���E�^��TΜDb`���փ~�ъނ8Icc���]$w�}Y���m�Ob<��e�($*��Jƪ�ؙ�{���Yƾ�{���XU�C	�t���^X�{�jk2�A17���t-�����w�-�~XR�dQ��q��/��ўz��gn�0>C�ti�����h��.�_�F
$]oF���$9��p6ݨNq/ٷ�f0��~ts��1�9�cὊ-ldٷoi�ɡ�a<E�Q�7�t��]s��7�?�*���_S5�O[��G[� �sw�y�a>h�@K�n�fKt�5�(��� ��aWeA�^�<N4Ŵ��fO,����8��D��0.�����Z�X��+Q�	*e-f 9TӪ�2�9�5�#����t�C�iڒg�@x{~'���9�^�P�URp�q��9n����I��nI�f��:YKn�o?��R�R=VO�ݮ��n�j���M)�0���lP�{|<P������
�O'�I�X���͆�2�پWd�l���&ʢ�{KM��Ĉ(4Pc0t��D짐�g��pG}�O^��	KA"j�7H�%�nhk�.F�@�=��(M�Yp��!���lx�_���Tߵc��+q�dE۸�4<D�i��4�̜' ��:V���ah�v���:N��zIBe'�d(��*�P	i�Ke}�+����%Kk�,�F����m0{f0�ngߔ��tXw=����Q���C��f��>�|A��C��^*D2cѠ��5��QZ�<�,%�ۺ���>��t95̮�Ҳկ��T �6�)�K�+�t��H��Pj8�m��̣I��n�g��|x[�M%ҭB���_����o�8{oK��������)ɣì����f���O�Ĵd�H��&�w���V��|m�w�5����v�������V�X��+�u�Z�ht}hf�@l��ŭA��eŘL��w7h���s$M�h �ۮA�$�`�'�L�h�A�Y�s����0f�.�,��sK�c��S�$_�R�p�T�K4��ҋ>lFӞ:�L(O�
�/o@�7)�,#���ߊZv���҃e���t�E��P%���K���<_*T+���Y��t<�$�S�K����F���%�z�K�0��m5�����о*      �      x��]�n&���n?��\������V��J�s��1��L`$�"F�#�bd��/��n6?�딻�A����.�ϩSEB��2���o��R���m�����=�����������p�r��p����ݤ�?���o�wu������?~���W:�X9�1�J��o��6�[��kѼ�u�	az��󤝙����ۿ��n����>?���+��A�ƪ+cot�Q�:�|Y��3?����՟&w�-��e����m��l+�*9�T���Z+�T/Z>[8�T�	�R�;�*����~���酌O/� <=��-�p�%��V7&ިp�}�+�N�l)M�N�>~��r+P����Vd���h�T��Q��(�:�
o�7�ՊU�i���R�H+�����+]���Q�ڛnW���UQ	gn��v!n_�(��y����|~G���_���6UEM�WcQ>��^D�>�IWF��<�%�� �e)3�r��߿<��}{�!j��ٰ�eӭ���><?������o_&{��a~���aA�����h����jyX�L/��}����b�b�n�*j����Ǉ���~x;�������vX�M�??͋�����������c�4nX�O�^�^�^�t�\Ŀ�4����u����ӳ��Ǆ�����,���������b'�V��'{�h;ǲ�w��n_�����O�&lX�fK��ͻ~w�~^���o��?(JY�n�̷�ES��iI̯f~�yؠ*�r��42}|��������A��:;��o���~�0�Y��������/o�~x�í`��u�R���[.����G�f�K�[����O�,���2
���r�RE�{'p=F3�Ɔ�U��IO_߾<}��X������f����������ݳ���0�[���j���f' �f�h��z��GY�����p�޾8�Xn>��t�J����1ܣ�yAW{���˿�À9��h8oGҐ���sr(�g�^G�dT�A���ۿ|M��rJ-(v%�`R�&j�Y���_Td�5�,�R6����ᗊ!���s������,��uW�Y@��))����� �[����`p"Z^)l�a�+/o%1��F��,��*�k��݇�������0&~��/T����y}lx-6N��Є��<�?���{����FE2���b%��U�c��@�BQ�[�><������%�2Ǳ���)kv�*j��L��_'{�X�ү�_��%����|�c�A1�e-&a��F�c�1&l�l����6#�W�"��1���hY	��~Y���z����O�h�W��=���nx-�)vu_�o9��
Ase-֧t9缫p���S&�O�'b��m�����x+���(s�)�m- �KH�{��*c�X�x[�L�+����}Y����Ջ�}_��X�)��~.�r��U�uo$jx���l��&��~��9�eKZ'�ª��Oc�^�^�m���?|��/%q>>���hX���m�`�!<�M����1�c8�d�	��AE�,(j�M� W�/��Ϸsa�8���S�!��j�p�* �bC�Fk�Qs�k��+�;�ط��M��n	~�#6�1��Y4%�M���׷/3�6g��s̊�͖S�e5�{z_�){�^Č���:�L�-߭��V���ЌdK<Y��V)"�؋���!N4x�1zsclɂ��tŊ���f�q0Y�h��/}q��ƪhۘ\�=�0ݮ��ʪ�ƕ3\��e_~�E���o_�Ϩ� �@�GqZ�)w6Q�hҊqrغ+�LH/j���<�C��I�L�r5�CZ�G�؝�$B�;#
���!̝W�)�|��/X��`�\����~���������̍�g���1
\RoxsL�{�v��g����c��U�Baq:�ixZ--��zQ3���*z̸��I� ���1�w5C%vd�2�*i��hr@�3P��qa?f׵ԡK�T�^�"o)e��@��Pg?�D����[�a\0�����f)^�">?��kl�p���E�z��p����D�
X/��^�ʇ&#S&�t*ÄRM�}.9l,��%���j�������_���9��o��mےa4�s���"�8F�B�XH��j��2U��fHR�E�s�����b���yd9`��\m��ͮ̮��>4Q��L%i���YC�Z)�`�BC<h48)�k�.sp󟾧�4Q�1�گ��B��K|�����@�]���.W'i:(Ƴ�G+��[�����c�҂�� �ۋ�\�O��8��/P�b��ɢ��]'�V/j1ah�!���yE����"]*e�-x����+y��ڦ�=�X���D9��K�,�ċ�'���$S1')�D
5�����E�6.��#܊�1�~�*j��j8�qv��_���Ұ+19%���v�F1���z$Ly6<���x�v�{~xy�}�y���/%�Q�FF]	s������X�[
ŭ��J0ǻrL�X�eJ=�rN��i����p�YK�'�9aĤ�6E�=�FGɢ忂��y�F�͘���	��(i��X�S��v��(Tą7��v�_�W�;���W�ئ���\�6�9�N.��@�ꟙC�������I����JVb���y�͋ �`�M�$;I�ڈ��]���  ���~��#�ҏ�E-�Rj#\!l�ҏq���
�r�FLh��_<��֊��0�FAX���I^�Ю����i���1c
�gN�"j�>}�aIA=Tse�
6Q�0è]oː�8C>�g ��|Pc�"jwK^���B��$M� 1=:b�/���*j�X\�48I60[�Y\)O4]X}��q75bX-ӄ�V�X�i��唥H�֕�*�шɀ9��r���k�ZE��2��UnK�ӧO�^��'+�y������]���EF'؋*��VP�Ob��E�]� �+�׋�T!PA�����/������H�d��Jq1��(�݉��]ƝȿW���� w��dA�M�ȳ([�;`��s�`m��L��iR�'9�GѧZ��&��V��x�֚�q��&ھ�|��q��;vC5%�^��_�N|�Rx�n�^�8F�f�V�ـ��!���r�5��:���N�jH�r���v�dC��p.g��Ơ�k]��Z�<�5����z-��ɤ g��`����9�ܥ�����P/j�K�'Y��6�TQc�}��'X���*jQh]K��S[X�)�
��:��Ռ����1=�`�x��R��Z�,R�����
�o��ĵ:6тTۢ�M��
	�:1,]�l�b<��}���<j����� �NV�n�������������������Ǉ��!��������������_~Z��Q���p(j����q|��)��%�0PB����ǻ��o�n%�6�ɮ��~��������O���p��Hv4��F����(ߘ����>E��Yα��sC,r���z�g;>���0yʩ1��˃����05*L�F�����խyXV����i�K����7� �e'Z(�gz�#�-UJ���M����yҵ�q~�슚�e� �/F��T��A&���XǑcrp-Ps�r
iy*kLg��cUQ���W+ip�g��*�ȫ8Ѱ�1|� >�h���D1q~�����1H�$m%9��vh��!x�{Q�[��n���2	�����]�0�1�`_%�{��{��[*�.Met������͖b;Q� ɳ����
4{g���<�h?�Zņ�ߋZ�[�'�h��D��Ъ��9�!������x_�V%j31k������gԎ�P"�X~uu� ���:	��/x/_�C,z�w�vYV��t�r�k	���!׋�=���/��]��}�A��5|�U|V ;��<c��@�4�%�!Z��Ѫ��Q�����b�T�G�G�-���ߋZ
+�g�oE���}i�G�c��������l���2'��/�9NCܨ �#4�m6,ѥ��x�d���U=u�\ |G�kY����Q*��KŁY��Fٜ�Dm��'b�Ц���N2z�l肥h�N�r�H)��p*�zM���_����k��.cDO	�p    d@�z!��(\l���^�e|g��S�
hں�m��z�d�BE���@aI� �<��H��_.~�ϝn-��~ ~�4�姟�1���s�3U�"j�EQ%4�o�xٵb֒"sBvؔ?^��{�(��6��d�*j���#*8.fD�Qɳ>�
YͰ��.m0J�` R��̊kё�&��1R��DLoW%İ��G�牦�d���K2Őb��ۊ�Q`{'j	��C&���4=��/ET�Zf�JO�~�(�b�3{�U�TC唠�! ��K��j�h)�6/�yz������9!J�C� �3��~��q)���\�"���񮂘�)n���b`A0o�/�"*d�<����q�T���2)�X^��^�b�l�C��!���O!��+ijyf�b�.o�����
:��w�)4a0�b�è]#����ǙC��vW��f�V��%�R�N׫���)�k�%���^����b�-�XZgp*/�s�w;��H{�r����QQr1����)��"F�3S@���F<[:R�o�Ha�m|��%I�_D��a��{�23�"�U�7҄!V���C�H���d��P��2?ELx��H�u<3�̀g��>3����No�U��V>tQJ�3J�j��NE���U$!��<�B6~�l�+��&�����UdO��p(�b6��ݧ��_��������>愳G1��?p��N�_-w�４ -����ġEk�)��GyZ���ET�)11�\lp"�������+p´�]DmW��~%��I[�CX즋]4�.�3ty�4xP
�a���O��f�z,U`����|Z'��)����j�=M�C�r����y����r��6��Y�z�-e1��h�r0�339�x��Q�qc���H�±��%>��~�Z��k'j%R�R�n�Yډ�RB��[nD�r)؉�>�V��1싨�Q�i���@S�́�b V+Bk[4���R�?�V�k���YKL�0��o�l�ʶmz(T�3�&��RL������>���.�Rf��j���1vsH����q<�ӍNq��h���RN�N��O��m��A��NԖ���G�!�Z�EJ5�C`�9 c�,���PJ�G�qt��ӎ1
�w�f/���s�h��c/��%�$��~�D�K�Ap�<�s 9oT[l�,��D�	+7F�=ͬ�k���8/9�Aឳ,F�Ļһq��� j(L�6�Hcs�R&�K	�r�1%��*�N�.��[eZ��c���q�.�@���H�.Hz��oE;�FI;>iW��8Ჴ���U�y#Fk�V\�)/9�*��\;\�c���↛Lg�sW^+�3v*���|۱p(��������|0�Jx-/�MN�Kc��z⾗x�����(q������[8oUR���3�plj;Q��-�E��p�Y���O쫜2B���F
6R���_YO�&���	�ڊz�'��d�j�70�餸��z��+���%b�s3f�B����EQ6�:�^6�`8T
,�6�0(�Dv�
H��,L�X�x4�J�V�B�r~L���{!N_����F�a��۸����._�����{,���:��";��ԉ1�	�O�8��u�� E��Q[;g��3}nd�� ���T�ceZ�c��ҋ�Z�~�NF\��ά�q��	�<��5B�P
w��k���*&j�Yĵ!�q �0si��p`pZ	�.��O�M�|ׁHD�V �a�K�O������EM�-�E1w��3�ZZa�ig���E��L��f\V$�3�m!'9�ҥNL"@C�=~<��40T�ř)�W�p�����`�X�.3�X�D�'��=�w#͈N����NzM�P.��7��z�
����{Q{E@�K��U	�<�^�-u��.�{q�.�a�����uN�$TZvh�c=��C��>ϫL}:��c�K�����@*����4m�o�������G��JÀ��8ϋ�v[9;SR{�%��4N4�7�&:��c�Vf~� ���3����Em~��}�r`��T5��%�6�-�
<���Bi�K�}�mCQ� ≥0���C��RR�A���uN���4��KB��^�w�����V�6얽FK����?@�θlh��yK�(���l'F9�K%��^L/O (��D�vWp'(�i+&E s�"��䯫D��<����NuJ-�Wl��Fq��Q;�DU����Z�=��Up�>E�PRY
G��6�p�!NôB�r&T�ג�-�T�{�ll�Ǥ��;nWH�x�x�Q�$�5�S,LTE-C�R*����4o�BQi�]~�ɤ�-'"6�ߌQ��Õ}��h�P��V�^�f�9��O��%���ڢQ"��t��R�R�>#�y��(4pn-�}����;�7���C�B�y�	Apa�%����`��K>ȡ0c	!�ON<[D�\�M���^�ϣl���9�,���w�u��Q�j/!��/�^�i���#d��_͘��k��j.��OM�����Å5���Aܓ"����#����zѫ�����Ϣǜ�����I"���4'�� c�X�hQTj��]8�����ax�R�!�O
E�J�e(m�[J88��x<���Z
g��uJ�Q�*5|I�m
��?�vPP��ѓ�3zQCk䓽<6N�f/9��Ů����'O����l�]��-� R��(T��DJ�R�����s���q/ON ������4O��7�)���y���h�x���r(er�Py@���M4��>�8k�w������+`��D�Ewnd���6
��bwqq҈?��-�Q�:K�c?�:}�x�3q��&j�����λ�4C��gܮb�����HY/%3�v���WˌG�fr2O���k��ߍ񼁀}���闙�A����E�ńnz���KL(���m�4a==�]El��+b~}ci��݈^���	������ے�T��y�JC��dR:��(�7�x�x�B��O_���N��`�o��x��Q��*Q�N�̵���a��J;���(4���M���L�?��)����*�u�䃬��ǹo%V��=�b��9������4%l���O������7�f�-yG�|��� �L<w��MM��zU#��M���4�[�Q�0�����&-��d�}��cM~���l� j�d�"MB�6,��;ىZ+��ͨ5��sc��"ˁ�HW}�A�6����k�si��N��ϣ�d��t�'����T���d�/�����I+�C��A�\�t)�Pn73j��<������\w�mW'�4F�yԽ�q.�89�	:��������'�^�
M�A�L�D�	,9<�	�t�ŀ� j_L\�L�dAutO�J=1���J��U.ZOPҤ���W���0�"Z�0
罗u���ǰ͸��:�Rk��x,dD��A�|���V|$&gZt������r�`��rNx_�v�b�F���-�l2�ZH#�	դ��� b��qx�aIK�O��uzL�6x�F5�A�m�t�U@Sg�)�oί���w�+���_�%�Ȗh���q�^�j�-�:�)6,�>��5#���	asͼ�|�<$%��1�K�zb�ɢ7���"�2'}9B93���"�� j~@Ύ&�6��͋h��Rb��d8����S[1��	�l3���q쉷u�\����5�8�ᬞ�ۉ��˛�I7VU6V�u���b��f�v�whRV�4�=�nᢄ��p8����16��hV2>g�n��1�!v<���v۪hh�� j�!^�	��* ���DM7�e1�18)e���M��6m��pPC��42������Ќj(�n�IֆQ���+��t�4�!�|����b6�&�����z����ӎ�*�ڰQè��l�"�3��X?���7j��l��N�Xv�+4��l<o��h��o��Y�K�w�w�ξ��,/^�8��m���ڛe��I�uܧ�!Vo�ӗ��6��T=<�������Wo{Q�� %hk���"����I:���sx>�8XG�3 i  �5��4}���u�I�/)L��֟���`A�x���w���D�G�hɇCT�e�A�'��d���|�=��� �3��8���t��p�(�y��ۅ�폧��N��%f{�����I�&/u���s`��#������̇��ƀ^�5�%.gi���"*6P��l��/iR:�R>>6�Z��\�NY�+�n��=�vb�-�"�9g�?�Za�Ou�dw������G�un�� ������Q�ܵ�Y5O�x�?X�z�9[<֨G���|7����e��]10��6�QSE)�T�1�n�&kid��Pg���j���N����M,��|9��T�N���o�P2�>L>!�L:� }փ�x���t7��]+�k���k��� j��~�L_.���,u֛�:+^*�!q�Z�����y{f\��#��y�<BҐ�o�7�����xp@8_W�X��F���@v�#��NԴB�ݬvǚw�zt��]��C2�H/�l��("#��?�ҁ�'����#��@��5�������Ԫ�#Ɠ�'�/��ŗ�:�J�d_��S�M�J�d��7Q�F���F�#΍�p,'��b,Xg���O>���5����_}���jA��      �   �  x���˒�0E��+R��v�i[|�l��,��w#A`�NWe��=�ZF"���A���=�0e���'	��i�����f*S�]��O�j�簗�&y�qZ}X��
�S�!'cy�N%萞�A�`p��b=R��rKk$�T�����A������fG�N�*�I��C����B�J�o�d��N$������T�ƍ��ǉЎ���_���@uc
r�T7��o�+r��@)!aW}��u_����$Bɲ|d����Hх��]�+a/؃$��(�U'�O�҆	��H�׬<"d�ĩ�gV]Qbc.KĤ}�[��G���E�(Q�tO2ɿf9����<⁠��&�������r&K�|�Q}�g�*�h��.����ZF��r=�R=�V��5L�c���@,1h�r�q�
�GNA�B���<.�h�!�cRI!i��#�T��	�끓�	�O7@�u[?`�08��P��VI|�K%򢼅��nR�ƍ#�L޳r�i�)��H����~a\:����/���~I�?e���Jt�u\:vp��%����5�4��($7^"��O�+��KZ�I9X����S9�k'����uD���	l�b��Ǹ�Q���+�ДTK\�����oW_����$�����My�8��9�z�uS�V�4�8�k } 9Xݗ��Sl�+$a>m��>��q���'].���ۮ�      �   `  x���Kr�8���)\�P�F�ŝ��%��L��Iq99˜i.6ݠcS"%$4������O����C�B�� X ^�T[_���ha�,م�����ҁ�,}V*��ZXs�XS��h���rF}Y����W`k�7��<�j�lǵ�)�+��������Ml�ȑ6.s�6u�"��n�{{X���f��k��&8ʰ`�R����Zn�F�D�V�юlFu6bD��۠no?8n���`m�M&�@Kʇp�o:ګ+�s �_[S`���{�}�b��U7���r���N�ΰ\F[|��*��Y��;{�m<6j��ɤޓ8�z�<�?�`��$�l������z�hpT���N�� �����e���Q�Ѧ�]-e�UOOO�KB*���d�6�H=o�H���}up�Q�z�p^x\������v���e|�PtYh��7�J�v��n�P�4Q,�dz�l�Sww77�(.��UJ$��mԆ��I��gY��b�	���8:F~\��"dK$�á�ġ������-om\�GK�$�ी�kp��;u�6�&i ?��6�=������<�5o��2:�{NxD3�ON�h|7�c>py�G�l����G�y~X^}�>�d���Smd�� FC}�yu�|Z��'��ȵ�]��������e�Z�>-�<�28S��m]̼x��F�)��/xҐ�g�:N_+e�8n����:o�y
'���˩� ���aD���;;����o���]���������w	��&u�9�Z���#�y��-�Ԧk6���y�Q
T(�b�� }�9Q-o������e��.e�/����|�E�����!��F��o��ϧaïx)���7&�L���pD��be��%g.�}�i��m����)�hT�y[��F4<O��r��hP���;���4�����x��]P2�jh�=�C��>�`�1�H�h�#1�L�a
2����1P�r�tc�߮��	���Z�ڄ��� �9}��>�|$� {�=�R��>Aj�Z��ڠ����� zh���6��1��������\_�D���e����r��·�'�1́g0A�����X.P��x��Qy�矬:J+���1ȉ$f��F{&�?A{�hܡO$�+��M�h��&��^�߶Ԑ��\����:3��+�����@tUq=�=��}g{�\�Q��'g�՚�f	+�r�k2FS��)Ό�l���|�	����T�P���ca����La�NQ�jd���>E4M�tAEWyÊ},:L��#{�J ךַ䧚Ê7�.s%k�}�
s �g~@[��œ���b���hR��x�Ӝ�y�������ݥ�g���ֆP�x&����5�S��`dd�������;�5�k�V���g`A�ߣH-qA&/���Z�\ŧ���ߓ�e�-���(�oz�7�ę��d��si��m��r2��cWkܱ���g�Ƃv"gYˆ���\>砝h�A�j�՛\��R��5"��)�h��Cl��w��|�ZݍiN�I%���=]������l%Hv�����M$Q]$-�U�� f�X�Bȸﺪ��pWK�      �   5  x�՜�n�8���S�0QU���N�N{Ɖ��ݘE� ��̺�I�ݹ:E�k�\&1l�'�|b�")JR�����E˗/_��EH���yeZ#9�|Cq9���7R� F��k}\��W���y�ނ�5�Ӊ��y���#KoĿWiyK,O��/=Iy�����sa���px��a��2����0�w^N���v9}z��X>�r��~�j�GdNkd��]Z5I4����5|�-g��j��U��%��P�������rJ>�6����I������Y��j ��� ���7�>f^�%�-fk���Z5�k�,�s��;�DU�Z��q��-g9��� .p�iG?-�#�,�c�5D'�)��A�Ӄ�����ؙ0dZ}p�[J?`���)�B�؆%.�K�쨚�������+����Jp���쨚��8�ǐm`_\�%�A��jg��aR�6%v!ǜ#�k�Ȯ�S�#���,.��ht����3��0�#��䨚��8{Ɛ�8K��{Q8����8{��a�u�����X���q
��!�J�bH^F5���3�A�6���R� D39�� g�۰3;�)���Q5��q
���ί��X\-^��h�Ȯ�S�{���#I)�Q�V��h��=@���8S	��N�fv4N���cZ)�"����@���S��Cr�g�,�J͌}�@5�k�7v�"|Ɣe��"�����s�H����X�v���9�+����rI5�U;<7�w��6�1���Xz�ĭ�$�R^�Fxm��!%�>ӖZ��Q5ãqx����h�EU�Z�Ãqx)E�M�����Q5ãq��)��@���Aˣj�����ۤ39�!���@5ãqx���ٗ˵f��1P��`�>C�6���<q�j��U3<�/�2�krh���Hãj�G����_��zk"�	��jш�|S����.��O�R��Z5�k���)Co!b�nDkю���A.2��ˡ���y����8�ǔy��ji9G5��s�LY� �����A�Ãqx�k��m���M�x�U3<�ǔ����1�Z��fx4��!eL}}�ͷ��C���9���k�NR.��7Z�Ãq���.��/�r�Y��h���S�G����Ju!�����8<c�~~�X���j���)[��K�rQk8Z5ãq��/�GŘ\js��z{��q� )��Iu9r�$kxT��h�^�����@U��V��`�S��D�yf���V�fx4��1e���
�&6Z�Ãq����[��$R��y��q��)�[�I�^Ӂj�����kC�'����K���O�fx4�Ϙ��޻�j�A٣j���)};9��6��+9Z5ãq�����!eܺeΡ�Z�Ӫ�s�L�W��;jb�U;<�����>�������%ѕor��=31'/jx�U;;7x�+��Jc����)�>�j��$�c־�P��aكj��F�_!%ow�)���ƼV��h�>��}W4	z'�V��`��1e�k)e��j���I��r��w'��m���������ݵ�=D��F����������8�np���m�X)�}�m��7�"K��b��p?P��`��#��9�uF�nˁ��S����~
����/����9�nL'�Fh��)��S؁���S��/�����?�P%����c�
�~2��>!�e?-8'@��ou��6���:@�zT��>z���ǕB�yVc������jB:'@��nXN����ZDJ�o�9R_F?r����������K�?���ݞus%����P5��s���¦t��H}�Bd��������ۇ��oN�nO��>���?��z\�?|�{</ۛ�~�|�x��C���$�N�!����h�0NU"u�5G���A�S"��"�x+k��M��Ǽ�MǪ�H�Ι���0l�)}���H5T��xX%�������������_n�uh��[Y�m�R�����ۑ9_���T��Y=��K�������#�3C�!>�w���BI���=R_.�#��f���
�Sr��ra�H}�0����8}���5��7��͛? Wn�s      �   �  x���Mo�0��ү��BI��n�dǭv�%��$]�U�a�~��t�c���|��K��D ��tzI������q̧D �ؼ՟��s�Z0vnn�L�D&Y�,�9P7�����.J�b���4
�
ڿC��?"W�$��D��z�C�	I9ۄꪮ�O�z-�I"�W���30	l�NA�`�Pl�W,-g�c�ꢴN��E]B�ɳ.�D_>܏H�ۚ��UZ�%ʆF������|��V.��օ����M���i�����H��	p����Hk<�����N�vU���p�B<g��#�qE�Z��Kj�JpFid��m�t�r�$ e\ʹ ���³@7Q 6餛���(l��\8��$�OȖ�V���
�8�V�[�`A:Ia�P�<9�1>t���xE�y�Fb]o�L�r�A�%ŁB�����!xK���Ԝy�mׯH!���żbҬ�����^�B�\�W�wwZ<�����&�H�G��0{1�J�i���W.�F�~Z�W��R��Br$H��K�#r���nͫ�ї_F�p$m�!�[�[���
�o+,�G�6T_�c�v|9��	
�h�`f�	͌1}��5���~/��a���H��1Ǌ6o�7�b�x3�:4>U8�a
��l} ��8	xt��w6� �2C[��<��{�2�{�;'P�ߕ��/�o�      �   �
  x��[�rܸ}�|��$�W�n�S� U������=�����ߧ�ɉ�O��>���w����b��@v��;2�܄������D�01���n��bЉ�f0�1���} �@H��}�.q0䘦@zpV �������	u!�ā<{P��YBA}�꼼�frǙ����s��<>��P��=)�T����8�"pp����L��9��q~��z��'�����
�2+�5�2�oJ�&����,zf��Y,�,���ޫ��RB���B�Kێ�-�MU�;QrA��`j�%*sD���!�2����R� ��Რ� ڈ�����>	F����2�*�9�q��X���tJ���%�=k����4v���43`#�y�]�,)*l�$(�(V��7�؋U\��Y�w�c��{���XB�3G-�XJ�찥��D�,Jb����4�uDL4Q��s�G)�u�V�����
EA^�Qw�Lk1�%9p�7�G��8�r�Ix�!��S���S? �|����3YE����M�Y{�bJK���J+� ;�J�Zيc��n�;H��hU%���Pa�v-IEwI$pɴ�w�L�k��yO&I�a+�HZ
�Pf�u�{b� ����A2�dޓp�d�X�� �4qp���A�'��d
�NW�0.T8�ShIZ���nK�&�⚳w�L����$��L;Wľ�+�[5e�M(�w$�*K)퉅]o@W$K�r��Ǩޠ_rTA���8������)aPz �nǕ$+Q���'����\qCj���g�ķ�NZrz�����1C�wwdswT�8�2c{ca�Iq4i�D1'X[MQ�ր� q��{77![�9P%H�����e� �5�V�s�[�h!�5�ʦ��<����7���[���u��
��V�RA:��T#I|���zq(�]A�$r��;���Ҿ �V�H)�����	�^���s$C�ޗ�
Ux�:�U)�d"������,�c+I�XʞJ[[�$y�$9Vs����*d�	�J�G���Lv�N�`�uQ�I�'�y�XI��I���@ܐ�P#jԀ�,�=I��G��;ŉ��4��s�%�MI�R�1^�=�e	qWR��;X��t��ݬK(DANSs�<����{�%��;N��9�;T���H�(� �n��P��
ĝ��,�!�YBb�ǽX�$)�$�q|75�����g��jJe���>���Eb_�t�Dpy[��mA0_h���̗�,3GԺ(sV!W�)%�H5�A�P��@N����s ׫~ecK�������F<�O&{�̬���V� cB�i�;��Qr���<]�<ޯu��?�^�_��>��7����k�4OnT��&�����(!���$��rz3�5�ei G%�.E�[�]��BN�,��x�ɜ�E�*�lq��$��_q,�

�]��AJۣǊc	�"�!�F��@�S�[�T�+����|��\�[���%���L)�H'��3��/�W�j	S���t�U�O�������r�9�ɏJ��S�.�!R?�x��Rq����XQ�J�Uȗ!�`E/���zW�
�s񉄍�t3���nA��ҥ��XI�h[UZ��օ�%��B1*�����~W �)��s����鋔��e�p�h�h,d��l��01���&��I��C��i�/��f�6���α�Qe�\�B�d�M��3#G�dy���C�i�8�=�7�G�Џ��ӟ�'��2���>̀�!l��6$�@�����=�!�h$i�!�C)�jUI*i���dmK�@�����+-�y�|�ω�q����Ǝ��m��:\N���llR$KU��Rj�~Ʃ���w.}ȗ此K��s�X�.֭d�g�����|Nh{���]�+���(�=�x������޽����??~=������xy;�^Xu�0��?q�!8뽿>?^^/׏߾=_/Ͽ}p&��'v>��1����B��:uO�n�?�1�
�CTl�X�X��حӑ�q~�/�?�����~�~����}�~|\^�\)���}̻R��\�ޙL���;a��

PXo�"@�H6)<�6D��e���G4�1�᱙�-RƎ5M��;޴���k�H=;4I��ۊ!��Hi�-���|Bv�:���c��5���o��snmn�9��^Z���3:~�iO)	�ď,Xn��f1K{R�g)< �H穀��\jV�����+��_�/�(�� ��EZ_L�v��MT��;.նiU~{2��Cl�q1�n s[�b�{��I�A���T�%-{�k����I���j��Uۍ/_�_^�Hд!���\"c��+Ǯ����+���/�ڠiL�jI-��;�W�ɭ�Tf�t�%�&U��W��:$�>��.�˚��Y.���K�qY1��85���(��)�ͬ�B�$H���&�O����w47�Ԡ�x}{�JJ��Kw���r�>��qBU�����p��[i*��e\ZD��c�m�`
?���-!w+�!��w7kQ�/i�!�>7����x\\N�7�������b3v���i���ח�;s׃�}��c��d�W>�W�d���o47!+oG�� ����?9�=���w�����E�~J�Lb��?��&�jF�z{Z�StT����l���:?�l����W!NcÙckl�?#���y�|�V�hV?=��@���t���D8      �      x��Z[�ɱ��Z0]����Z�g�y@��?��~�)7%����K�m��*fVQc\��T#%1��TdF�8YNuϕS��k��JuF{�̅q]R��]�݋����0je�Z�����ʟ~A�t\���v0*ɔ�t�-�����1�5>�� Š���T��b�_._V+��[\<�lX�����|�M6v��ܹn��l{in�[�P#�Ld�X�4��	����+��&��R�u����x��'�',~�6XV�*~�B3s�O�իpD�j찬��j{u�[.3eq��X��0V˺ ֤��Zq��L��blĥ���uʬu>�� z�YM�z�g<\o�p��`?-|HϗS.�5������p����h�� ^�n2׉���E�z��}�y��u^iY*��Θ��5��ۉ�~l�4�����Xs�s��z�[�����X�ӳ_����Xs�5�`����#��������xD��`�t2����%���kZ�hSi|�{�&1[mu�Z�\�5���7�E)�Glz6��:ac�R���d,�#19�;��O�Ӕ�S���
������!Wb�n�l��(�^��7����&�m\����"��Qf�����Ƅ̐�u���.�A�C���W��k�ˉA���6�<�{ʔ�v���](eFlClਵ֍պ�`���* ����e
��ыk�����|�z�����^�����)�Ѝ�>�!�N�2NO��W��r�7��eJ�X��-�*�s��'?3�3Q�0��~E�b�:�`�
k�@�f̆7�i�d$�ozG���Da��B�:w&#��`�9D�Ҡ����_�A1�W������pUȺ�~�V�ˬd��);�gޭG�r�m4�$�f�B��3�|&9r1��+���.�'�G�O4��U�Vv�=}�)-Y:v��W������0OK�I�k��9p�'�as8zG� �e��=��,���Ś�!�er@:��~��{r��%�N�����*{�e�il����D��c�Ր͈�*�2j��:��|��=3�����\����ټ���B��e �D�4�*N�L�X���8lᩇz�숁.�jE�@�|�3!��N�T��Y�4�7�y�lXbˢ�H��!��m�X�;m����~������d�%4/���������=�x�]�"�q���sQ���UNQ�>����_i\���3S���7h.�>���&�����	g�{T[Q��M+���6��.��n�{n,Xт�Jz��|>�؞,�|^��Bq������ӱ�O���r�1 ��d�聫��hv�� 
 7����]n��I��]oi2l�9u'�֯(��Z�!g?GD4a̔�L�����?lz����d�@��_f&�jKm�!{�/Lub*i+q{���~3wn˦ѝ=�VN�9$��;�t�V�����p*�.K7��i�*�������H�f�Ǆdr�SIlk�����N��v��4��d�@��ŭU���ڥ�\jQ���f��(�p�Ȳ\�pG%^)���������vT�qp�4Ծ��B�vq�֦{��׿T��.����N���3�o6�j��M�]��ۊ\�Ȏ�TN�y�E�aO�^S|P�1su\��>���I܌���mm��q���W�=Պ�E���qS͑�:H?�ʌx&K����)]<�ѿQ��O���&��gU;�)��wR����!J�2��	��F�T6�aq���}>{z;���h�}�r��z�"6��jp���7�,㩲�t}U���R�`��܎�N*:��.��^�6��m�V���������qw�f��i�n����=�׷���~�ݭ�m�힆������bb�"�kSm����=���nVS|p�HA��)y~�lqef�H5��(�#}41���I�q�W`)X3�cJsŀ@<��z�VDL�n�mw������]���˳xj�ME/�C:)��s�� $�9��z��Y8H坣��("Q6~�(-�;�ȿ���B^
� -{����D�R��B�?U滚��X�@6k=�lή=�n���Y�$/ͻ^S�pM�I\w2g�̐uTb�s��odEv���a�Yy�]��/��I�6�o�����QJ�����%J}mo��)�}����;�,֠T��ͱ<�3Iog�
:O�sƳa:䠏�όގ���ye�e��N����@t�6�Bl&�YY ��|v呞TZV�����G�66�+Xf1Qt��O�vo7��g�����N:���~����
���h�CHj�m���ZC�1�[�sl��s-u�2��ͣL�$�LM������g�}#uX��y���5;���˵�O}��:Ήc�T'^��S�f�P2nS��,�l�v[6|�uR��#��!��N-&����O�����Dg�]�t"��Ū��qj������4�P��e�%� .-,���fFkR����X������t�9%�xN%ue�{ͥvt,l��ը-B��du�z&�*�u6&��������l�yv��c�5����N�b;6�#�(�0?��GJ͠�p�tB�'y#�H�!J�Ժ�Hs��./�3Cp�Id�E�ɒ�mѺ��l	)�rI�̚�dXL�͙@NTl6�:�����5G�[�8@%q�EO����J�����V��\@Ԡ�Ki�h��)�,���檏Dƀ-s-��cEZro]�Dh���`�t�C�O�V�qwW`�t �@��(}�
u5���cI�ٲ�u�F���R�[�[S�d� uMM&UB�q/�j��?&�V���T!e͂A�����rܴϤN�������RL���d|A���|�*�)Pj�U]>1�f�e_�s��� �:}e�߾}�d�ٓ7m@v��T7����r�����GR'��B���{���G���p7��|^,x�|(i�L�k��B9Bm>�kV�M�2"?%C�:��V����Z��ϷD�#-JqV�{d�y��������-�;�s=�2P�����i�1�a���� �Z/���1~F�F�ՠ��{�`�L���qa2���I��_j)���yyI��J�Csw�"�]Յ��t����S~��BV6����>2WF��ԁj|�I�L}� ��h���u�?�j)�O�Ր/7�>q������^[!��n��Ѧ%�n[NӔ#��<m�qy%��{P;�UH��I�͍�c%�����������������.JZ�N{���"�(����>�1@��/<D�m#C�����i��ۧ�����n�GY}�?]m���f�{<�n�߬��{^�)W�?�����M�?�>|x��~��\�7T{��^1�{��XS$�,��!�u���3��M���`#ANP�wE�Wsr��Y��LQ=A`�D!�S<�ϟ}�� �%>}b<'y����8vʏ�>5�	R���퉦�O˞hۿ���x�������>Q��dl+	�;o�����	YGG�*G����8���!nn�̠����Ƹ\�cE�R�Z��H�9tA�sj�u�v������(Vݺg��d銾��˦΍�j#�c�Ў�p�h�Y�#
�I!�Ͷ�L��`��?��΀u3Ӎ���s�9�4D��si�իW��Ǜ�7/�����.�33t��q~$��*�
�$m0�_"SN�����`��r�P�p�gr*��|�J�<����<��s_�0�=.?��r*>���Ē$��o���Hsܘ����}������]�T>���_�4������(l��qH�:�s��a��+"��3�\�N,�b)䯶8��S�R�sx�d��J>U'���?�̢����>��0�YA[��R�to�h���.}Q�pm35��r��������g����&�%�=��o%��%FW��Li��!�sTbr��kUN�M6�jg6t��Eh���|_rrl]��S����"zv��vħϔ���v�Y��ѹ��#�dy����G��{Uy>�*?n}r�j%=j��k���Y�H�,5(�*�,�M���k%/xb�n{�����Prj �   �TeF�[��0�Y�)�۞�,��r, .��
�cѷ�r����|�
�5����*s{�;r�^u�����u���'/�����`�?C�O�`�<'�����'Y�c��q�����l=��l	���PuW��8#K�&�ſ����� .�2*�	��k��3M�f�>~/�-e��^'��������s	��|�͏�O�ס������3      �   T   x�3�tN,IM�/:�6Q���%�8�(� 9���<N##C]CC]##K+c3+c=s]S<R\F�&Q�Dcd��ab� �?U      �      x��}�vI�����U����~�&/DgJ0�:/�N�Tt����OU��S�Ώ�m3��잔JP8"M�vٶ���8�q6F�t��O�����3N��}��)u�Uo6���p�^m��vx�v��z����Q}��c�R�����<��U�A�����K�_9�+��O�o�|�ʦU�=��QZ��{e#}}aH���������'��ч:��Z�~�_��*%����I�5��|⏣�F��`_v���^i�2�d��Ւ7�dӶK]�:e^h���.�H���O]�IGR�9�߻�o�<���?�偾��tSJ������j�uB�^��J��\�r:�겯>W�Ӽ�����)żЁ��)�]�|=?��?~{��_�g�0���0�ˮEo���w�0i,�8�:ӳFu�"����Ri�$1�K��������/���5�$
��>�2}�D��ّŸW.���K�,��&S����C�r�����OYC/~����_�����ׇoǯ/�~����U�_������x�����������_������[�'�>�W�S�R����keÅ&��_uy��l�%;��*����z�oY����V���\�޿���\�r���F��W&�L\hս����D��%��j`v�־���*�g��9���?�=�������}�w�g4L�t�L^�HP�9r�PHIB��~ҤD���O6�޾�m~�M�i�;�y=����Au�L�3^s$����㏯�B����X2M�EHHF�rve�� �{ՙ;{�Ƈ��Ԓ�{
���4VUL�^�ln?�ެoջaw��6�~s�� �)	9�Q\;��q�L̑��q�^�98E�5�AN�sB7�l������~Pw����nn?��\��:����>tjK�]�Tݽ��J�.N��V-ҁ��9(�VS���])�4}�5(���-����崰=����e�0O���x:>�D.��l�t	��9?�Y�RG��Wڭ��H}�d���Ygzҙ��X�����>j?��֛�7�ݰ>���Ys���9���y�j����t�$N����Z���)ՓфVw���"�)�,@K��"�1��F��%�+C�ɬz�âM%Ҿ��Κb�/�=�9o��]�-
�J�͆$AW���O��x�{���������|<W�Y���m
�.]����Yyi����{��BS���)�h�@O!���]�l���zw��������v�M�wӑ'Pt:���U�M�0;�@��5���!wH�(�,����$J��_D��@E���}�`@�ͻ��o)�����p�N<����TB!��y��۶���U�Svo�-l\���B*�{�b�r/��hU������S��ꁶP==+�`s�������}Z�ԷV���$[�y��QY�%�o8��f(�ї�zxxP!f�Y��%),2���)(�U�D
Z��.)(���)f�����z�fFE��d���� �2@���M+�IM�|�aL	�Y����8.!G>=Q���Պ�?���?N?�f9��<���.�AK
#[�� `��g)/�~��|d�N����e`Kڰ�1"Ge�H$p@,�9�#�B'8�Ġ��b�hD��o#�|&SD� �tY����mX�ϗ|�JF��^L"u���F�_*B�I=�ZT�ղA>?�},�>�/l�ޞ����%��,� )oO�T�@# y�������;[�C=���!�8��zz��|�υdd�P��`0�n�G;B�yc\�GT�P6�O��3!JO��f}����-@�����-�	�gа�w��r̥,�4(�+���Ꮆ-B@-�fF��`B17��N���3Ş�PO��{n����z�S�a��$�(I#��8�.���z{u�nB/�B;�W�K��"1y�余9��z��}�Z���������~�vz<?���~8=>=�O���\$$y����#3Q��+�Z$"K@"�e2bW\�w���h߆��U0k�� �*�D`y�8^.ġʉ���%qR	�T���!�򆌉�I,}T�o��IO'臂����t~�oD�X*�ۏ�*ߞ�1�D�5*�T���b�O2q��/(|�����tp�����/ݲE}�@u��l��i�Li,xɒ3ІY^�$^k��g�C����_ꗿ�K�������O�q� 䦰:����o�"�P�E�̶�k	F�� m�<�YA��0mR�P�lYC����0�7RDX��.H�eA��ަK�Gڔ зz�.��=��=<*�|��p���H%1'�D���R]Ձ���<"��W*��DX�w��ٞt�C9(�3Be�r.e�j7��R|8=)�?�#Jd�T� ��5��Px�$����5�A%m�RBM`�j?-|_ו�`��	��>�5,>d��K��n���ݪ�{*�?���T�2����u^za[[���H��\*����Q����Rۼv�1�C��ǯ�|U�oO0q�@�	�tV��*Icb#���󼼢F��\\Q��ɹ\�嫤n^P�Dk�pA"�;<���Q=��N:~?A ��+�J�?�d�1wTҟ��8�X'�`K}NE#�]5��̹U`�� -����Oߏ��3�z%�X$;>�[�����PE�(j��=�'�L9�g�a^DÑ���"�M��}=}9}���L�O'J�}��'��Q6(��L��ԈgPL��,��jZ�\��$��r%	��"��,�X�t�f�~?��������=��{BW(�b�K����!����zw��Z3��S���Ζ,��Cp������	/5�|c�8�<SN�j���Y2��Y�i�'}�����<ɓ	Z$y�3�.(�3W/��.O��K��P������.=�>��H������Kp,
}���HG�$T�YW��ޥ�@�"�U0�j�#P5&��Iڶ�V��D}QW����íz���[�߮߰U��at��qP<���a�]l6A]��.HW/Y�W_�4�#� e���1dp+\4���	{�t��L��H =�6xѡ�Bbv��������,Ym���d�/Gd.��:7�/�������&���p@>�Y�)�`iX�e<}��+\X�:I�F��;П�����d�Fv�UR8d��)( �K�{8Q�N=kX���Ԅ0~����;�Ar߸�t�ӆ�'H���|��Dm
f��T!3{X!&?l>l�n�U��%���9���O�L`Ё�V���2��>��u#��Y&�}�Z�@���f?(�����-�|+��lnd������ʠpA�:3s��Y�z���M�~9��#VЊ�����[�R��p�R�7&����������>����#��}Y�4&���0G�ު\97Д��$ 8E�zb�!|�ڂ��QP���u�b�hML*BBۋ�YG�.;j/�*�09* �\��8�~�7T�_39_|n�_�_����ؗbl=��
���q��������w.��u�P��1�jڠ;>J�$�0tG�>�-,�T���5���j��|~�еa�����K�D஍�$��`���hm*<���pg��)��[d��a@!��=>մ�c&����Hd�Xr^�R"8�ж��i׻��E
��}|n�Ec�3��`ۛKE֥;�5��6v׉�9c!U�ڄ�I�!����S�D�F�3)!ɋ�D�x����Ւi�&���oEK �H�������Ⴎ�^z�M.8��UW�W��عg2�~z�>� P�ǟ������m�%��命��pYi�K ��
�>㨺\G!�����'{�pT 7�J��}?���5�%k����]�\���-|�I!o6�ͻ�訂*�PqK�͐.'�3�5�87�M�ȁ�+�l��2Ba!���j\�_PD�"v�j���WD��~=}��Ƥ�l[�:6��[�Pp��G,��VV�m,H��!OU�֓���5�f���x�$x�#uԔ��؏t��S��J�S��mJh�HT��i��&�ժr��`�8 \��)L�}Ry�:O=�"9Ԋ��$��0�nެ�t6����{���ti�k���$YT�� �qf�%:\�#�    8ietLA�w�~�����FD�\D�,Ņ֚%:�͂ʵ����RG�*S3.�&�W��f�����v� r��c�<뫎js2�2��"��'�� �'g��?5傒��t�4�c��p�f���?#q����f���%�ꌙ;J�}�ԕ��mN�������<�%�t���`�;���6NH@��\�pA�cm�n��D@�(Iɚ��g3���㜩���U]�K]m����c�I�E]���ǟۨs��L<��j�v�K��̧B4�q1-�+��R�P�f91��?�$�>�suI�^�B�r@f�3��(��˻ɼ�	�o�^b�z�^����;���]	b�l�-�x\�Ǹ)�_(�0�d�5|[yr����b>��l�Gpq%���O��L��c��.fE&��$F��
���v���N��V/���=o*�,�i.�smG	�}�!�t�xP͕�I�4� �U���ɤ(�Z�#�����Z�~��P"���]���U��g�zl�gVǯ"�L�~Z�}�o����Ӱe`�� 
���.�YD����Q���a��&:�ҹ��cX�x�(�^�К�s���y��P5&{��ڮMI�)f�x)n��(���:%��`����F<�^�������z�al��
�_�B�:�\wYg��%��f����y-��#>x	9�f��II��^f�&�A�#ec^�q�6�Jqҁ��WC5��ΐۈ�.U�j G�LP�-��B�43�Xrz����x-�#��%$|gW��Y�������	i�<G�~-�D�:j�R�{�X��F:?==F��BZ.&MՓ�8ȖbXg��%zW��(������Vd��. �׳ZGf��R4��m��e�$Fi��G����z ���-Q��L/,���Rx�\{��zt]��Ǡ������ �8�72rF�sY���<� EB?����N�E�\} ؽ����zw-u:8B�oM/��`&&�"�lL��,�+��Ɣ�b�Y7���mP� WX9�jN����/�;�!&6�xzzj*,�ƞIH���"����X��V�덫�r��n�t}�A������uV%�@Ie��lI�34
�YY/�����ʇ*�9�3M��}��@[��l����nu*D*P�~�����&��s)�%UAj��� ��oO�I1oHȻ�ݰ�}}u����b���|����c���3���ʇpA�zɹP��W��kB��"�~�f���P����S
��Z=b��^Ȱ�[�q�DJl8�n*	��!�4w���gӄ���e_ØyϿcBrQFnӗ"3��E�P�N׆�xog�����	�������[��@ξ�V���`�FK]�c�z卿(�従V�5 ȩ��h���D�������kX����E���bZ�R�yYG�Q`�� :	�$RW9gW�_��pW6?!{!�� �E�d�F^��I�����b')���_�a*{:�Ԑ�:Ƒ��W�NW?b>��]oK�\L����T��8-��� ��"q�\\���P��� ���C�biXѮm����6{x�f��+��)��/S_�tJ*�,�@������T��4dT7�NWN)e��Ӌ���p��J�=�p.
M��~��� �����~� t.�I:���_�v���v��^vk�C�8σ��j3�M�߱���׭�%̀T��b�@B�y�>+��w�'<��k���� &�o�]r�/�*f�t-XoRݐ�9�m,՞T�Ђ9�w��Wy��.����K�~eM���]�=�`N!���E��3���������}�j�'-����>�����������[7�"���̅�s}&��
���ǋ�a�)Au<)�Vh���l�M��#.�2����}�,L�Yr>�;�!���D	�+ت����^J(���[T�8X�S��2"���ҏ1C��Y��v�M�y&C���}ݬԹ:���?�}�u�F߭[���R.�c��.��Yr�kjnk��a+%	O�v�%H��l�({�D��y&��6Dx����VD��C�1��.���3��}q���%�=����;��� ĴEݸ!�v^ι��Ա9�/tw{����V�7�*
��Ԝ�"�i�U�Q���3���j&Q���x��Mf��_u��7_q����F�����	�B�һ3;10�/�=��0�g��Rk8��
�]�fV?PD�U1~6�*�6�Pm�#v�y��8Ecn��l&m�Q@ԕ�@�����fɅ��:��޴��J�!TX�̩����������S��M��1]��^r!�ۑ���⛴�۸���b ��p�
�G>lU:�?@��Y�b<���u�h�,�З��D�TE;kB��Ѷ�Ly�!{Ɛ�
�+g��A3��`̘Ec.X�A�n\�j�q8��_�d2����P�dQ�T���Y#�s;�a8cŶ ��$fPt37P����l�s˴�7�Rc��>8�53�����x���H1���Ζ\,�v�_��sn�Qp7�j�Y�s����R�����^�gq���%���m!��m�����v
�w��Ø��l>�V�-��|:��Us�u��b��ᒔj�z�_u��.e�F��:��O�m=�b�glr�o�\���������շ2!���G��^ο�͹��?�/,�ݯ�E�'���uw}jH�dj˲��s�"�s�)'�F�\@����|5ƪ��"	e}�+C�ձָz}�NH�/��C��W��Tښqb�)�"�-�ֵ-�қ2ZB^PKIx�N�	U��EL�8I����V�<Hb坖W�8���]��`��M?w cM%��m���2 �ĆZU�I�����Э>=.�㣝>\��^�V�������Vݰ�|ipʅ6<�(T�i�ǥ:&�D�Du���88��	����$��~�S���̵T(ny8�ɢ���J��h���.�`���:�q���r�}�Ro����j�o�f���A�_��%p��.�o��z�L��(���6�H�����6�aF_�_��N��	8���lt����t���j��Y�'4�����ʜ�V�B�g.7�'��/)�f	`%����:=� $���I=����
����x�5���F�UKx6_q���䪴ME�zԛ7�7j��R��q+Nc�| ���F����%ߙ�;B���	 ������jw{+��\����%��zV�.`a��h0�І�$�2��Qo��lT�aW}1��^���Xq�ɱY�/M�lE��8�ꐪ�b�&8���m��&
�kU %���Zg�=�}j�b��e����L�;I��
ʅe1���l`�B���c�>La�S���~���A)�]��%�MM�Qnt���v�j�""��i[�OǨUw|<����M��2m��.��7͝f�+8A���R�E���/�z��O0CeF�@��.� ��"�T�,6�Y��J�L�X�<�1~��^]��V�>~��f�*/������_�Y�#��:*+/�k�%_FW�H6��}���L�&�#w�����;�W\��q�eltm/�E�m#,���e��MW��0�Vj|X.Jj��5HQ��2$.:�r��A�:_�a�ՙ$'-���@���%RY扷��xv���$���5�Mw.^#(�ɮϘ�29�TE�hQ�`�)q�5s�����i�
X�c�^@��
�^&/f�н@Q;9e�e�����\(wj���/�3�]���\�-�Z�v/�WI�"�W �*�X�![F�j����z7��c�[CB�3}�<F
�ӓ҅ЊI�
r!�n�Ao�V�  �ר�6�0�\!(ƫh�z�x�+
�1�)��m����0�YW�(��l�rc����ݾ����|{s''�="��mʞm��B�Q-6�]�>�X�շ�9_M��1
9
�a�C�l}��q�Vȣ�D��,�~r�j�q���t��R`Ѩ���bV�]��0W6G3u�	$-���3f�䉼�1ղ�4&�Wf1��ڞ��ܺ�U�K�)�y�����LЖ�7���T.Υ=z:�~��z�9�-ǙpM �  ��U�B�o�j�u�����b����ǁ����v~Ʃv���%�N��1�	0V�܄=:���f��s&�����MIt�2�,����lGsiDs�Q��m��ӈ�k/��ɢͧ��)l#��|��M���0[���tsR���S�Ix8���s uՔ�����v�H\�y?Ԝ�����ong|5`��?�^��V^�5/S)>O��j��֜��n�p{|�J��'K�Ήl��'N���Y�ʫ��rG��#�.IU���*�o��M���,�R>m�=[���?�t��?] �̦�V<\���ڕ���q>�jL�Í7-y�yn5�`Rt��[��e@K��Oz�������O�g����>g���3�N]��c�ޱ�^�880�]3���W�P�0��g� �������|���Ti͖�	f��+��l5�#��;2�v��úp�<k>8��|����L�/I�f�ۮ&`*���_�W8�3�|���hAt�N#�:�I��y�1��D�ʄ���*_�}�Y�ֱA�DV��R�A��0��i�ެy*i�%�2ۻ��ޅ3�|eL�ۜ��i-g�tu ���5�V�|)��{\Jǘ�J�
q�e#)����Y{_䵠"p_�_Eת�]�2�_�R-IX����"���"��<�	fRfG����0�85�.y���֥���$�y���d�y�� FP�'Y�L9N��2Z�=5�bpt�����틾�3���]����XD�G�ҕ�T��۩;˽�V�';
��1[¿V5B)�x?��\K.�A���r��V�w��?���͚�����;�:���r[X�s�䧉��|�����{���LqX��W0;����Ue�&.�'g�s �K�ط.�.�e3�����\�.�(#8���ɧ������,a�~ւc�go��m��m����d�TW�*	��vOr�Gȹ���V���h^��ck�n�F�|	�$�E��,��-��f��.�,K�;K��Ym+��WN7^�=�3�r�݌0>7sz���A�ce�������I�8]U@2S�%�Z�B�O�����	H��""t�3��2��+��,��2����Mog�:�i�2�C�un�0c\�?c�(�gr5���i�J��d��7��=��b)0+��[;�Ħ̇�)��0;6���͗b�yÁ��0%���3ۢh�b�c-���]u]�O|h��ڂ�O1S(+��8���E� }�>�Gq�r�o�����/����0;�H�Hel�,-.M��-|��U~f1��
�/��7��|=�����R�T�zλ�w
P��4�t�0���=;�$E�q���L~�ql`z�D�0[/���>Y&ܡa�1{���(��6�N&��8�B�0�-�f�_�s.K�S	:Rj�R��=�eω4-l�^
9T8�^l��P$T�0�&��ϓ��	�˸�؍��j��[1��5
���+�E�h�|��[
q�pѣ|����|:_��:� }�2o�g�r����u�ua1{�^홭咏v>m b��A/b._Pc=pC���m�4Xs���i�i���*��μɿY�2R��8! �uj2�y ��%7�����x���1U�"V�OW����s���(DW�I�"->TP��!����(	���"I'"��0�A��3?de<��6eY"��۰�h��4(�g �FS���~���L�s�_�+���Yw�|���H�3����q� .��Y�e>΍y7[��t����I�YR�!.��4�ӯ�rB�"�M�2�'����Ov��39.-e+�h˥ArTc<]��m�L��(�<H�x�]�r���پ�X!�2/�;L�8�@�"_��O�ذ1��Ӛ�V�i&�_7�q�j��2�I{�ã���V=W��7�\hY�h�}�|�jÎ�/�Mݴh���,mV>s2sJ!�0�i�^Go막1���.F���p�Y�۬q�����Qxp�ӏ�P����d��>�-��_N�<��}�i��ۍ��R����P�}��I̷}ɍr�Ō�5m/p�_�MnH�9��f�\R��u���c��7M��|(�N�N���H%��Jۯ[u����Q�����@in���_��cO]������:{u����A�,�D5��br��
59���Y+���0L�ʖRMTt���$'cMd�-�5�K��8KAJ���c������</��seR.��Y��,PŔJh�Z
	w��o�o�i�e!8Є!;��p��s̞����5��p67�U(����O�DM?[M�G��xHA������ )��$c_�v�C����~��Z��A:�6;'��#:&�R~`��]������ �d~lU_�npu���p���yP�����a|p��J���=���L�+�%_y��KW&�ĥ�tw���f��q�[8�]�d�|�z��}6σ<A���B����������㩍�6?u����L�����rK]9.F6+���������Lj{~��|�x�T�	Oq��E���zk_i�d�$޷7T20���?IN2�0�3�r=Ѡ��WV����(��n�9�ܲl(��b�x����g1|�ZEw���f�o���Fq��rI�_�K�K���}�T��|�\�+�äm�[��������l�_f0<4�W̓1�u��/%�)���eߐ��`��O�E�������q�|�pɎ�W#ͤ;=��;_j�i�X����뫳�%�B�*��A$�W]gs���v���cW5.I����f�ϓAm\�;(���4Ey�`�A@�r&����|縌X�J�Ҹ��Rf7�y�}��d)�K ��������D��凒̕�y	S=��h\��q�"���|�.��m-S/v�g#����gu�>ߝ�l��ZJ����uqIP2Z^�]}=��2b���V`�4[L�x����x"�����p}�Uv�7x�z]<V��z��p��Bqn�����j	������0��)������oK��8��Z}ŋ�|�G24y���↢B��swR�7�R��h+[��l\�{�9~���a5��I��N�Vˏ�Õ�r���ך����7�t�K^�9c��=R�>�jQ����HҪ�� � O��sW	~��mq$Ǩ��j�E�A�?�ux���Sd�aQ��ׅ�h��,��/񂘲$��P�4^����cE  �CF�~���T���g��>�%v-
��!�<^f����f��(����
<����^�x�� P��'      �      x����n�H����O�˙E_8��̻�T�*�eKm�Tc�A�ɖ�f�Y̤nKo1�P�^ԢP�����d��u1��
���$��|�ϛ���\<����'{4ɛd�����I�z��ϴ��,���:��������͟�ĜǮj^~�"�Rsn�c���֧>)'R�6?�M��Xm$֝������a����`����vU���5�v�޶U�[�1�u��#����p����:։�`�w���O�mh��mW�xj�653������b�r�u�����1^aa�ڶ��n�1�}�5Һ+͍�V������]���ޏ16�z+�w�f7���/�s�7�o�*jM��z�aTB��9��pR2�����v��/���\Юh[�h��̼mW�v@޽�����>�xa���5�!&VJ�����Î�t�%|��.��K�fƯ1Xd=�t =�`��06�C�U���~h��޳6�=-0`�{Ri>��)�3�C��-r�8�n��=����������D5�z����ǆ��pR6�>�.�F�OKͧ�_�}�Sc�C{"��K/�~܅��D'�D�0Ի����|�T�����Y2{;D��9�wr�zTa�u�tn,��=nc.{�E��{�+�[����ȑ�"<;1Z}i����"r^~��d������J	5�m����Ȯr�����g��,���]T䫝^~���{7t6~��1��sc�����]��At������Ǽ�d^���Ͳ�BW�_:[�.��\�_��{�u���6���I��b{�����t�/� ?���b��\�0��ɽ�`����2�S��b<Wn.�=z_{Z!r[{�f��ם�+�W-����*jk���Y:�����c����,b�{Tb��oWgm}? a�	��� +��� �f���� l�M:B��$B+��Gy��\�=��b��}�{r=�G)�h�k�}E%.��%6�K�#��DÃ}� ���Շ�Ì;E,h��1|�*Ԇ�o��]=�l�Ǫx%+W������
�N�k��l���& �W ����O��8�YaL\$5�0�EO�{Rʛ�j��P��e�^?�CU���rs3V�[�Qy�l��FB���%z>���5�A��ӫ�,NY7ع�Y9�yCT����ԓ'�6�*�'�fM��>�ry.N�#�)�a�dwuk�]ω!��~�U��)vj��StM��d�� ��o43gH�E�r�L+����XrXz҆��}��`R/�/��<m˴c��A�0�������X�\1aW��ʏ@�C�l;�<*%����p\�29�>4�c��iGw��v�^"�ss��s⿙�=vxW��YrzB�!
F�����Yp1@�9;ٟ�:�U��3�Ev�gm���0bG���,߳���n9�
��L�M��D�iDBm��B��#r�lfX%�����	(O*��8�R9�s>��\t٥�1�=9��;ի�})V̌_�	�'Ԗ�^?�@؟!K������!��G��1�Cȓr�����
����5O�Ёq@V�#��La�p����A\$(c;��^H���F|=ҝ�#v�����C��V�X��~�m���㼱-�G ��I�G{A��u�M+Rb>�ك��.%��u��pg�w��|iw���0��+d��9�}��5%�	���٨���0�8@�ãrڙ�c��J�8q�d&%BMBʀQ���{o���Y���ǃ
���r�#/n��ڞ�<�Yb,��a��6���eh�/������V{v�a�����	�.���9qĔ]H�y���������/���iZЙ��ّ�~�6t����q�(r.��?� �]��1�c�J�a<��$�@\UH&u��$�琣ă�O�
�P�l�������c.HFb���W�D�}�7����o�y��.� N�ʦ���ٕMcJ��AFj>�s޷�}W���8@�U#d�{Z�\�c��������v��1��QѸk-�Yh�?�Xu�T��D't�z�\����*��ܲ��8Us݃���hɜ��#��ـ�]��I���rX�S]�HPk3��"<Qą�gЉ.S�~���q��9�������*�6��"�6s�ԕ��|v��3���V*Hp����H߳t�(����P��m��KU�qŮ�u=��;��Ds|@��ge��*�ײJbhyPa>և��7�{z7��-�]XS� ik>��c����8]v�< J	̘P�-oK�Y���;����v@~�G��u|@����S`��k�V�7L�(
�Cx7�b��%�!j�H�alL6���q	'�V!ܒI�̨)�u@�O��t�;����>a��,�5ֶ1P-�n�b�,8:��C;����䶁��C��9rvǱ���J]�{�ZG�
>�l��+(�3�%(�s֛P3�h쬳�C��T0���|m8h�V~�~�����l5��F@��ä�����ERE��H���y����k���U����bK��r�6��S�4Ɠm�_�%�5v�@P�8�T���������>ޮ���q.Vy���J�&�i��x�4���"��jĠV�|
:��)X^Ey����W�����i%M�Ƚ�%�p7B���/�C"m��y�_�5�����.�џ�UrB�3�i��tFP()��w�C����z{<4]��={���*rn����0�bq�7f��m=��'w�N�gM�g-Vz����Tz�.�-*���'p	{�Tt�XC����
WH@}����a�Nl�p�Q�J�a�S�:;��+�̈��̊RUx��Bb��Xkx�~���w0�T\6D���!�� &�F#���d�A���q�]=�)�QdW���WA���2�]>��g\"[��`P8NC���]O��U��:�/���(�B.-���j8�&d�2L���B���*u݄]���F��&��mQ4W�QA>����{�V���>��^�6�3Y��u�i���b�n��5�z��������?V\�Ǻk��.om.�����#�r��ޚ���z��5�N��\:4�q������ɳ|1Cx���񙹇NM�*̇��ukW�,����%t�CY?�+Y��~ l�#?8/Jq�­%,�J�
m�7�q)��V,��8"�qae.�3�t��/���3I������#*m���>�G��^\=���L2�ÿ�BrN]�j��IEc+��G:d�e�Ɍ�W?�ݩ�����+}���X[���]��P�@������Y��o^C�pkn��w���h�k�ek�K�A��)#R�G���_���iR�B�r�.\6H�8�I9)V�*�q� �[����h�t���>~w�w.�'	d�����
N̍��X�,���be�s����'~��]p�#�~�4�2������~�������aM���x<q��^�D���r���k�%��/�df%��Q����=8���,��b��嗡
�7Q�L��*{#Ps㟖N��>X�몸�K�+ǣ��V(�$��v�&���1�������pZ:Ӥ�p��J��	(�W��I�?�a�9�[r�?w�Id�@,>�`	�����$�`���Z`7r�g�qd���@�\�8���+R"���;*��h!�D���١����f��R��)�m���l|@�r�S+ �hd�m�H��rZ�Wr���ࠖ�m�� J2.4_��C��ǭ�Ft�)1�_~SP��SQ~]�@��ϣ&!�GdA�3�m��	�yT:uwW= ��x��B�70=J�X3��7��R�,9���mΜQ�y�r�ּ#'<)fO(t����G$��I��F �+�����|��PY� �����
YxT!�-N�Km�4�"q=jxrP��E����7�0�"~�D*^e{��P̼�����%�b!qJ�A���Y�y�n�(6�D�8�J�n�o�z�hq �fǅ�� �ٜ\�8�>	�#��ǥ滚N�/��5�HN�3���"�ēr���
s=v.�~������n����vdN�8��3��� r2 US
�D� =!���ν    ]L���
�*�(k��,P��p�|�B�νq@v��b��~_������>$9 �ܕK<I�W0,w��ܕKT}�\
�2������Ֆ
(�n��c�����
U`�z�ĕVW��)Z9�E@M�`�q&��{��i��[��%��
���W�q,�YUX� ����ݺB�KY"9���e���˿���,Z��)f��������n���)��w<���������&���d��6�x�H+�b[���4�2�f��-��eΩ�&�LV�\$�b<f!jqR�F�@�.�Q�d-ÛE����#f�)\��ܺ�j�H��ɟ"J����_	ҋ�CO�nQ�>�!!X$'�~��i
��K��6uE+��eM�8���S�Jsٲ
��S�-���)��va�}��Mw� W�ǭ��8An�+�ӏ�I�4�ɩ����Z�"�8׊�U�(۫Xl��|\D`F*�.�V�{��K7:�t��H[)�����%��������܈�UUxW���-Ǧ�WV�(�G#2 O�RPkZ��+|c۪F,>���,$�dM��i�^7�Pnfџ*x��X�(\Q��沦5���k�uc!rR��@2Q������rW���2���:�ȅ�Il)7��I�72�����.��h߈�]�	�����[�:;Mf{��GE��h{ ���۸Y�dP"w�f�I�a �g�J�Ǻ%��x��[�b<a&ʃ���i9��P�Ɠ$��LuT,��'{��b 7�Q�1�4��z�h�G��>F9�87
�7U$Y{�9����$�yR�4ޡ��+��S�,^O�8�wd�z��F�\=�\d�tc��o� ��@��J
`���Ξh���W���K�b��_�E�Q�[n�Kҳfw���P�if)d�yX�b�U�~��q(�7��%�7���\�)nxN⮗-�ױ�
83���G�Y7�#sv�����4��� 7Y�|�܍�M~-p.�Ԝ��
����t ��B�%:
%(V1պE@m��]R9��镱�f�v�E���%��H�O ��
5	|`��Ǖ!�;���'�g"��T=��Zh�4���Ĵ�P!�u���"x�$
Za�u��P��w.DvRFD[[�JZ)GZu�i)�B*�����ߵx�i��c}UEc�>!iF�%w��*7o;��tE+��(��Gg�P�R� ���n.�;`�+.K���l[������M������I��)zX2�Q�G*\iF�Je��:�VF�d�宎�l��iN�μ�I�{͵�/�_!�i.�7V�C�Kb.���0)�T.��%�����pύC/�<��S���D,~x���CܘI���}[�p�H1Ks�O���-�l�z��g��2+��|>Ey����.��z8�ݔ� Fz�S?��=��i�쉫b�$�C��GeN���CZ�0"o޳��}���n��q����J7c9�/�N-���1��5�+ry���"%"dW�@u���0�
��=*3�Mx_��.l�LuS�%,�ƦM�/�1��lE+�m_��g
�u�1��7�DR��N�ކ�d�$��J$\^��}(��5�h�U���0>s�+��<��2��]�,c�+�d��0>K�G��F
���C��O+�O}���I���S=<���Y���x�34
���8C<��z�"�'������6=��������wn���ǖ��kea)�hk��f4��]%��� �<u���8�l���w���=?iKp{��t��N�[D�K�2�C,!�ʹ��kz�ұ]��C�$��&��8�R܏�r�
%��=���4.}yo��|�j
)}Y�G��P�䰦.�`eniq'~K�@��B���ꚼNdOy�F�ArUT�PJ�v�(>����f�t_��!n����:�6����q۩���}g�����R�s�3H;�H�09����0.U[]�T���:���+�Êו[��8����;l��L�rW��v]���qT�(Vj��h����i�k�^�� �=�=����s�J�+�#ZX���8>�ױ�f3qo�](�y�:J]1�����o_~}�`\���<1����?�� ~��e�ҿ�`l��oi)�����3p�.���R.���ƶ�cS��ǣ&s`���n�4txOC-�d��vB�
]����8�����hW�-R��t \�;��_'3-�BiCGG>0�W!S�G�e<B���j��N�I\����sr~X�z���y�H�zae�=p'E(�{{<�P��t�t�^ކ[l���8�5V��cU�3�A� V85�`E��Y;�i�l'�m�J��O߸������
�K�bk�d�է����O+��u=���L6�(F��KM�	-*׍�}�7+�r��r!��S�@�O�x��ޖ�HNI�=��߻f�g�l�M}ǣ.�w�"��"l#2���L�J�d*��0�ͤ3.�W^.]=\)��:�W�(�� ��:Ū���
�KlR
��+�+̧��!I�*맅;=���3��-]�U�&�t��h�ԗ6ؚ��l�n���p�K%�ΙF@�X�ȍ��zBT_m�����%E���0:M���o�Є�dxT�,-��fwA�7)P�}��qGEbk
w�Ht�5GQ��U�c ���FEr��&<p�a\��0@��t�%�T�TWQP�������8a=��"��Pl�#�ԮN�A��x
ų�Z�ѳ;���UG7M5J��/]�-2r��3���]�;�]�&��l�D��|�q� �<<�����A�G�h�5�]6�6S�,�)]	F�jChqT�G�8���5 �%u?�u�g�s�y�V����A��G�|З߀z$+͗�m���gqy������g��!�i
�`\�����,E�x��0";ݳXx�m���ø���֐0:�Ƨ�#�x^i�Ze�	�>�q�W�R�R�Lޒ�8 R�
&U&O=�]=m�F!'��r^�P�A�
��ڶ��e��1i�wM�\�b���e��?u��"�9�\�c�b���ڼ��a���x��R�v����S�
�N��4h��uM[�[_yHJseH:�]QJ�4m�N'E�K��Q$���<�D����	�,��\�!�
%�T*Z_؅� Kڡt5Ӫ�A�~��d��� �X�g��P4�PN��ʅ7���]��r�,��0�/�ARQǩ���q�T�pE�u�y�~���{ΖE`e|��9Zh9�N����
�ɂ���6.O�T��sx�"m�(f�_HfY��=b5/0�? ���J�K�k�+���q�l�<���L	�Y��|����L������h��V��$2��d����7������bw�����h����y6ߝ�'�v@�P�D{��$���Q�T�BTMzhڋ�m��0�v,ͻg��m+#�#�D �7+Қ�zs�l�G�E�&���U��|��~uUU�4Ndyt �H��h#-�u�H�[���4gǪ���9������
���s�Jj�o��Њ�B:
�� \�$�lk�*&/6�c�~RH�M�Jý�@��g��x� ���7錒*+��~����X���e��.��
f�x�d%���
6X�i�
��,�?�i�*b9O�:Ԃ�)�ܚ�#�k���S�ҙD\E��ϥ�#|���,�ӂC=�M�M]U1���8;�������u�F['/7��7�n�q��(�b�Eq�BF
&������m]=���\��I�rIn;�om7N�ێ ��rU�d���J�mS!3~=K��FZ���g6�S���Bl�2k̸��E�I�·z����QE+�e_=b�z�f�3A���J�xη�ַ	.�U���%��9�`9��I6��8V�;�e".f��� ��Տ���$�h/�;@�I�27y��W]a��g��XK�{zZ�1��<�"m8�qh�(�Ǖ"膜���t���s��Gk��F�0����<:i�yB&#)��twl�jU�K_�-������XV���"�	�����t����6�ٓ6��';x�͌���4S=��	\Q��=,3g������n�x�{\a��]C7�    ��н�B�y�b��n��*<O¡C�G���i�5�4Y[y!?#��'�|��(��Bc�#&�b�c�!�5)p�U槬>�\\�����C���n�Xx��p]��z ƀ/����@�����S^2�H�T�����[�v�F��a,FNi��)�Xt�'h�`�F�fo8XmC�2���ݠq�#	5֨B;:�W��/�T������f��}�CD����͋��h�v�=ѫ}�Պ��@-Q����#�n�ak����8n40������Y��M�� V�p%�nT
aqjxl]�����5*�� ׇ�M�wC��*^o�Dw4|������'h_����/��I6ծ��\8-�i>��F�r�/t2�`�.b%�#PC�a�	��HdC�<�<16+17����VMKE ����Dz2+��ǧcDҼ���q<���,$N�\����g�X9`͒ΆǗ_;���>��̼�<�J�k`n�s�	�M=��9Po��B>�cm��:�=��i@�߳���!�C�Mx��&�]z3K'�Z>��g�#�V̴d������q���ɩ���6=����Y��M�������o sb4;7��P��Y��ڮ_}G_�س �c����H d35�4����-��MX�k"5�8�ei^��9�7��>Xd>��&w��m�\;�r>��Xw��f� ��z��{~��O���y�QX����@=����4鐋��I2N�2�=+�pai����}x��Bb�t�`2��&w�z��\���3�k=����ZW4+#�t:HXW�r�����F�H��
6�]*1��F�dP>�!enF�h�и�Ik����c�gǗ_c�7��]p'8��`rH�2c����%d��W	˪i\f�<;�'��{@QC����x��м�\�a���u�4��I��%�.���o<Gf�6,@��[`j.����}�׆���_��Z��],�Ou��R8n�x�R�&�ŭ���	��Ѥ����+g=E����չO�)��kTK\�s3ޝl�hZѼ�܆7�kP���˿aMR5��L��� �7�����:�`�J��骍��rԴ��˛50�˸5�0?�ܴ��(�u�x`�jv.�������^��!\=B���;�Ӂ��YkWZ(u�}�sR�h�Ƚ��$7|�nu� U������3��DF�9=+7_�֠Ӫ��eY���,�+1�ȸj�Jͧ�_���e��)���ms�-���9�k$��v����\chx�G�X�%\U^�2�>⡦?��V�'�e;���<�*���<�s_�5݊��は4��h�M�hLx�'q6T��DR������B�ΏGz5�`ӧ
�Y\�h\h�x��={���p-��pAI�J\5{ٰc�%�&��H���S:*6�@����S��y���7�[�4�uБ?>�H��[���8C�E�T<'���Ҵ��Q��T=��V0�y�c-��M�Ksv?O/�FX����\�ycc�ܓ��[�/�r��
L3��a�է4��9��4�5�~�ß%ј���C��Y&��L�q8��q@�qE�Ѱ��C��rWK�}�b���i���Z����=�n����(h�bq϶C�0
�U�q��$��E�Ԇ�ik�ACJDN�t�[����\U��
����K�6�ۂ���G������+�G��t�%��pO<*u���J�.�ĥ����|���C���tꃣ�����v��'.��8�����J9WS�̜�,P��P�T������2x���6�$��(�Z=nZ
V�Ԭ�_�l̸5�u�pBnm���}�H\S�с{��ߞ��˚+�VW�����߂;�543�m_I�F�o�*c�;.�=��j�ƑVp��K���%�:��i	�^#t�y�ڑ��\��p%F�_(�YP ǣ8J�Ŗ<*w�!H�2 ;�o䮱
��+���^�d����*޷�[X8c�J�d�A�$�څ�Ѩ�H�kLV�҆�$)*y��#9��~��5�99#�{%��9G�O4D�f���綂�=L���S��(�	�Ɋ�fh ��Rn|�lw�����E��,w����]�\����1P���X�#F�Ǖ�z<���=W�EuRA�q�'(����pa7AL���װ�����8Q<�A-���NzE+�A��q$�p�o�H�W�G��-�8�Ĝ@��3���[e�%s��$R87Y�e΁̖�e��)P�_#���>���z��L��_N0���3����7!�zt`=z.�csQ�扴d#N��Se>@�vf%�7*=)��#��+�<0sQ.w���yX�����o�!��S7����6�4�dp3�j��]x���nE!�"�K��v�"�ԥnSi�y˝��c�5�
C����Y��+ђcE�\I���Y,���C=pb2�`}e [�P�x��4�Y��4�Bm�M����}�����rQ
�&�:��mT=�WCa��BT���K:�N��NR�n(���������m�n27����������_���W�ڼ����SE�������}��1\�-u��T2���B�/
��O�����%A�:,7���1֣D��ڳd�WЇ���r@��b�Q:�<��P[ )���b:Q[t�z�,��rEs��M$�^��gĘ)f�&<�J�*���%�� fp�{Y����o������=�dZ
��A��z(R���@\9~� ��g��?����u��s����LM��%cfDL#OK����>��ME frz����K�L+%�����L#�clw���W4�n���3Ś|H{Dj�/wC� '=-Q^��\�m\ƞT�
�`�����?���&�W���x�/)c��m	�FT��|��2���up�)ХsJt��{��<����@)��e\�H�+�4��Tx�DAi�e-����^��H�N����A�כ
YmN�*m�3r}��[���-�8(��Ƃ��N�.�|�	\SM�����}U���ȟ�p.���Z!3m��Mq�ӰJE��r����BJ�<���Ղ���'{��L�`�Z!�dI>x"J�9��L��S�k���2�$e�Rx��}�K��Sx�H�2��>g^>I s�v��.�`N�œw��p�^�6Ļ~��2��X�=x;(�V����$pY�WOܹ��%UxY�"�H*����,5��[�2U��K�qR�#kl{���7�T�����n�FP���ʇ�a.�䍹��F�'�%�=g�#�X_Ɍ�85��.kXjX*�S4N�u,;ϛ�P��>�> 
#���
H��BQ2����	���"錓��|S��0��m�쁟�Q<�	��P�\*�=��<���!���J��U��\���"q�jZ���'EZ��`E㮏j��>�r1�/�p�)w�w.&�YW��
���p}/��̹8���,7�r5E@S���U�����S8'.=p�Z��W���h��/��$$��Hk��)`���%q��1�FL2#��m�-�hy/Q���l�*��'��奯�&|j�ƕ�r�{N��X)[�E8*�1WU�qg~pi���g���k0�0sL�Y�\���V�����+X��|��uS�­Ed��d�5M7��b�,ηpݻto����ov��>Esfܻc�w�.yU!�I�W蘻/]�k"�\�[�y
#�Q�P#Z"���Yׄ'}o��Q�����6BXm�eo^eoF ������gHU\����s�=�]�Ef�DU_�vh����#s�k�M�o�̰D���=P{�h|��(�htZ ��N<O���W{B���ُ�0 ��@�����Qs9�!��HѸ�H�x��\�	N�f��FdZ+�:�NH	�����ã��"{P�Q�"�4I�|ӻ�ʑ[|�S-*��bSKg��o5�g4-�#�zP*�]�� ���E=���y���AIu�bS0d�Y�n�YT$���ND�c�L/EU3h�FR��*�/�0    ��	O�)V"���(/m�N�$�������z��AGȃ���� ��+\��,�bF%,E�(\h��B�
�t�+df�F�k��<-w���%�Y�y�j��e�Q\��?4Ȏ��r���I�a�o��=�v�Ͻ�5X�[��g��a�����X7������GLM�ù����I73�k��'�/Ml��x2���x��bO˧"�(V����ƍ���>��[@�@���m_=4�q5�h�^�;zŞǵ�7�I<_;�<J�|�+��`+aJ��mclg��s��@�C)")x�R󼍎��ë��{}g�е�q���6@9�M޼�ފ6���ó�Zur���bDEN�`�����t���Sx]��fߪ���
��a(��m�Ѳ���)�ph��+Iv"q��o��=���}�8�{-ʋH_gn�q
����W)��P���<�ʑL��y�P6��QdC�T�$���,GV)pF{*K�0�^���l*�t�BR�ڈ�><�YK'n5��, ��@�p���Na���G^/r�L,�ؽzB�+�����HXʳx��_��Gen��{\n>�G�#zR�*���E6��IK,&V������������R�h�T�̜=�G�G\X�9{~���|�ɳи1m�F"`�,,g�)��I�EXR��̤S(���Q���?�bj�K��}���8`�.01,�ǽ,�'�g�#�$B��[^���J4Ҳ��R��-<J
]wu���#h�r���+�}��۩A�+���#b<X.�I�,�Ik��?��[ܼ���cGaKs�,������Gn�-� ����)�Z@\��P�������O�t6�#��~��Z�p�M��_}�]�P��];��z	��x�O ��X\nt\���s|)`!�Z�7�"mȃokU��K�e�'[���Յ��21�u���l�J��-�0@@�S���':���~D�H2�X�=�Tݩx�y_�!!=�*P��*AGGx�5RwQ���|��P?�>��P��"ُ�d����$�Qn:��B�Rs�܇�)3�C�?�'l�x^n>�;qʺ9����TN���C�ΓxV�#�==jJ�ػ��BO�Q�(A��|fM7��=4@vO9:w����Q�y�oڦ_��X.�F�M�[��͌ cC?�g-�Mh�s
%s��,�����1	
ɡMzkd�L4�R����B�FW'UH��;Y��㶕�P�>��2�nW���TDNC�{�1�0_�pO���}��27��
��,�p�?��Q8.����m5��d���=�'j�Q�Q��A}������M-\�����v\��
H)`�X��̯҅���ٳ�_"����ĵp����9M�#ЁǙ�`�I�Rq�]�y�OU<ֆ ����0OK��>�6�وg�}sz��\jwx|��=!��m~E�,CM.�~0y�\�^~�SY#��ǟX�E���d�
��}���[�>�2,�Z+�ܧF (�Xd����uX%
Ǟ�>��t5lCs<��h^+d��+�l�(��W{ޘW�PN����Sy+���Zs
��w�4 (��r�^�
s��q~冻��3�r�X���D0E: ��3�\��wH�F�8$
T�{����r>eS7:򬽧˳�O��}bm'�g;��h�N��\�`2ثW�i�70�V�27��O)Xn>6<�4ʓɌ����� ��nG2֠�s� ߳O�+Wc||�U�"~�K��d��f����˞���	��B�����o�'����b��-0aZ���s=NRK�[Զ�0�N��<��9x'�Fw�s�i��ٴg"��?C��]�[x�#����uá�1�l@�J�ꩰ�����?-T�����I��'g(^:�����w���)Vn����Xr%��é_�����߻����n&M�O�ܿ?���X5���#��c��	o8�D��\(k�a��V�e���P,C�д�m�[�b"ж얝�Y&�v���X���x�%P��i�lbÑ50�;��F����4���/d�����w�@&Vb��g�iRj�7-���&��Z��)<��Y�ea��E�cߠ�V�G�[����c\�������F���'|��J]�x�h�q��1`OzZʧ���t@ӕ�� �.ƣ:�=��=�m�
���aZT�7���m�n̍Lp��*'����ܐ��A`�f3����5�ů�3h������Y"8��q�4n#8(�a������a�W��}��عÜ�E�����\=������8�N�8���egt�'-1��]�?�ϮӬԈ5���nP���$I~p�6��*ؒ���jMc�nɧo�˥nFvL��Y�,�o�#P��q�yw�Y�G{��d0z(�]œ�"��ᾏ5f�y^a�{��b 7�c=�U��Y,#��l#���m9���̰)�\�Y\��:j�x-��h�Ѭ���m��]/0�jaq-�M]=@��rf�d����g����ƣ��J�~�������54���V=�0�>��ή.����3u��c�,"!L � ���Hd?8Q��@��e��4�k����AɃ��V��S��ӌ5l�e'���"�X`+�u�W,��]�*ҧt�n9Kc����֞��7��m�y��m\�J�e�aצ%qVP�C0�����":�bƆ� )c�w�XS(>}�R�&�O�_��F��g\%�5�4� ٦��5�=�*%m��C�5i�l�����i��:�H|%�RU�����x��eilN'�[���`�ԓː6`��3�Φ��SV��)�GzGXlx�L��t�8?�Φa�� �bm̻f�xO�;�!܏T0'���Cΐ��5�ǆǱ�s�q����e\���Z����G�A�=�'u(�ķb<^f�Bn)�;S,�~�U�(��tM��5�Q�� Ĉ=*�a��}�LJčB��J齷�=+���i�ܻ.���
���P�0��;hT�E��4��{���8�\7�A�4#�K�Ӹ
q ��
UN�؊��@�^"�kA\Oݸt�!�`��F^av��e�#ݖGĻ���\U#�t�Y�+��@�Ȁ���,n����5���������Z�<&�������̒*���fq��!�Ce沥�5�SeUxǨF�#9�}�7�1W�ՠ(X������ؔ��f�`n!L ���Z=J,�'���8�Z�� %bˢs�T��'�&,�LW隐>���!\�ASE�������м���xs�ɫD����̚L��t�R�}��SU=��Y`9>P|�%n���w�Ɍ�@>�w-��\6�;āXX�Z�#`/4��g!�-���Q�����ZY����O��i���#��TU����+V��}���QC�9�YrC�]�Q���F��Gѹ4��e��\`�Bh�xX�M�O��h�9,�$C�z�>q��d�i��.�l-�T�̼�u˅yhte�Cs
�)W��Ϥ�7�=��>��1q��ĥ���;o�#�t�q'��k��,��25͵3|���&�ǥӰv��e�%oҙJ_�~���Ia+�<���Լ�j��/�`O}xdͳ2� ����'.�H�H6Y<���=���=T���>U�+jo�
�ar���z�����p����lF2����ѩk��P���&�2���<��:v���	���{�m$�0�����)�ꪏ��6�Ӹ�34<��`NH���>V8q(�ϫ.XeB�X0�쨖�G�U�^��q�Hv{X!��}_~�3�m��K�(���j��,��j�4<��Q�Z(�i���T=r�lfT�D��� �UO㛬mGȣ�\�E�^��q$5�P~lXS2<��iZ�].�k��=�I��B�;�!g���d٧2˙D��ٯ#�<���_�q��WN�:83���{L�B�)5��*���w�ˆ�M���&�2�� ,�O�}>�Oö<�V�f�h[�[�D��'.Ӕ����h]֏���#���X
1A=���g /�Xd �  �>4��״����~x���yO(��S�O+��t�5OT�iwIC�����������`[���,n�<�0f^Ӓm-��Q�1��N�2����Krͷ=ǟß˥LI6����{���_ڂL�h�F=���6v�
��Ϙ�P餟_��H����>װz�6�@�ºJ�(OH�y3��n%�I`�����B����y0��`eq�T���P]\�J��d��ꇡ���vǑ����n�
t����8��*��Dܒ7zͱ������><uQ�����%Q�T���G�,�� B��;�@}��I}A+��[��e_�@�3u)��M�h-��<+5�����&�?�
N]P<�,ŏ/�z�՞��%_�xB��+�Y�F�����Nj�+��ȁ,d�x�׏P	�������O��&�������+%���W0QG��j�4�L�8��y�PX��~o+`T����Zɺ���u��d��F_ч��)�M���^a߃]��������L\�)�Ɠp��B����gޏ�/��C��2Z� �(X&�0 �5�r7�¶-���U�O�E�C��o-�nY���2z���^0�X��I�"�@4������VM�A6�f���,ާ}����m�\���� �Eլi.W�,�8��R��1kgw6tj�p&���}�Ï5�J�o f�jXf>�Ǉ1�XR�ܜ��?Y�{X}�Տd�����3i�^�|��b9����ӟ��� 3o�.      �   �   x�}�;�0E�ڳ
o���؎��@E�� �#4,� �O P�w��|V�k�)�mU�E��fsMIK �h0�!`�����>q�0jvB�0ZOC<-�Եi���&��ц�^��W�a½M�G� ��N�E�$��s�{��~d�2b'���y�,�{ 7��I�      �   &  x��Z�rW�>z
^�����n��c[Xv%���X��-�R���^�����_l�>� 3�S)�ݽ�!O�O����}"�`�s�x�޾z��ٻ�j�;{W��'�B3.�`�OO�/�������/�?�-._\-/���?=��Z�O��d1����W����Ӣ��و����vz���Ҹ���r�IK)g��y�3!^Z��޲�z������t�̪E=_��w�]��W�բ�����f���R����z���*�.7t�.�bo�G�����	V�-�xy�Z̟i���W��k���/�Z��Z�DYf�uZ;:���eWbYC]n�R���hX�^���&l0���;gp2g�5��/�������\���������ʅ��~δLv1�͘0f6�_���~�Ot��)�ӡp�d��+dG��v=coTr_H.�`VJ�XJI����lyW�[�w����f�ݯ���Z�R�S�����Z��zS���� �A��������������q��^ �H���Cm�>��8� �3>�o�������`���o������|2�Fl2����C}4�����Q�z}�x g���x0�a��5L�*
��>�[����A�:���jY8	��ON���������ޖ����M�������)L`qq�4������|5�O:x��r�嚸G���=c
���qK����n�3J�`��g�#,�����8��{Z��;�{�����a��/������R����l�l�A�����B�h�R�7��W*�k�TL�|�� m�1�y��_V�lX��A��8�quS�����aR�aXM�:�p�oL�#<a��~�R�[FX�R�[�	d'se�N࿑R{ޤ�C�f���翳��MyZ"�^"�����_(_(/��d�鷱®)z����ƵXFİ'q )�&��a�3*+aê	4A9`�
q]g1�%�!�p��|1���y�_�����P��_���kv͚��	>=Y�H���mʣ��R&%I!��?����lЧ3^�Hzì�xy �+ m����=�=xit������{�\��"<9�u�9�?fR���1�Q\�a�Ƌ�ߗ�l��=���#�0]�!�~K��.8�X"�M�\�8R���JO�΄ׅ�I�����K�mJ���۠A��AWVU��b^��Q�^���z6o��P�Ha�P��3�ќ��M��4��d�Y6�:�X�Xb!ի�2� '^#v|L%o�����ܴ�4'xp�(�Mg܊����b�3qʔ;�o"�xz�S�Y�f��T��g�/�P+_��|�/�����F)3E�"��G��Lf9_`]���t��M�h�B��j8��ޟ�����:�'XmxY���-K��u����ф�,�h#�B���	SȦb�,����6���5˛8�T޴�bq���l���� �몏������I�~{U���#	*�U�U�d[��T8L��Q,�pۑ|*'�y j�&�AIoP���I��P2��bfqE^��%���f����q��I	��'d6�$��*'�z���cs��.*�}��{���nonn@CtF3���BW�z}u�͖�W��el%�l�{h0�#4U"d��W�W_���G���dn�)�|^و���ʾ��U����ZF����İLM�͒.���$������u@�����fK�)
&��)�6,!.��=^����:K&"IR�Nk�ZKGE7P�"Qt�4����:M��w���LӺ����Q[��U%H2�E��hu[��Z*MO�QU��04İaZ5&DU��$�4 �M����G��G�?4�T��$�`ͭ��@�%���fO�[���@�P�F;�P�f�Hf^CZ�-H�m�cA����3��ꌝA��օ��9V�ֹ*�Qmn�mо��n�n�ne����2�m�/�*r2�4�y�\ͧ��z�����g�;������T�߫	�4��4&S��&����Rw�wb����r�d��|�c�
k�P����5�<,���c�,�7 �{�DL&�1
��E��?	�R�f+A�˦�X��f0�&�&h����K��'s/rD���A\�v{rto�yЙ�2]hޘ�?@L�M��B�������=Iz�$y$3�Q�hl��gc�ϙ�ಾ�ŵ���ޓ���i�VRLD�a7�N��o��ۃ�}���0j}ļJS�r8w3__�pk�`k��$�������{k��S;:��U������,�h۠�}��*jri�m���Y7ښ��NÂ��+��K��������.A�Fnxot6�m����*d�R�V�)��8��D��UQ�YM �P� i2�bR�g.�<�:�	����m=����k��b�I!��ҍ���-8E2z\�wU������ۤ">�,�����Q�)	i�4~"-I��oڔ$'-i�<����·��.��/:~M�m�&���{�*���| �,H9 ���6��f�D��nd�w2w�_���h+*���N�T�lKvخTi���DsSEH�הG�)ݚ=��7 �`r�
�^�<�/w�3�G�fI]��^om�S�ԛʜ��a��?J5�)"�44I��*�0r�G���#���N�Q���A��������&HT\v9��A�ZH����T�&�$o�M$͏�q�#�ޭs�Ž���E������h�Х���5o����p����"�?�C>-W�z�%�SB�ЭSO	�`-	5�����6:�"�g5n�PX��A,#��Yl�E����o�!��h�[���qz
|T}	(QZl���@�KҤ���`qY?�UE�Q����j�ث�R�[2��!��i�[l�N���p@rۘ4��1ՈE��6�������i�}��<=@4����2\*^�Y�Z�L�k{խ���t~Z;!bZ0VBu�	�L��dܳ7V�u��-�}���q��;�2���\;mF����(�%��&�Ԅ���idw��[Ag���#�#�,��a[�Mlr�]�Bߪ�����Hm¯����SG��m��/�P鞕Ë�a2�ؖS�(�.�~��5m�!	��A4��T�Q�< [x���X�t&�\Ȑ�����V��X�}�T��DѮ�Q�GT��-Mbc+�i�/��M2>pk;�Z��mF&�����o��U�CP��Q��h�������2��g�rа�s��=��B���έ�Б�U!U�8YSO���hx#�r���\�e�scP��<��/�o���6=��<6)��6*NNN� �f      �      x���ɮ$�q�׷��_������a�����zEDe%��C�o�/�\&y8$���?��������	.�?��	����w�P^�����O4��ۯ��b�O�]|����ETk]�F?��E��?>Jx(�H��BR�ik?1�I,�q���o��1�%�K�����R�)`����)U)���n�Z�E������Z��HP릪�Z����MU���bpk}�jѯ���Gǋyĉ��;�W��I�?ޭ^/<��{gzUG�ű� �Qq��S.8�o�VZ�C�F��j��E5����T��#��W[��+���8@��Oy/V���be/F�����b���rCZ�T�K�}�����_��_�(ɣ�#��㠯!*MZ��B������}��VH�7��/o��+�� �w�v���Da��=A���S*|�(��B�O易M9�P9\��O�]J�i� IC�)P�
�
����
$
~�аB��F�{.�p!Q�y�x��o��'K����(�R�~� �Cݥ!AW_HҰsT��*�����1jxg�ݜO�=�w
+�[a��P���£r�a�!�i�32���W	��Uk�
&�UY��ڭ�KC���D��|�
$
m�2T� V�n�06�&�4��BnP�r[�%�`Y\H�9��p!Q��d�OѾO�pN���m���I	�X�~��K�q=[�ß	Q��G/W�7Z�	����^QcCm"*?�n����P�i�G��>��O[�ɯ1gx��v��%�1 }����`�ާ�>���{����2����6�_�Z��r!��/�&fMzh���a�䀗�;:�|�������F���>xM��\����dPMx��%׍�MU��';�5�u��L�=^�*i�� �c����SЊ�2�"�9.��קG�X�K��(��N��F�*v�b��(֩��ɵ��zq���[݊sSM��ґ�V�B���������S~9n�4�h����Sp�T�
���3�I���ԩfӣ���v�1ƂR6PNY<IU��!�R�/�%�������.� �ǁJnczq���;�[�r��
�k&(�)K�ʰ�]v�R���rĩ�T�z�)���՜4��&
�\�J�NZ�q�@�NE�1FY�csk�T�N�5�V}T�5H��aAT��CA��+�$�y�0.�0v�jSx��!�=�Q�:�]�o��Շ<�$w�Ӭ:���C��&<f�a��֩��jk�Z��֡ŐR��T�#}�P�a�?P��� )J��ک�=��>3q�w�mš��Q�(֩��|�U8��b����B��MU������ڋ�[�)�T�N�bvv����9���S;�|�資�:U��
9��NU��,&iޡX�*6O{Y|����"���7)Ŷ�'/Q�C�b�� �{�~w?�$M�e'pw�� A��o����2�(��F,�v�|��X���B�p#Q;�������)d�����{aY�5�(`3�2=N�i��A�x�B��!e�ۡ}��]�����dy��AG]HҰ���^߈�Γ>@O^Hv�����vuع�'X���'}��y!Q�yң�F��[��Ƽ�H�;Gz�eIwYn��ٟ	I�
pW��7e���ᦊ�º��o~ΔeO^�'t��v]���h_�u�u�jX�]�*z�"�N�-p#X�]����W`]���b������@�
�b$ْ>(嵳\�
΄����?}¯{2������O���җ��iޥd"Q����n�D������"H��J�S�6Lu��.$i�9ҧ>H	�iG�&���|��y!Q�y�cG�ۑ�=>c|��	v~�ÅDa�M�}w����b�$/$i���I�ݻP��>b�J
|��ͥ����n�S_A�v{�Ҹ��D�kn��-U�	��	�z
kX��
�Ƙ�nF��7��tkf��nk�ڔ_ͥV�w~H�7ׄ�`s��:e)k�f
n%g,uS���n���h��)KY�8cpt}鎲�5;8��q^u�R����W�����~�N%.�%6-kfp�n}'ڎ��518F��*��T�N6͔36D��u�iɡ�tu*Z'����;*Z�b�M�-S�6���+�W��u�jM��g씵���)���S�:y���p~u*Z[���slF�5Q������Q�MTŶ�/��%�RLTk�6�9�G�Z����6�%����Jmw��>��}�vC8ޔ^�M黑��H*ϱ�u/|#$
�<��⭰�JX!�
��"e8ι�(�NjP�i(wv#N�E/�mYR�
����R�P�Da7j�FP�Xay�\�ea"9_�;�2���+�m�4مD��(C��������.Tdvd7���i�RXb��1��P!n�w�	腊���r3�͜�Hx����a*.D�;g7K�"LŅ(��v���C��'���v@'�9ݳh;�b��s����DU�қS�;�{c�5���7�t�b�=�<�u�3V���&�	2��l�9͛�m*�(֛���,K�61�����T�3�6U1� �pyaY���TŬ�}ˉW�����|>F�g1����]�8e���)�rI8a7T�S��C�Z���U3���iڵ��Y{0�p�S�b���!�r��B��������e�C�2�2�ꔥNy�r���n�R���j�y�)K=޲���3l�*v8ԟ�[��@��<h.&�������o����E�dR��p�:��K�(�ةh�lZ�}m�j?t��wG\�;����ű�\��S[���v����1stq����������T`�T�N-ܞ4�T]h%�ϩ��r��V
���Zt���\�b���)�C�zl�*v*�K�Щ�jx�5X��b�*^R�tU���_�%�q����2,3@��Ô۔���)�̓VSxs� �b��G��@U�P�*�&�C�:T���f�9P;��-P�#������AfBj�&�b[����]͠���m���r��l�*�uY�W����|�*�u��I{
�1�b[���!��i�"���8\�Tc�NUl�3	���0j�*v�Y���
Ks�*�m�$<'�z:Q;��_�|å٩�L�U/�h�*v2m��&&�b'�r��qt�b'ӖB?f�*f4���vL���<���=�2�7n�	iu(R֌J��/�K�� �b�e�p�d�U1òc��_��*f��ޖW	@E����s;^+uv�	(�1:��R@ZM���˿��c"�:�݌I�	Ʌ�r��r;����47L���i����`m<�a"=^'H�?'��!�M�MS��̈́��%�\�Q&��3��+���ҩ��T`�:&,֩��+�2��/#�W�}�:��K��/��l���޸�%�)?��n�Oxq)S�+T�C��ݗ����AU����S��U1k0?���l	*bx���y��AU�]����5ۦ*vh
���u�b���7��M�:U���xe��<���|�ۮ :U���J-ֵ!*b�`~�0�P�T�N>��
��U���jr�Щ��V�Ԍ�f�*v2�lď٩�LK�;r(6P;��ܮg��LK���L��T��%_��a�AUl;���b�16�vJr������ ��}bKxt�e�աJ�ߑy�9Pj�b�έ��b7U�C�R���(��|/a��@>�s�9�� J�?�ùQ�0P���rnX�S��^�e`@	��cxv�<̳��ϧp�9P����&e��ϧ��2�uJ�?��S�8e��ϧp�l�S����<�D	��Sx��}6P��N����@>���`u(��|g#�<�@>��������liJ�?��e���nJ�?��):���)�ǭ�˭����O$?v��a˹�'�mƃ�&b��85��[���&�Ǟ�)
_�Lߋ��c��V3T� Qx�y�Z�
׵ˬ���:��G�HvX�7�?�(<v,�a+�[awv�Б��#s�eq!V�;?�s2�9��t��}��sd�B��sdn�$�k����+����K�5�B���t�W�_Hv�.�O��#K�-܅DaW+ X  J����|�y�d\�.��#�|�o><N�Oa�P�4ػ�?3���{#ZO/Q!@������?��3�k���B��^���=� /a�����6d6����%l�/MD�o�,a���ǷX��W.D�o��ad]'4!z|�e	�0.D�[,WX�Oq!z|Ie	Ö�ے�8���b.D�/�,a����K*K�$ݞ;G�u(eB������@_?���0|������%�:#4!Z���|�c,L�W+�N��B�w
�a+�B�)�73�H��nβL�B��R��ʁ'�V}��K�5�*b�=+A�\H����/瓷��TcG��ԥ�o�e������*����'�{��*�T��Q.=��H%ei��#lB��Ƅ�˿�o��|���4Ox �u=��Rl��&@E��1Y	?��9\&��'�#bc��AE��'�dǩ/��_ݖ��F0�>�Oa٤o�f����/{k �Ǆk[W8��RLX���.�%r�a��bp1�N�l���\���KX�c۔��Eģ3��NY�_T)Y�lyP��vYN2��S�)K��Vk�QL������L��(K��`�^`	T�phsj,.�'�T�=YMl>��N�P�A+�l��>�hl�m�/�/�h|��}:P�:����0d�:�9iq͍X��w��[��*Z��PnS�Zx��㲼�h��bM���h���<�i;T�Z��j�ت���)��T&~�N��2?S��@U��r��T�N�_j��z>����7�>.�NU�T��ֽ�6U�m//W�TC*�6���	�q�R۶Enn�l�*��ޒ���AUl[8���Z؉�ؾ{���-��b[�����.��*�5-�אNY�*�5��7�[NT�N>k�]����g��C{P;�,x�<,���ؾg�����b����'<��|BZ����mR޼�}�U��i�l���9P;��_�`�=Q;�6���U��i�f�~�U��i����?�����*�ւ��I�
�f�6'�"]�؂��o�A�蜧�� mO�q�~���=�ߠ�ٛ������4������� e1����=�AU���!<�gU1`�^�F�U
��wtxܢ`SC=�c|v U�SY��3�);U����̟�AU4fw�sd�"�9����<`P;��d�D�AU��/���0ʠ"���nL�>�J��U�o�9֩����#r�9֩�����7���:U��Y��HϹ�j?�������2���R�3�~�,e^��YZr$KK���������:�Gn�X�*�V�oȿ]��0�W��d�F~b2r��.O����1o�a,z�^*�;�1Ӱ�o1�,�w�_�������/W�u�b��>]�wtrB"�U̢>���cp�qY$�������by���gs�{�e�ة������[�α�������^��gs�{�m��6�ٞ��s�/t�=�=E��\#3�����]x�РV�>۳�St��S����1���`B����)�{y�N}������e(��l�}O�%.C ��l�}��͹�ѩ���V\�w��h����S�Z7��S��g����FT�u�9P;�>{��nT��!���铵���!�+Gy�g��ة �x8�:U�C�����cv�b�*^c2���b�:�/P� ئ�����R�� :���{ 7�}��F��/���o$���r�:�R0��}�<x"��OmهGV4rVTP���R�AU��K#`�޻|���w�]Ho����;˵�!=zM�z����^Bi	�u�b�����߼_;a����=����Ҡ�d�wlq���NY�n4�X���se%�'��R����l[�5<F�e�C���x�tSVC�!�PXD����7�=�O(Bv_�ckt�P�������r�٦"u2g�ˉm�������{4�=0h����30�;���)�`��"u0(�wR_�R`�z��_�z�"u0hu�,�NE�`��yD���n?�՗��G;U�C����=Ƅժs��K�9S�:e�L��*ݩj����s-�J�*]e**}�*jt�e�n7�j�t�m�>6�����Ֆ�[�M�Z����wCá�h�N��믯_�~�?��      �   6  x����r[�ǯ�������jI�R;R%����)9�ʈV���.pxx���[Z�����bw���׷�_Vf�Ai�?B�sA�9S�L�~m�Z��=S�e?\~�yw��|u������O��>��iufm쐴YB+)IP��������o�������o������n/L���\7rA���v_���.~}ܽ�>��y^ݾ�>�/�6�����ms�����_�߾���nCW�M�ҡ�굲k���6(	�7��ۡ����]����t�����"v������������[4���3g�V�_
k�β��t ~���� ��x��
�})��J`�V�����O4�?��D��u���A�%�R�:��C�_��J+1��$�?��p}�$pRq���?�����XvA��-5蹋�x�����|��H��%2��$"�Yw7��nn��LfJ+�����ڀ^:(š��bg���
c8QW�d$R��$��8���\�(��a�9�EG�4j.A���c��%�R-I�sر9�3$ˑ*	�1'I��N�vN����$�-iP��KFw��q���>U��Ɵ$i��~�	��Zr҄Ӥ@��$�j�Ks���ZǵRCL�l� ��;� �rl��Whk�?�3X�!����tZl���~��@���|�r~��`%��qp)ۂt� ��SL�u,�&�<�VI�A:}��;�S��3�$m*�chn��<ӟ�&6Q�(Na0���S�\���
��<C�!y�@З���n����f��D�m�����S���ub��-l�f!Tdo2VZ+�[�p ��&�P��y�����o\ /u��=�2�ZZ��-k��oZ�5@Z=��kX��E6h�3�A��	��R5��k~�<�!QeG�N��m���r���Dt�K�?�S�za�����*�ҹ�Ip8�p8���-�Jgŏ/�O;ΰ�0���e,�1҅�K8��ޠ���M
'ɕ�x�>?�R��2Pg�xHaљF�Iz"�5�G/&��:��/�@CX�@�D��O�x
&ۺ�9��C�0��m��E00�Y�8Qz��7S{�8�i�b	4����5V8|�)�B�{����ޢq�3�*QK��������뇫�����R�\.4�VrV� ���ۧ�J:����(����^�|�����㯇?�b(�fP�3����K>sN����0�S�aHv� 	�PIP.H������GɹF�c�\�-+�ET6˞�Jf�'�(f'W(I��<��5&GEhg�Hk�R)z%���l�,����0SM�J�� �Hf@����e�0K��d��2Xqu�~�r�n�BkZ�J�x#�8�G�i(��H���)5?m�8L�	"��K�ɀ�_\�����=���M�{"E���M�Ӈ�$7�2`B+�`)K���H>ʈn�gd�`�Y�'���b�1mA1?��EI[�.�r���Z\]\\],��-�֚�TR )�`9���J�S�e�^ό��Xn��Y�1y�bsU��R
VF/w�M�����s��s-����1Zэ����=����e���W$G��0�.F�H!�H��,I0��r��|5S��LX3,z�-m�B���)*��k���l�1J�0��J�^`r��0�����ߕ$}�z�˵(��h�]���Ɋ�E�*MM���������	��%����]LP#E��˺���L�n'�\����)`_�Δ�X�ad���TRt2Q�l\nl��d�Z�@�R�2%��v�0l޳�QI1HP��і�
�m���%e�Ĉ�\G\�8�b.E�S�,��7n�m)�R�<x�����B���)nvk�,������9�f9ֳqJ2��mG���&�P�������{Iq��Bx���C�����\�E�8�LJ��uY�����OU��J��7�֖�RH���gB�k��)=b�ۋ8�i��{f �7t�<���{�BX|�r��`ŀAg�ū-� nn/Z����|;�G�^F�m���wVJN(���ysR����M���Q��`�r�� )XP?�~�u�[4��(�	�ŗ|~���]��)FP��0Ɔ�1�K��i�BkMu�%�(^��+V� ��~H��̥��W}�ӤNV�\���*��mmc'IO���w1Eʘ(�C��f�2%}����q�e�ʔS�ǘ	��p�7�2ƈ�"�:���3�TI&�8MO�t�D����̔�)TG��J>�I�Q�4�$���|e:�\>�5�u+)�M����=ӛ�qd��2ķ�����	�z��9�6����s�|��9Fl�s��ظ�2�vW�甉���Er�	.~~�=l�/����������IF*�<��Zx��QOD��Y�ȩ�ʶj�5o#���Ʀ�����r��'�Xj0%��=��;X`nh���Z���j��br-c����uV�c����%h�3�#��j�;Z�ib�
�0�R��T�Q���p���@�3QP�ҵ�v�H������(���I�����W~Q�e����h-��鲏d9P���?A���p�QL9y.� g�=A�}�q�nt*�V��p����HuR)\���Mg�n�K�&[8�}�[^$N�|���9X��裸|ݴZ`�. ��I�̈�kz	��ԽfЫm��|�J���ϟ*F鰢�r��s1(�.��A�8u��H������#� ��m'�'$�/Д����oi��(���^�yW�չԡ-�SP�KL%�18�X ���W]����H��@��CM�dHzi��M+��!��/����Ip�(��jEw�����9\mމ�w�V���m#݀:Sc�n��ŏ�?\�.�y��J����=<"[6��˱������3����&ui�	J���o�߰��W��u�^�8~~��J߰�4��d��k�	�g5�&��wCXU���u@L�I�QX��� Ґ
n����~� ����p���'$�!��gN���<��͊SV�M2��{�c�ظ��X����H�3��`�q+�_�s���������|��(I�!L�[O�}E�ܸ�A�Y���F`m��CpPV�<H)���.p      �      x���]�樮l�w��:P9 	V[n��q���6V�UO9�H�ğ>����)��R�OʿR���c����K�m�Y���c��O��$��a�Eݦ�Pok,��4�iˢޘF��h�ѵT�����xJ��N�1J��D�jf��ЦZ�F��h,�T�H�6�����a�_*$N=UK�-�R�ha��������R��H��Z������+���� vg
қc�E%�)�Q��7f�.�&*��ƢݦFG"��Ȣ͞9�g	��+L��i����Nk�B��Eio�j�%��%�=1D	�>�)mH�c�#y �X�;�(�T�J�L�6�q~�֘�B�7!�et��a��iS�1��Qz�N�.��Q7mTCZ�ٴ����;܆nLA��Z,�̢�9��rSg�!͜Xt�&l�hY���(]��Q�̒�
]ytc3��N$$��@�4�V<ޔ���5�I��R:k˦lH��`�n*Ԧ���cS#�;��n�b���
�K3�
�ho	n}�Y4�n*�ќk��2[�R:nɦ�3�*N4%��Qh��D◲��jGצB[bU�Sڔiy����m����ƦN�gkXcQg�{��565�!Z�=65旒+��nj,>J��`�:�Gw �¦��R�9�Ǣ�FҢŉ_�+N*66��1�:ٴ���X7�Ǣ�@y�Pc�Ζ�$��T���H���:[cgm	�96mlÐ=�M�M5Ws�'�OjjV��8vObP�I��Ǘ�������ұ��c��Ϙ��c�N4�j�3C}�+�����ұN'�~��/�t�1�5ږ�iˢN�aRp�m�ԷccB�ie�N걨R���)�/�B4jR���Ei��س�2��"
2�{dS���R>���R	g��)�im%��/eݤ�`����D�|3�_*�)���l�Lb,opx>(�(��`��X�(���Rs�"�ؔ�E�충P��3�n�BL�
�Ǧl�POߕ��
��wf�E�ڴ��xCj��k�TY��X���T�5,��~��V>c����R���pS���г��v�I�TcQ�M=��cQa��ie^]�Yt��o��K��c�ܰƢ�5Z�Q��Q��a8������BVś:��;Yqlj�/��b�njl��z {E蹧jB~ո)ݵu'��l*�~�[��+�T��P��'�*kM)��zBt���F�ϟ���G$R�E���c�n����'�޽)�h�$~�2��dDcS*!�q�eS5g�]6eI���N8�7m�%�4F���c/Qp�n*4�5�z��,�:��ɯ��4<�����ym��ܔ�TS&I��2ߪԆ���=1�l٦tDֹU����P���ٛ�1L�81ꢝՅ�馒X��� ��6a#��&�"���ڍD�/fK�t����0Ɋ�cSe�r"U6Ufˍ�Ǧ�-�r��c���������)�������b^�0�ig1:�dz�Tx����Ȣt��.�Y6�l�9��)]Wzegn6��bݭ�� ;��hAg}ֻ�0_�YFSIo�Ԩ�0�_h,0Z�w�M���V3�h7u6�7U���I{g<�lj,ț���,jW����F'�7���ǒ�G��y�V�H~�n!��4��49��-��n�5�25:(e�1p@�mjH��b�,���H\l�9�d�vY�AMj҆ͺisb����-���UܚZrƭ�ԯ�j͘�:Yt�O�Q���>7�J�Z4ϫ]�+�'����e?���y0�chGt�K�����k�輙R��]��/myjt$b�9Đ��-�Tʇ�Ƣ�vK��A�V�h,:o�`��	ްƢ�vK�}�,�Su�"��R)��!��&��G�/���=��gH-6�L��Ѿ�RM�ئ�v�8�!cF]��0	%^ٔJ��DP�-Z%�ǦT�+�˧*X"�XTI%�� sH�Ր�DƐ��kSa.)�d$�ԙD.8.nHzb���,�7���f#ݔ�W��@A���H�nH��<{n�F�2����
�I+d �T�={y�M!e�)u�a7U�5u�3���Q��7�l�Ssi�-���B-ɰ[6e�1&?2�o*�%�f��M�6E��E���c���+�:�0;���i=���,jT�I%���E�{�_ mm�*�%"���lC� �&o+7mz�Q����v�ݯ�
i͢�Ұ��檸��k�J�F�����ͮ�T�B걨+�І��zc
�<�
i����B[B=�i�D�RM��γ�DD$�TΦ�bϋ��+U �j��l�W�w�o��{wS�;R+.웛�܇������m�zg2�tܸd@9S!���^M�hp��+N�l:O3���<��nS��xt�(�'�?�j�Ѽw������~Ky*����3!�5�����΄��� :�AP��!�t惰�y#+�3�J��Ù�
cZ$�
m�z��B����5��2�vo�t��4�*��J5z�8�6�� ��H�o*$F-%�P�$<l�i�v'�-܄T�5�V���)�8�F�x�f��XsQ�Q��@ä�Am�f�7�1P�NSgc�F<rS���31���I��Rs4s�'�n�H�}:	+HJ$Bo�LR'�qS6j�u����T�W${���A�Yt�|pg�)�i�p�PeQ*ZIg�T�=F}�Ƣ��|l&���/%�g�Ϧ4:���ThKZ�8�Ц��*lDϩ��:��,x����Z���H��Q�Z�\�A�y%k%-���b#��u�M�����$��ȈA<oj�8jH$���-М~����L�q�y� J4�Db�y� I� �~�9�LgA	���Ig&
JQܐMg"
J���'��((1�T���D�0�Ax�TXCܢ�zҙ���V�u�*si��Z����֦�$$E����h�cS!�Y�E����(%��M�BM��m��գT�I��j�?)s��ϲ��t�����l��9�0g̸��:S��7%ݢ3J²��+>���J"s�M�Cj�ѹ��
1g3m'$QUk�~��P2JT�h�xRa��e�N*̘��~BfJ/Q.�J"����1Uf�f�Xb�J�5���gؓ��@�R��ݦ$(�v)�=�TH;T*��B�5�Ϸ�B*d��&�O�$��h��<��Z���I�I��`@H�yD�,)65V�<����w�,J�sQc�0+R#�����I-����y2V�O/:�A�Q��B=�݋�m��� Kl:�AXB�cA� ,����� ,Q<<�yб�U-����a	=�X
�����'���ȿ��A.�E�yul���˛V"�y�6�J$��X�c'�%$>�uP��i	�xx����'�{�����u������Y/��U�H��Rtj���O��P�-	Άt:w,뱌&$��'�s�I���?��'�ЙPjǉ�G1���L)��vȣ��DdљTj�ԧ��G�CH@gV�;����XHg^��T�����	��,��G���7\B:sKz��o�T����&��**�.�&-��&�T�zX��~�D�^F)�X9_�
�^"դ��0Йj"���I�T�����ؙ�M�[��I�4���|P-,L���	�,ZX�np�_z�Z���sz�d�.��߈�FL{,*�gt���緇��_����IugO:eb�J���!��0���NE43�g�0�н�S����FT���O�7�F5�g�P�^�8��T�E�?�ňR��lp�(mw��*�G����کB�L�6"1"�s�,�,6�?�I�TXKD
96�i�_�*ר��H.�+�:�����	�W�Q��z,j\��U�M�:���64#K�n���h,�%��s&0�v�EQ�V>	���w4}n��hC�ض��of�T�v��i.�L!�-��D"���CIR���(������nJRS|���B�Y�>6>��$;Ug�KlJ�}5'p�E�x��^1=�0s����)3�%�e�TItVsp��E����g��J���;8n��$uZ[e>]�EEO���
kF??:R!�Д�Y���Թ'��I`�}*�6uV��zȦF%��	��h9��R#q1���:|�zb�ԘG4��P##��W��/�� �!��G�Cj��4�Y~j���'՚�Y=D�{I�4T��s �as �  %��w������Ʀ�#�1&ߌ5��c��=g���^$�N��\K#:oc{rGt^�M�d�yUk���-�6�᣾
56�c:ɯ���+R�Ta"�:����|D�yw��H�ݴ���_��Th[Z%�S���~e��{���H:J��2��ʢ���B�Ƣ�i�6�*�(Jblә���H��Tذ�޻>D�k�� A�$��۹�*�FmC��h(º7�2��1b�MY�R�̰ic��9��M�ye�84ds�|�w�e��v,��k!�uSj
��M_.y���γ5yѹ����eH�q(Q�;����8����:/�C���,��3%��Ŕ��ơ��O*2���8���b���3���1]��J���I�����H$�D�5zBecq�-��+%J��A�D��601�$$��Nq�)Q�?��M�Yb��DbQ�?wuP�бT&!�(���K�O8���g���Ѓ
�F/�b�:V�)�$�A����'������b�ޔ��fwߔ�U-���
3g2�ݔ���!iȦs�訔���0�X����0{����o���تbSe�����'Tf	�{ɋV����������"�.�I-6%Ӈ���^TX;r&q������N���
����:�+�d�_�Y-4�4����;Ȧ�<b��V75���^�d�U���I�y��c�/jd���i,��=���.�km��Э��{=��}��{M�J�'�r�ɏ�v�W�fQؖ�
��J��i Q�����!%~�d�ކ��-�$���cQ��h�anZI�~������<�$����gР���D��d��l1�,`�n*��G]����ж���M�Ũ��aZ�N��[%�XԘF�s�Ʀ���s&�mSc��o##�$A6Ju�[�M��%�VD�ؘ�Mp����D�z2���SD��C��[���A�z���bc�J�������G@U4���7�s~=�=J����7��������f�pUzЙ ���X���Ȧ3j���Rc���Eg���ȟRc-+:����C!:��XcLe�-��4(���%��yP�Q|��	����Q"ZYԯZ��b%�@}Qͬ"={���i|�m|�R��5��P�[;�� �����Jc�k��8)�h�W�C��-~�T�G���yUS��~C�K�x= u��Z��j���ܡc6&�XԙD�^ 	)Ө�#TʂS����)5GK�yʓR��g��P�E-�oY}(/��7e#�}��}�0�Xɟ+�fO�
>���Ԣ�CP'U�f���Uj�"}��=c�fnY���'�^ٔ�F�3�֒���
k���w*l$cYil�,�|쭈ƢN�Q�"rS�cy��|S�^�D���W'���~���$�o1+d�Ԝ�#8�]c)���0֋����K�z6��/:wM�f�R2X����5�qa�Ql�!Xdѹm��;W1C����p�~������}�h�;8��&���^tF��wSam���R/�W=���U*�onT3�G�ޤ�he�{�3�J5j�(�A��	kh
PTX���5�/��a%�NqR&�	�_T�-��q�E�D��u��R�vaѵ(�(��%m�%s��4~�0��8�8ߋ:��JB�A�F��鵓��ZßOJ͡�c�/H�����B-��Q/Hëyx��l̘�!���0�X*�/�f��i<xݔYt>s�۲�������/��E�_�v�Q3�Ǣl�`ʦ�MYt���ĳ�
m�ط⾲�Ц����P�hn-���A��W�̯�:��'��5�1���M�yų�9vSc�᥂���:���&����k��ş�:�]���ݺ�b��)؃��߯�O��\
3'����G1�5?��=�/3=�Y�����G���y�s���[��pd?��=A�6ƪ(�:wOD#|���s��5�*��cQ�m�9L:ԯz|w�Ŋ�G|��U��p�{��4���Ӄ*հ��'��'����PX�6�]���¯u|(���B��,����@cS.���̧},�p\l��I����m�%���f@�9�����L��O�|(Ո�'e!�5������
)u��/?T�M��6TDi�y��8)7z{ݬET�_z&��M��T����A�M%�]���*����`�,=�{H�5��q�ڙ���������� �Ƣ$:$Y��̃
m��𗟃
m�p�ǢB�t���It,�4�Zg�X�i=��?�Ԙ�|��cSc~����E튏�K��q:��s|��mj�-��DcQ�S�����i��2ϴ��Ԟp�V
�y?*l:�NX�$��;',Q5�F�IǾ	KX��<�p���K��&,��U�'[&,0WXaQ!�E�U��Y�

�c&U�R�|Z�M+�()��U*��q��c��%*�\�B"�xIQc.��)Q �TT�<�˥/J��2w��~|q�EY�h<����5�����B�������_�)��(�7%a�9����9^�����z��E����>)�+�|6�M�81������<BZ��D�/�Ϫ῿)3d�>�P%q��=�Sb��h
���d=3��������U(g���%��r�ٓ
k�Xɒv,*d9������
���w/��IL5uf�E���J��9�Q�N�3��ϳ����h�t�M�����<�1���pjd�쩒�ݦ6cs=&8���)�h�����E��(He>����O�*���25j�ǈ�������{��7�HE���(���x�܆�2��%PH�I��c\���%=%$��c?�\�iP�d�T�j�x\�%}āԉQ���5�4�n�M�i��c��)��'�]�$V=yV%7�yu��d����R��5O�*�*#'t΃|�� ���˰�8����8�He���*��\�IA*���:�"�A�y7R)�&�����N&��\�@�W/v$���,�l��Z�����Qú��Mk�6�ϯ@�Xkrz~NRc�ə��M;��<��� �T��ly~��,�w`C���榝IyL�DdQa���+ǐJc�<~��t�oL�K&YT�{cY��L�eL�XcS���֖풘����F��v�Y�"�k�������oB�E=�!`S��s� <mj�f�2&H<�oj��0�}��+�'�O�?Z�b���CTf�1�o���^1i�)"	�h�gFQI}ʠ�g�ʢ]�Ҩ�b�l�mjd$2&7R�E�����C�u��.�hs��_����BK�L_"�-��DTRe"�E릭Q�׳����03M��,ڔi��ٴg���. ڨF�̨�v!�^/}#��̕��M�����U&D���T��hc������B���q�ݴ�^����"Թ���5��Ҥ�l�X�oY�M�{+D��:��-IDEؘ�L{eS��+鶛*mMӄC}��8��N���u��U�S�"�
v̦,F{���H�D�D�*3g� �
�d㛲���$~)���!c�F����:����T�(lIlȆ��[*�"e��Il�s=�c&�{Z2k��?(���)����L���
�Ȣl�'�H=d�1Ϭb�ܔ�Z6��lڙI%Kî�tfc���I^Dg2���fp �)[Y�Td�
�������oo�o��ˊ	�_��seE$~i'��.�xd��z[N�7�e��;]���2v!Ġ�v�����M�WV�pV�)��52o���2�,�֐6ߒ��Mg�����m�q���l�ώy[tA��Ȏ�(75�Q�D�Ƃ�̇P�Ƣ�zK��'�u6�ς��M�z���,j,�Ko8�wS�������?���      �   �  x����n���ͧ��AW��@����-
��\s)Q�E�\�@N���'��5W���$U�3��3U���I���cuuuU����p���WF��fk`c`��θ���OJ֨��g�H�-��(
&�S�V���zx#�8�q�V�$"���	���7��F� 3�NBq�z��/�7� 2�������[#8b�)'HV����"�J8N+�1&Vp����! �2ȁ�'��d�ta�ŕDu��D
kd���\IU��
 �5ɐ*��������ŕ)�+��z�o�m�Nr%����� �Qr%�]R2C��Qr%Q]�l�L�/��� ��P%W݃r�:1�Fɗ���3	%=�_'��i��y��곐BI��~>�Q�4��X����˘"��_!�lS�\Hɍ���]��B
ei����O�>!Œb��҃�Z�i���4�424��� �y��GP�umhpϧ�����ϥ�RC|�f��-3$���TH�f���g�����T��	%�ߛEI�!�t����;�J����>0M|�X�vZɔm�K������yF�4mC<��q�|	��p��2��:|�)b��i��r*���cYy_�O4�������qsu�]���wz�9�������")���������q&Z��]�$�a!;�k/1G)���~b䳍�� ��F�a�6:Y�Nh`T/o���8�P6��6�̴��\��Ap�$U�X�c�3
+o�DRQb�MI7�ț?AQ%��0��4�(O�J�����!��Tr��R,[=atSPnH���l�R���ϯ?���x�q�o.�|�;�2W}��p������ V�Xz���z�J�V]��q�8�3f�m�f�\24 60���U-��6?����\-�eV���Qh�3�e~�5f��l9;-+s~�b�������7�A8�P]%����?�ov�)z]�ܹu��R� ٫�=�;�?4j9"ʰ��B�����6���f)��c�;O�$Q������_�b��֋�*��ws.^mȩ ����RE��/�f�H�RO�p�$ׂ�*M0��m�`��
�Iy,%K�_�][s�Sa���$�-���\/�.�HC�.�P�˔�c�<e�T/񸊵��
�r�����:�I���Ni5M�B�����̴�Nq�u.�qG�N���q暴�Qy�:�wr�ڸQ��]�`ڟ�iĔt;��O�g�ۼp}���惝4�-%@���3)gêQ_�k�f-A�������l,�؇��,S}Z%�J��a��u�a�M:id�Q_|����EA悄�Ox��u�@�L�^]\~�͗o.j��I&�����z>����ay��#W�Z	K^%��1�:0Y�Y��>9�q����#�O͛.�zp��VS{���2^v�̄����1.��˰s@�q#��?��f�;i���T$mo���$<'W"��Hց�i��&&V0G��=���J������(�&�<��8�bT���!��"8:`d�L7_�����/^��\Zc]�!p���ȧr�|�x�����~��n�@�Olv`��\6ʌ���᰹�	�����=N�E4JtnmZi�ʿ����C�r�sqm��ի�����?��������K��eLùm���ԛ�/^��,<�A\�h������)6Sk��$�!Y�d��S�o��'��a�T$������4\�ct<��C��t�H=ϫ=6gV��f�es�P��eFLf�t��wMF�<�K~3��f��2���p�m%*
�̀�d�#�s��fz\�]�.���g�#�͋V��i��I�-�n�4�q�M9q�SL�z��5�;ib�]��	
u��.Gr;��f(�	a�Yi얫�+T�f�j�S:�^����$ƪ�/��o����z)�i�g�J�B��c���#��]�A���BOĦ�/�b[2c��b_)����D^H394)Q�1�^H34
)a�wƓ/�N�\@I��߼��o�����״�̐jX�b��LT;i�guBS@�F�A d��ܹ�w�Œ�=7:�W1� ��s�C�pT6�>���|�$D'�\�?���|Yvw6�-��D�°�;	K�$cR�q�p���[�Zb;�W׏�k<H���ߗg����36+Q�1A]c�0��6I�~a1Q�3KK��3�hj� "�	�-]����J��EJFG8��a�:0�V��o�=g*�ݯ�],p�j%*��#����ZZ[�Q�>2�V��n���8x�I�cHI�Rkr�z��Q���m�+�B�%������O�@_v{C?�@?��D�q��W���y��5V�����2������Ɣ��x���Q	�n�L]�<�lˑ��68�\�YK�@Er&�������3+�%$�%�W Y)[�Z#Ly�m�/�$	�S3%j��ǥi��"ں�)��Qd�����nbk����ĥ�}l���"&^Xo��Ƒ�'�3�V�U�ȱ��ٺ�����-1	RR	�]t��7�'���Eʕ��;L���u�+MO7bP��1"�J3!�kّEL��޶�,�eP�����ݾ~����X[~'ɖ���4`�ό�ﭷ��V�[��㞱�n#�J�җ���Y����CCy�����Jr2n�<Vq�4ɔ�QR�s��3Jǫ�n?���?��	�^F�e'�`l��֠k��C�η���A\�*��u�|Ʀ�Z7M_���M�+��x�Ŝ,�cnw�@�ӱygZ�� ���@��<��[���-��T�H +�l�$LͬB��F=�}�dP�A�1¶q�"Yj��C�$�Ӡ=����3$�$����*������!�s����E?��v���xi�h����v.�9Q�%7�N�!�)�'cnR�4s�z��V��w�z���;���L�4c`���{�t~]q���X
s���:Xnf�4�l9���U�YJ3�=�2(� _A��}-�������fL��b]�")�R�*��A�aҺ�T��%s'͌,2��v��0Zb$.��43@d��H}<f�D��A'���Mn��Ú���H�ԗ���^��-��d-�\O瓤N�fa
^�T�D��t����[��z����&�93xֹx�͗__��\��:&ҫ�6ѻH�B�[K�Ȅ�����o���l$�(�`V5� ����E��y�7/�y���F�S�L]�l�څ���,�G(H��{��l��ޕ%&v��d�Bsv5�����6?      �      x��\�n#9�}��B��Tc���M-�\ڑ-���,hxז�~���v��a~`~�l"Hf&���ˤ]h4��'�d\N�	������^^��L|&�`+���5����KP���\O�|Ұ?�]���`O�E��(E�S����g]@�QN�D1�FF�!�e��) BO�w���i�}�r)U��u�|�)R��f�tw��@teDW#FM�>�N�	đ%����7�^(���Lg��t s�a36���v�<�߯�������+�x���8�����.#�Κ)��7�@*k�m4$��v�>M ��g��T@�������+!
�k��wQ���P>@i���*,U3�D�2l�}�>�Q�K
�������V��N���f����P��":�����ޝ�!��{��m�����~�,�ne*�9�{�i�e0W/	��N���7�>X�;���o'�����`j�����Q��!!H=�|��F�
�q3L�����Co(Ж�o���7��fĨh��������30��TK5XQ,9��Ǥ*.[��NM:���AP�e�f�n�犻G`��e(�pQ>Wp���~qH���@�Dy��P ���~#X?ڳׇ#̰U�.�^��~�9��B�ג}����_<_j�^�Q�QY#���k����̡ �[�t{�����5��_NT��x�Z���y0+�a�.�!�\/���f�;w7��z{ܑ�A���
#�B/�V^datHxJUB�t����'�tK��<g�I,[Ʋ},�>�(��2����mp���=�qw(�(�!V��Y�>����05q�!q�Q���MփET�8�x���6�Hy��t�ZP�5��d*`zܶ@5��d7{��+Ƈ"��6H}N�����֚���Rz~����^��GV�@I@k@$��.S+A��� m�Aɘ��	��/�
K`Vf�k�hS�\j@W(}4h���h�4�S-Δ{'e6S�l�ݴX�((�:K����$��$Z���my�d'E(�A�k7HE�$ϊ �%��:\gʆ���K𕋱ע�����"yYD[RT;��V�byy?J�`R�'m�aO��[���l;�;�Aӄ%���Q1� ݕ�@%��;T�6^e2t����jm���m�w��j3�l�\���(�:$��]C�>Iů��W1�/�/i��\���4�x�΋�4�1�s\D�!�`ٕǫ���-�H������??�֫ś���'�;0�s�Nni�Zr���"�T�q$�6�8i<z�+������Չ^�گW{|�����~�Mh�L�C�D,}W��ۜ�D�"���W"�oSqm�*���?�T��Qި�>���&��٧�����2���pZ�'NN*�]wkL������j[���b����/�UD7ҧ�AG�|<����qI��e�kRn��	س����dx���IU�ZT�?T�xOj?%c٦��ZLRt���~����d��)�-�8L^d.��W���7����	�	߸_�w�o�O�"��onnNS�\���຦�{܎q<� Tk4�Z�{0�PKn*n�In��Ě�ﾛp�Y��;qi��9q�yԺ�����lN��*��U�*&�m9nt�rL�����vrb��b� RF��]ƵeX�Ӛ水�B�;�l���eER�� Y������}���
Hδ�􆒥�qB�D	��H�s^`�
Mi}����P'�|�jd�8���p�a���I~��!&��\e}V��S�#�e���Fa&�h3�I��"�������ś-|�̮�KPT��3$������x�	��������N�ś���W�]*])>"zgHҡ�p����M̠�0���
J��Q{Cҵ����k���s]�"��~q�dp��JH��c���@2��5{�j�)U�垕�e��t]4-$��jB+V��Km�F�c���L@;
�q�Z���<f�B"�R�`�� ���`����OTP�N��I�h�Z�x�]��w��4h���I�T &��>���ʞ.��7.�r�p�,��A��muw��$>`I4�ޙ>Vo��@'�e��1(O�`��!�Yaz�Ƨ��F�bD,�Ho|��$�%�8v����[�Rr��0aƚ2��Y:v�V�v���h�/Ww�@C+r�P����rlQ�a�uqMu渑l���N��	P;
lM�us�����%P%[w}��G-s�y�q䨊��V���	z���@�b�����	LP��b���^gi��=}��1��V�nKMhZt�{f��ɮ��ܻpLI590l����)R�m3�$P������F�G���Y��V� ��O_}%��>��GF�&[��J�x�f��i�R�Ͽ�|j�ˈd8V)�

EʱK�CӁ�����&��}t��:Ae�X�@(\9�aJ��d�E�߀dX!D"��W�R��Q�֟*��(��!.����g�Be�K���œ��*�怾�1sW�P2��è��e}I�2-����6qRA�lcX���Kbs,\�8Y�2%(�\JpBT�D#�I�v/x�C�U�<9@�����S�1��b������Fp�U��c$y#h�����d��Q0h�.r�Қq�L�	_���.�hf)<����a�[�^�o�������AUH$�aY�k�©l�Ƽ�7#�"�]�"2h=����"��LU	_q)��V��OU�N0_�1�ɯJ
@ed�Ѥh�qn5ץn�H��3�^apZ�+�#I��xt^���N�H�/�Vg$'&6=�������ך~��s*�"<�4��x�'qT�O��Þ_ΗNT���*����Rr����q�ŷԴ�;�{Y��%� -BF�����	~��c�ޱ��߿߯���i����R�`�7�:܏��bj��P��p��oOc�Z�ז���X=��a����)c�ْд$R/|�b/=�.��ys8����L��(�s�r'K�l�(�W�cӳ�$��ψ'Y_��!����Ww�2鄱��c�p��%NyV��CX�9Q�H'�!�QB��C$�8=��a��t��R@ �t��2�;�%��Jų��z��,Hf�Ehۧ�q�OE
��Ű���Ф�1��C�׾Ȋ�Z�{ϣ`��K��zҐ�b�l��̣��D��ʫ�\a	�Nr�P��py�um p~����P�aUr�&� N����<���V�T�`K{CV�[��F�xy�e
}����M���|J��Bo��fl���T�3����!������mQ�&J:/������?�v�D	,{}���:�3�c�x�q��,]L��`�����"2ֺ=����|�����_��  }�������.�L)���������ˈ�Q��V�kd#C(�����[�(]�fx7_��s���(2KKL@�
��8OI����e�g�G���8�!ZgȫF[<f9�6�+>@������q�R�s�Q-�BVB4��P2Izܕ+|+��#F����S�u�����z�owT�X5��cN��)"�c�I��J��yJ5cE}�\F�0*���!Zg�7V0EA��1��;�x1�p�!:��J���ח��,m�F�Km(:�*�2�	B�'YrN�Ic�^�U\Ώ/_}����	p�b�=����?��w̍h��2��!5ȑ�ѭ:{*�%W��5vBn��(֫Z9%"�*y s��~���n�u���b�]�W:��m0�[�9=�[�ߟ��S�ϧ��衖�¹�v��P��0��]h:�q(�(� W�⪟/]o�np2f�8>�K�>�.��*����H&5-J�>�*k*멒~I 1�MmI�op��}�������0BE�d�#B�t���1�,���A����R/.MO*�����̸�l�gǊ�C���"�ِ�LH]Z}P�Y-����2��d�z��f���	I�\Hb6$�IΆ�fC��d�l&��2P�鸚M��l:��/2 B%0�Q��<�7D�9�?гY���b�l�g�=����,F ��� �  �R$-��z�M(p�c�J2����*���k;6re�R�u�]X��Z6bI��o7o����
՚\v�*� :��Od��hBH} 3�D��RO|;�2J���ן�ܑ�T"��8LּYQ�l���Ȯח���MQ�fw��W&��S������H����6�������S���á�!16�']��Ĕ��nd1��X؋'��T�߻p�
�(��/��v/�%=y��$$W�q��n���#�z3@�B�l!��B�lN�����lN�����lN�����gO�I<>�T�	�7۱��u��utpц��Zf�5KC��8Cv=�`C݀���zHS�_F뚚P�0]LHo�1��!�ۦ��`f#�f6�`f��
�t��.��	��D~d::D��V�|x���Yx�&B0���Ά�fC�s!�Ĭ�!�*`�P��
;[����y;[����|Z0[`����l�$g�'9�>�ٴ@���|H�y���N &����z��k�\�t���+����#������d� �
d�U����C�Λ�r@�/h���U\����@a�x���	/#V>]��!����"`+��]��I�+���;G��H$����W�À���x�M@C�=�r �T�I�:d'-��"2��Ri㥌���Zsȳ/�g� �g�N�M�.V�g��x"nd��b9ʆQ�SԨ�_����I4�:'�$G�b�����,Qۛ�������/~��x�ͭI-@��.��do�@�c��.�S��Ґ�4KD9����k��_���\t�&�q��iဍg��O�e=���C�ܪ�[��hE���@Ee9_����u1&Օ°��>�9���Q�0�RD��V?�GD܅�����)�Ygӧ�L����b�u�Ї%*LxhB��Dͻ<RV0��m��G@�\��L6�o������y�0~�����|w�9��í�7�$--�zKL�^_ğ	��w��BB����@w3p)&vKw���xW�^)!ź�.;IjE�np�7D���.���KT	-�t���.�>^&�DM�p�E��Z��E�	��\��A�@.�������2�m�p6ј�^t�pF�P5�u�����,�����և^���t5�������챾U�+�V��F�Q�eB���|�	��C?�ж���
�H_�j���.j���A4���T5�8�����l����<�����?=�oo5�B3��U5���A�oy�>�ڃȼF��k�|`���2�{�ttat*����u��E�&+�NQ#y�S�*B�E�)#�bLė9�kD�B�"�٧	���5�8�Qŭǘ����ǧ)Ģ.YLq2�0e�~���?�/j�� MAB�c��P�n�񺑩���#�6�D�RжtXJ]�e8@��):����K}v�-��1Wq�� �DyO Tl(��k�ڄSB�Q����\��%ZRC��5�φwY&����5���kw�P��ZH�{<K�����_��Xɻ���e/Kg�B�񍦋����2�\7���������iX��y�lC��57����9D�I�A���f�uf�8aG��k4
]��F�j��8\��=�>$+����ỹL�OЩW/���\<��S\?Z@�D��	���sn��4Q {�������<}��M94�)�L�E�ŝnR��/�����k�ػ      �   )  x��ZKoG>7�������XI(����8hMIv�X���A~}�����"��L�P%~]]]�գ%X��ݯ�_
�j.����Ӈ����ܿ�Y���_�?��������û�֬b�Kq&ę�se�Z���3nN��L����;��Ҏ�L��W�;R�Ҏ�L��ד;��Ҏ�����`jG�[ڑ�yv�����~��K�M�3R�g�KEp�uy&E!�\�T�W| ҥ
"��n���rU\�7�ny� ���h�ՙ���s��ҕx_�8��Lhv��+D�S��L�B�9�%eil8 �E�%@����z]�7�7�z���h6�5-b�l��4��Rh?^$���U�̲������?�i�=*��(����C��*�ٱ�fsݬ����׷�j��TU��Y.�mQ��m����nSm��v�vU�w��G*Ĝé��t�节�M������B�b�X\#1O�u����蹜��.� r3)[h¾Dly
[��4b�E�����ؤ�:���K��6�BɃL��|[0�b٬�����Z�(D���%�3�ж=����^��?�y�Y]�yʱSu���kSJ7q�Q��J�8v�i.a����'<EΥ�s��iJ|�_p��us�������5��?V����Z�;��̬�,mF��9̗��H���`�p|)17j�4���\
D�ĕ$�E yi�ĺ9~.T)��8����@��KBe2]-o��D���[8D�.�P$N�F��S�(�J�*��/�<���?;��0����ʕ2����VD�
e�qř�l�������}�������y��L��;o�{�>���
_||z�_͛�%@s�#���au{&}�9nJ��g��:�A���1-Ed�3�x$���z"/�#��f�_C`������F��R	9����u��0m�_4+8�.�����@7'����a)0�-��k؈.C&Wm�����yp�3���fh;7���	�%�;��7�|����t��@N�E�k��Im�?�m����=T"A������"���G>�j�"X�C�笵	<�Z��U ��$0D��*�[��L�9el F�s#?����$`�j�Z��B�
�@O#; Lڍ���!x�����eG�����ʲ�{��W]�1��0m1jy�֠ٿ쁡ܰ=�=.�^�㐉ິ"�F�mOJk�B�'aT|�5 윭�u�����@VL�
^Z�hJIV�� ��w�@Cb�a�Z�&�Pth��+P�O/@ŝW�&H{�Ag/�����X��v�6��Y6�|F�.Bb�9���d//"H���}�26Ƌ&���g��|��" U�B�HO��B U�[D�g|<eȰ�[�y��
���&\00a�W�Okr?>r���H��t�XU��b��0p� �9Ъ��WdIp�=3P	�=8�X�|2P-ah?>3��'g�0�P~P���iU�\�m���H�T�i�������#�ӓ�r (9U�ff,���
��S&���N��d-�����j������Gue���k-*̰���C��Y1(�dgtq(Ys#�$j�ՄL@�J��gVu��=v�����ޛ��Y�*��#�r#-���q�NL���t:�����w�N�?������E�C�IOOzz�gO����4�	HYhh#�E�z U�mp�^��s5aI��"+0n�Om\�q@��8��[HDh1���	�k?ů�x��َ6O"�ʦ���ψ9�ٻ;$��j��(�Դ�P�/�����㍇�w�(�ȥ��D.M������O�<���������$���ٟp:G��S��7��(;����Ydh@���P�s����Hʔ�Ps�j6 �x�w�8|��W&�Hj�q��v��7u��8ҳ�����U����\�0&�w�4EE'{٬M���34�S�s�v�-��x��Qr	$͇������"0�=� ;/��4��'��h�xt�Ԟ	��_"���i4�4�����#�~w�MA��ۉ^2�l����ެ�͂�j�b��^�4�sjM"(�����5�Z��8**Ż�$�8L�1C��S�c����U�8�,��\/��%.�?x�]�dϞ�>�C���U�Fa�
�G��^������w_�Wp�dZ�`���bb5K�o��=2��%+���& ���t��Τ- &�~D:�k!������VŶ�,�)�''���g�!OZl�3C�������l�v�&ј1��妦�h.Ecx�{��.�.�
�f���<z����Pn�	kS�Γ)�dջ%�Bb|8����Z�1�HȬ���_ �
?Bj]FNъtJ�Ж��}� /�u��bq�wyqq	�./�1}�?�~;h�q��1<��$(�"H�S{�V��j��V��2�|�^��;��hNa�V=x��T��&�G�A�A���|G�O<�H�?v���"�c�F4��l0����1��JWD�`������'~�s(D�vc�(J]=.p_8�w�_��] &��P�9��VY,12�㽍�3+��T@��R��ό5�"�S�=��<5�Gj��Q�l���	�FQ��U
���FJ45�B��{��=�!z�DcO�5W
�T/P�#5UR�Fbֈ	-��"5R<�=����c�XUa�
�9�x+J��Y '�lj��p�X����o�#��H�!%^JI�tw���5��?����������8ȼ8�ua�RYI��'�
�}�\�Ɠ<�ΤJG�}h'��t�A�ٶZ���
H��r����l�+����hخ�$Ǉ��b��@���~��pޱ�@��UHp�X���~��S��S��+`۝�$?�t�}�v�e�h��\�
SQ�9n0��B��w\Ta*��q�gwP�;�/�����\7�f[4�5[��9�cХ��1�i�p!g����� v� �(�`��(Y�a�16����[|%�<?�0%�u<�G<	���<F� �zv���ߒz��_1�߀���FQ"��G�� ���x�10���iN�!5����5x��|Ќ�4��J��$��j�C�jI�-���c`S@G���vh} �6y��v]��R���@e9V�����E�.��`+ �`��Y0�����#�k�8釮E��p�)�innޓ5��~�n�ۯY9D�̸cQ�a@aMe2�1�^q��-)�c�a�YBV>L.��%T����C��~b�/�2'RHK���A��В�U�v!�.t/�C�-�qƤ��\@�RĂ�pҢ�\����f�`o�.���v�.L��*��]���,7G��!������ ��B�PT�]7�"|���vCA:�����=��"��B�(~Kd.���_��9e��w듾(�k,�����]��]�}�:�ڐ���@�2�-��Å����PP�/7ua���=��uQ]�VGW𔂠.�f�BI�
�@hv]m�;��ˬx�3U�:104��^��7��8��Ml�W�[L���Dm|s+Ʀi�ip4�RXk��sݕ��f
j[$��I"���+Blp�z@�C Iwz��P�������hS��(B� s8��N���re,������?ٕ���7���sOWk.��T�f� fM�      �   .  x����j1�ϳO��n�?Uo"=m�zd؝ځl&$Y����ź�^���������Q���,Xy�;�-l������<�U�T��l6N�a?�M�l��W�ÆJT���Yk�)A{Ūa)�@���J��Ud���%���T0F�F�&�Š�Qe�����ז܁����&D�ưnh���X�C]r�՟��v-�V؄�ij2%�]�OѠ'x'_�e7 ��=X�:Z~
��ﯦ�OtĊMc��;3xe��k�k7�Y���;+����ڎ�0���z���t7�5{�>���~�$?Owr      �   u  x�œ�j�0�����X�,�*�/P�m hm����N�?�M��=�M�!��}�03�J�}{ɏXwE݇&a@cd�l��.VeV�صl;��ϲfW�f�Fo�Bֿ�����v3d�*�?_B���!>�m��uh��F<�F@�"�D	8/�WR@N)�2	IO��R����9阳ӗ��_��
q���� ��)�)A��yPB+����fQ/z$����]z���z����w��]ګ<ة�7�#����
gs5C�ze�z�Z�>�rY�t�0�F�sđ}��1��z��'7O�)�}�����Q:'��o{�+���!9!�!!��,��p�0��[��#�Gd�0��z�`�����c�����9��      �   P  x�}�Kn�0��3���z��wъ����]7��F�&������I�$^�7��cʦ.@ k&I$���訃�]&��!CY���.��!�,���Q�.)��K��ʶi�������eVf�
�]L�!�PM�i��}&;�l����������:}�4�2�z���U�w�s۟���],~��4�h���c�Y�Aq�� Ȝ6����Ks�a{2��i����}~6�u�xm;x�&�K?�VDf^~��v;ئcdqtizZ�c�İ?i	�AsB�x23��x3�d�3�K2���"{�C� YX=��������H>jRA��|	�B�_T�l      �   �  x�}��n�0E�3_�0�>$r��N�H� .��ƭG�!v�E���۔HtE���`�<5�Ӻ�#KV3I36���ٛR�g��'B��M������9���{m��+��f���J�^o�p���4B�ad�T|�N���mFE��C�o��I�����WFH�Sm���b�z7���u��Ūk�0A�x�ЪJ�q��^�Voڟ/�֩`
�y*��ԘDX����E�����3�
��p=[!Mu��"�`yǾi�QuoS��i|�6�s�G����w�]���SJ��a������$|~|^>�m�:a�	��O"$����a����:��^r8*��D�v��U)X�Y�!)���zx+�k ��4�v�}۶����%�!���`��*���b��q�d!�\K/�0�J�8B*�ۈ�YV�HQ��=f'R��v�*Q��O"$��������j���YB]g`R��G���	�?�`�

o8�j�P�b8��9����y(�����D�L      �   �  x����N�@���O�/������j�H�Є�q� D�T����/����m��c��=s(��_|�{ݽ?��%B	P"r��Q+�Ji>������?�w���#���)&W�R�T�R�5'�EQ]ϻ����a���,�������n�����6��)�Ei�V�@	,�
��[T	��G���p��ѭ42U+�xB��$� >�A���Q�PA�y.*R���Xvh��0D�"��´J���q�!���r�����f�mP����TT�Z8�ԥ�4/��#g�t��D���#=�L��թG��$�W��d��@�(/��
M��R����ec���h�A�,�$9����3$�Q��ư������� ,�<��,o�!d�Ը�%�!�'E����SY�I2�/5�x8�e�i{���AQ��¶%�3Ф �2{���D�P��W�Ŧڬ'��Rx�b��fJO����{�)�s���~	;�eV��a
��� h����)�L"������rr�Ĉ���$b!�����>҉q����g+�J�R@���v��{uWm���i=�wSN����v�}����d�����F'78u��AH7�a/��O���GA�S*���4iPZ����>�̆�2֖u�JױP�A���vbq�Ӯ;�3���x��C�����»���\��-      �   �   x���1�0���S�m�^[�n�!Qqpt!�I1p4��ń��	������W���?���O��wc3�W3?��@D\%NG�h��e Fa��Q�aQ��h�Vd��T˔����ҍ� �� �8�jIq��w�0�m�¼��G����v�w���ޯl눤Rf���^�gIZMj��]2ƾ�6v�      �   �  x����rܸ���S���|i���׎\�z��]��\Zd.���J8O}���m�|�t7ЧмHU�
`w����g������N���rV�_��ʲ�mZ�Z�_oW������0��K�U"�g8x�D��\�U[�5m��NA�7b�
�w��_s��{�w����K�������$j���QJ+�Q����%UF�ȵ��}�"�nZ�[�CW���-���*�g�(����V�ŕ=4�,?9�����
����x�]�?7�[�^8�^��b���[y˱�P
��E��^,6�<�C�;1�����Ģ���<+��;���Al�9E�G���;��J~,
���A�q�F!q�ZB�"���V~(r���������{L���-8\?B��Y���|���(��҂�)��AWc���Xˆ��q���QG-̈́#���A��Nc�u�6�2�J�$54�u`b-B҃']��b�2�֠��a� ��ϙ	��]}�]�c$9���ʏ�D"]���Sc��dWWm�R������gHB�a�p2��ӀʷA".b~JI�U0�	bԚ� l���,�6\8Ӏ�ؐʁ�l���x<��U��p�?�dN�^9-%qE��V�u�[�n/v>�M?�J�����fGڀ\�9�`~ٶ��r��2t����
�flb�4����D
ɾi}��ܕp����)�CkĤ�R�*1���=��������"`����"J�@�nq��u%ƕn��)'���(n�Ϟ�G��٧���}�
zC�[�Q7�}�ğU6�*��wPX2urV�ĠPV�B�H�($�D
�#���ţ����g1���	3vE�X�Pܠ�>i�/"YE�0�N�c� ;�����'�����v��+R|r��� ����`l�L~<l#pw��,��A��'X�Q1�s�k��[�0Â��o�m=[�B%�H��s� C	n�e�����`�H~h� r�7��+���2�NA'qߑ���o�?g;���NN[�L[�d�!#qF�������ĵZ��(I�v�-n�l]J<�w���ε�("~g�I�U�[�[hAe8N � ��� r�2,N�x?a�6����_�O+#����'�j��E���1�IN��>�ɷBB������b֚�֜&�b�{����W�2r�6T
'�� ��翘���`�H�t��t�rVx���	��=������Z),b�0r؏��4(��PU�&^�	�p9�g=���Q_�pN�jG>������b������y����K�:9j9<�2���xit��{��;�#?jo��V���Ëya�sg
����X�9^ӈi�a�͍�J�Qa���m��O�u|V�Y��aь��,^�w|5ҧ��D�"�5	S}�ݤ�61؏6��ZG'�
���.v$G�u����Z����j�Eܷ��+~탒�L ����u>ʹ��x��y�Zh9�����T�<c���i�	"������x9i�;� 1�j��5Ͼ�L��;�hRѱ¤;��+(�P���@�	o#�d�n��u��^��_�Ӆ?�N4&��0��A)g������-a�ʁ��]�$��:M��(n�=�|�2��бW0�A�U�V�	�#�v�Ɏ�rI�g���Ȉ���bϿf��6�+o�s����R7���r�:U���6��ɗ�E��AW��I���r���+����u��5�F�	�V��Z0Dy�㊽��l�p������lge2^F7���ɜ�x�ao,��a��;Lp��r��oTF��ǲ�����`y�f���������GT|X�7nC�d%x�
�r��3(��,"jxŻ�G�rE�{���ΰw �a� h�"+L�|�(��ed��{��8hZ]|�N;?%4}ſ��s��0���vbg]+�T��H�*��JQP�$؂�a��G��y�����3w�?�����˗���m�      �   �   x�����0�s�\<B�Px/c�F�Q���H�z��M��o~�{Ȟ71��k�ژJ����6z����������}�����Pha�8%�g���'y��(��|*��+��M�\��%ï��#�aI���z!�ܚiw[�b>qxʁ�k��z���      �   �   x�}��j1 k�W�$vWou&��p��AR�1�Ҹ���A�7wr@�̎�%5N��:]>�O�#�!25be_mIl0���e��f��X�J'"8qK3�c��ND �2��f(�r�;A����\)X�n���ĥ�*�7w"$��~���yߌ�qV��I������*du�?�a{�XS��*&˔�̯�{��
�`���E5��!�g{��k�N�PҍU�6�۽|X �! ��      �   *  x���1N�0����@��M�` �H�(ˋc�F�S�)l���!�+���ҧ��}r*����,}u���L�H�H���|���3��e�n���R�0�o��?a�k���.����G0g�[f���:uc�0��,y��\!mK��-B�@@� ͋�ԭGY��L?.�.�;}B8��ঋ�\hAqaj�j0Lv�ؚƹS�Q���X�9�Т�z ��y��x7:~0�y����8p�"�tɅV&x�@r�Up� ��B..�h��#=�r���!�Zc���櫢�Z!��Q�ç^t      �   �   x���1� ��O��(j����������XÀ��Q"����J�ay2�\b*��@a��ET`�l	UV*����XI,��*�T!k�_h{zh������-d�P܂����[�d�Ub'k�La^»�ؽ�g�zӄ��[�w�Ԇ��      �   �   x���;!��V� �1�����چ�-H�Aĝ�7f����?�P]���<�Y��[��<�:(B�h��}��a����H�V�4�Qb^�c�j�c*2��=��,�nO��d�,� 0F7��;��߫�:��O@9      �   �  x���Mn�0�לS�"f�?"�S� �HS�	,P�A��9M�����K���h!�{���xؾ�M�G����m^��Mwx{�LQ�,1D��ъ�h����<��<=����3��͢���[�֕�Y�R�N��h�	*�>d��_����^�_���ɡBI��j�\�C�'���*��4]���� IGvYC��R���z�3��t1��(2ׁ#���_^�G�X�;�$a�>V��8�AMۊ�i�H�f#YG*#�rȽ���m�f'�]��^�X��
��kʟ��"Q���4bOb�w���,&-#ۈ���q�5��YzI�F�KY̽�6�9��`v�p�4u��.�2�Z޾��7�Ckt�AY?��9d�=M�X�i^�q^ˋ�)r��BhR��˝L	�R �o���      �   �  x����n�0Ư�����1��hZMLi���b�nP($S�x�]N}������]�6 ��Ώc����ߪ�4Nuh��C��n�zs�~n���8��"��;,�^ �GY����D8<���eߔ�g�<x�ng����gp,��l�<f�4s�t�.��9盓���}�8�̾��Ģ�˄���Xr_bH� |���������.ϺP8,�~(���7�����sC(f\1���%®�7���S�)�YD"X�=��E�~���2��mI�8�fX�Ġ
�@O�%�%G	3.%�r���(ӧ!�ܛ�ϥD�yo�� �ЅV��ҺG��5U́A���Q�|U>2#�i�g�;�z�u]߶}{���ӻ����vu�7�[����l�v�J��]��)�T��1]J�k�-�fm�4�3��`EH�S���`7��I=τ$�B�63'�      �      x������ � �      �   �  x���Kn�@@��)t���>[I0�U���nT�r��a5���G��:�mA�خBY�G>�hA~<lw���۹��m�9�O����?�5ӂh��43>�F��v�A�wJ���S��PZȟ׏�W�r�PE�e��ZU�*Z��C^EE��˧/�#�SDIfLf��W��A�4жm�b����<d)N̵�=tux�iAa��I,*�1C��o'�bE.�E7�I��mvM�{7���Dy'׀0���C�>�y6c�R�#����u�0ੇ2���f�{�Dp:���t�4�f:	-gS�GH����<��U���!$�%E1M�&S*ԏ����(?G�����0:Jeɀ�.;I��+���z��<��B�%�V��1B�Ck��c���϶� %P���2gជ������Rx!���ձ�����,����:V�p�A&��B0P���}�2���5��*OSB�^f��RD�F����$U�xYrC��}�6Uij���W���u      �   N   x�3��K,)-J��tI-N.�,H�<�9�����P��P��H��������X���H�����WiQfJfr"5L�����  �&r      �   �   x���1n�0�Y:�.�����jg�b蚅��B�,�$G�ЩG�ŪE��������h�{a�ꢠG(��]o����u�E��ʷ�r�[������ɱ�k��jȌ����
��U�^M�Hiv�B4��T�����NN��8AˈQ�E�?�<}�B���;�H�e|�ܝ��]�(��ݎ���&�Y��[�2ݼ��W�B�<���_�bñ      �   �   x���=
�@���S����L��NTDPShi�[�C~���#x1#��X��j���<�����
ˬHrK��y�JDiL����cRzJ�A��!K�s��G0O���2�K�#�q��G�h��r�����n�fi0@�L���& a!-����>� �!9"E�bH�����=lV�)��[H B��=sl�f�1��8)!�;�u�      �   z  x�}��n1�k�)Ԥ\.G+�	����]���k� ���}t����ʩ��R��y����{�Ղ���'M�A�	������?)&��4[T	o|�8�e>?��i��䁹C��C�e�['z<,��i�m�8���V��RFw��}9�H@ZW��Ԡn�R��Wĕ��7;�$�AZ=b(=���u�EX*R��t�u�����9��買oÓ{�qBu�UP�?�1}9�ݬ��J�R����GĈ�rz���6"�ӷ��6�޿E�D�.�o�H�#{��n��^�M����zc��-��%�"F�����*Z�����Q��|��m�����R��x���^�|��*��v����{ �C��/�=�      �      x���[r�D��Ux� |�Z���q��,U%����DN�H�@��������헍���C������>�׿�Y��l9����ϖ����G���^�/��Z���d!��x�Lvaz��T�L-�-�j�e�r���R����-�%������Y
S�1��
�x���,�����Kץݲ�C
��m*��t�˗�M)L�^HZ/L�R��i�zي�lJ�}X�1���^�����z�f)L����Q9��y��z���T��.��lJR���i��z�~��ٔ�_��������z�R�_�ߦvZ���l̻i!ɇ�q��nt8��e�L���?T������u?����n_�p��m��A��헸��Q��h��+��!��Y���r�%ŏ����P� ȝ g}R��N���
�>�a��|�]sl�����~ď�)��7z�Z�~��;���5v�ݺ�;d�� ��c�Wks.d�N�X���t) ����뉯�ɴVXŪш=ˊ����
��0�&6�s,eBVAP"Ăj�d,n�	��`L����wA �E�Y������
�fB잱@��]VH�2܈���`j^�� ���ڳ~�|��mm� ވ�W�_p�m>va�aow{��Ϯ�]'�g������	�@*�AlX�hB�>
�TF& 
ҟM�����0��m�n�5�=�C)Ʋ$���!f�<T4`�Vۚ��PA�L�1�c�Ze�������G���l�����o���>�h� <�@O�d���3�bV����}&�[o�U H��ϲ�֬��X���c9��p��plaK��x2*�������\3ͦ��`��=��#��}pggf5­�M��\/�.�EHEnK�""��F���|(Uz&D@�$������ ׈��"6���
� p4�*B"Y{�L`�q'�O�h�įh�}"*�	+����]Ha=.�UD�c%@a����,�~k�	�� �Ƅ��8�̶�!R)��s��w*���hD!�F"� ���6�y$�
�3�k�YD��T"���hv�I���au&ș��RA 5;N������P-r!��x�G���̒�PAHm�j�2�6�
�$B,�jז�^��U�ca�dG��ZO��� Hc��+��4�����ڐ�Ɉ��I��p_�.٣�
B'B��y��w�UYa!��.��9�U&,�,�J����IGt!���-�.Ya3a�b~��=�pY�
N�(B��UX�2��ky�ԑI���}ie���U:&�Թ��I�D��?�YC���)� �8�g��d���P�`-b���ĩƁTx$#�u�6F�}
e�#_�Ȫ�`��H��I�#�/���ޠ��z�Ly��*�vj�C%b�L`��؍"y޽w+��Uxf��1ڒ��������+�.K�KV���Q�5"D��VAx�C�v�=��*Ƅ���Ml�v����D�,dD�Z�$¾�}��v��ZC�
����]m��x�PAx�1�|`ܢ:�P� ,&lDy�fK�t���3�o����	O1��Û"�Fx{��7� � P*����YA��'�j��|�*��DEe"2�Fr�\� ,"�8��l�х
�f��闵��B�3�A:�������U�	�u�i߳"�
�fB���#�.ނU�	����J�U���y�N�;[֯�$-MY�=�R?���&<��
�d��9��L��
��O�כHZ��̈́s�ӗ��^�jfc�c�����*�����kUHA�1�]�b#ᨡPA0"�&1�9�.ނU�	vr���xVA�L��� {ʋ
���q��H|��VA�D�RQ���2�B�}2��X�#J�)�,T�'��J��=����>i�y���g� �O�ߗ�F�w����>ix�XEM7'F�
���3�E�^�&� �O♈���*�xf\�T�ᮂ�>��L�v
��{�'<2c�.˱OVA`B�~)d�k
5��2b4�Ȟ���K�
��/����K>�*<�,b�\5)Tx,��߻x��f��Xک=�u�n��0��8�E���F&�
�b�@���VHa3aƐ�n�g���GoJ�y1wmm`cB��9����*΄�����RA�D��L���j4Y��!��[&EX�9���D��-��*�
�f���֠�p��^�|��:~�3�EVA&��ߚU�Ke�D_�X�Wm c�"d�UG>E�;��,"�;��TA虀��ٖ��*� �kD|2�Gf��G�nj�������&�EH�=�c�'=��?��DV��쏺N�n?��U����M�e^�*�vζ�ӣ�VA`�����|�R� �G�O^��7��@*쑨�7T^�=�*�vΌ5/�%� �GFF.�.�G�
{��<n8�Õ{�H7�c,)@b��#��ؕ�-��U�}�>$�!RE�TA`�|�3^.|����X�p8wMlE<
'�-r�e��B��Й3?|e��v�Ba0ab�ּq/*�zr�>�R�U� ,&���k��Py$
�̈́��2i\7)� xc�>'2;P1��� Dp��6F�X�$� hA�؋�O K��Ϻ�Lq��@*�xf\��'O�B�}5&�f�b�B��z"���(��"���d>'��Ƚ��V� ,&|�Ch�)r*T�y�d1�c���BBoD@mf^AY/�� L�Q=IQl���LXXA��9�Xf�΄���-M�$�~��6��(�V VA�L8��2SZ� ,&|����I�=��(c���j���*:M��z�T�b�F�?�T)��*��ɏ�F_��lꆬ�`LP�gcD�ڐU�	g�dŦȱW��Љ`�Ti�1�UN�|�]*3�W̝o��*O�_kX���PAؙ���[Z������I|��M���P�����Q¾ܢ��hfmP&�j@��3U
�[���W�D�r�R��q����q��3!� �L@o϶�l��0��'n$ۜ��
�d©��B�fE �� ��^��V&d�}'詫Dtaf�n�j��qN�j\#bn�ݵ�F�~����C��7���B�����h�-U�N���n��ɄB�����I�Q�_�J��ZD��)��Տ�����6V����:6�����VA���|����,�k��y'|�a�c�N�w�*AXD�]��YqOm(T6�#�]�EX�~��AX������v%F��=*��{[nAVA�L�\�|��U~�Y�n�W����G5��^�D�M�y�F�L�K-��&mhe;�͌����*3LO��%�.�~��g\���ި�5&dұ�sǮU	��EF�*{��%�eǶ1��{��c�.����'R��%����*��AO.��Ȅ�a0A����'*� ,&��۴�G�P���`�f;���LH�ǐ�Ga#By&��9�E�A�01w{[t&�F�2a�gmt��F��6��8�ص� Nĉ8k�E�*�s���_���M�5�&���F�*ڰ�p.(��}�=�R?��A�릙�LhrWb��V���=nh�5|��{��w�;+����a���.~���NE�a�{���xj��O�T����b�be�v�F�����TU�_{�Ge���>����-�vrP��n���x�F�[F�Xcߩ�I�gW[�tX&�����3�IO����ߩ "Z�i���U��
�2�LV��dc��*[�*�:�;�>aM7��X�
�f<�#��cUc�*���'�"<���^�T�"��qHz�$�OW���{��	P���I��>�?.��w�5|Z��O�YG�j�}yX/T�q{b�G�����V��wT�<��c����/v�&�P��� �sGm^K�=gT����E�k�>�"�
���0��A�g����7)�T�� �~���d�h������0n%5�s��.�Na�����;"���4��������3�N6�n�3֦�j���	C8��ɢϴk��͟I�V�����M�N�����}�1�    ����_�~��      �      x��}�n\9v�o����i�/�e�3�L�;&5RY.��RJR�=O���s)^���EbJ�i�F{���o$5W�>��緷���	��a�^^�n~��x��?��_~|z���p��������o���y��������2>=޳wLr�~��y��v�?p�md�\���I6$ ~��7<@�(��0؂��O����$�ޞ�����<�����Fa�L��`V*�oMŭT�ߚ�_���5��R�k*ҳ���-����Z9��54�B����F��D��i|d`�����"Z1Q7:�\�&	4HŦ)�ff�k�w2y������7�'U�0�?H�F(b"�d2j:�ԇ��>H^i���S ��lF��N�ɏVN�����7�?�����{�j!#ɮr>[v�DMF�.F�e$#1UD������pL����&�2��(>J�6�=��"A�Ώ6��jL�t��J�FA}����4.U)>���X�bx��`C9D��ZF�~�*�>�O��ǻS+���1x)}����DN�ip����l��͎���L�͍�
�QT��!�����|>�=��<�ϯ����?~�闟���|�cF�QʡA�jd>X��z䳙��H�Õ��6���7"��	�-hP������O���ݼ�R��?����}7%�4˸���)��dO��}��;:��C`{����|4���S����߽ؖB�e�o?����xH�:z�2G6X���-f�uOT��8o���є6��Y4PC�v��k{���$aH���C�
�z\�$���㽧��n�x���E%
�~`����uq�(�lG0!X��c2/��lo��n��\@:6e#S]wݕvv�$�M�6%�>�Z;��.�5<Pf�7#{�6f�Z�A��k��$��]4b���h3qܖrh0�=4 ��_tҗ�sh�B�g¥��ڿnbN��t%BiNsh0��|�0Q�G�7�#���gw>��go�������u��G�a_���!S��Ζ	˸L�A@2�)ܟ�q���?�&V}�b|=*cK94`>>�ˆ��a��`�um�h���N{����uֱ���*8$�����W�Ҧ�`$����8�Q(�7�6������f�ENÓŠ-E�,2d0�=C~�M�Ӷ
�K�j�ϡ��ݗ�y׍��X�!l0I 8Ɋ�fEՂ�>z�4Xt/*_5�c��ܵ��#�m͡��%���Ϥ��FW�ȐA��=�_z,���H�L;r���
�gw�7�ww����8$�`{�4�����M��-h�������K��W�_V�Ӿ�(��kG�*�C���p�� c�UF;�8�?��~9<C~�Qq��]�QI�`�� �p:����We��o���d���s����'��k:>k^ �j)]F*��
+׏JM[�`�w�;�x�?!��&���W,�`��m0�@.��d����T�D�
��EV�����Mam����,4��"�ecT���٨>���O�B�zT�J��-�=�<�J5��_UZ��9�b(YKsV�y�r���w7�!CrA�C�jl.J�2_XC�4ڮ�T�����r�+�����\eZR�>@^R�@Q�kEBq��ܔ[`^����鹏�N����U�K^�{|�o�$�R����`ş�ױ�#(�g\�<*h��OѾ��S�M+����www������@��+
h�}���x�_���������|���A�M��(� ����.����k��>��U4^w�=�/݇@��U{S�����Qk21�T�F3d�pn����kC*��\W���`,�|�3�K4��"T�#��k�_�"t�YcA�W����'|�>�OA���c$��e�4Nj�h�<��*��C�&i���m9P��)����M���A��×��'�����GQQ�0��=M���$��	|�"�QC ����i�L4Z��am
1JWF!�l{ZR1��(xf�j�#�Q�\t���)����+Р�f/���-o��0U�.�GR�����	A3+#��*������Ǳkl;ě�gy���.���h�iQDIN���M�GMk\��R
��b?��&�&<$u7*��Ɣ<rh�J$Ō`������AoU3h�J��?��շ����~�<�RC��57*��W��޹zdR*����?��
�J�:�B��@+Ijaڞ
HDjI�]�%�E���󡩍���O��u�/���@ð/�c�5�[�	��ZA�f,��u�I��"�q��\I!��5;���mLBR6�2��m��H8�i^�V(ө��RlMuPgJB94h×vɩ��!��T�trd�����}Ӑb�#����h�-)�t5DXb?־ˈD�$����N�v׸rkb/U9F^��rh�_�<�0p
)��ݵ�0hv��k�+���~pU�*��x���y�2j#�u: �G�J��m%��m�Fbד0M���p��'���G�.��2���M�oD�̫0Ѿ��xDɹ��O�A;�V��~Q�4H������k��M�[�Q�C������PHW�4�ƽό�Zΰ�<KH%٦uO7a��e,O�������G��k�uP����g��~k}a3�`/�@I���@���̚�g��5<9Q��@��N\���-�\,�ft�.�� �q1��Ztl`���xPB)�ljJ�{����&���%�c!��ּ�b���N�s�?�)AY|�K#^@��<ڔ�����O��֩�U��0cU�!��8viN�����c+b#W��4HO��ے"D.F頻r2H��{�/�P���!f}d(����=<7J�xT%�Ʒ�AS0k/��H�]��)Ӳ����������@P��z%6��)4(��Ӊ�Ǘ�bƚ|M]MF��d������6��m����M5����ۊx�Il��SZ�.�L��oO�&�J_���$;b���aI>��r��PRhP��_/�u��Gm�|�jj7��*�$�yI �YSR�@I[��!�����-�r����(LY'+�AI���UVuc�Y�\y� ���S㾋)-?��s�� �S�+�EnxGdJ�r�:�BBv��`Y�-'��N��ȭdn��K��0w�P��.�-||ʧG�H"4|�N�ل�M�����*��!l�R��At
~��l�C��ΡA�������(cj�
@!*��X��	�� �d�cN[��
!�>����Ŕ���SR4{~iN@�(�uT��4D��xzl�ŭ��x��S[e�4�A�i��H217d�FkF
ʨ�#�G^[S����^�a���0����0s�V�ʕ�!�g3!n\��cN�N�Nt�ȡAY>{�!Nt��%�I�%q�R�������W[I�k@7���UM!��keUJ�;�R<W��.�JfA��&	�S�
e�,%�}(G��MW̟>\b[�
�QcM!̖_�U)C�R���O����
4�Tゎ�U#K_�� Zu��asU�5ѡu-���
��(�A�ƵKE���vúv�Cݸn��I5�z�s�=�����C����;��y�!ȡ�6 ��3�*��D˥�O*%�wh-B���z�O
:ȵ�E�N�D�C|k]��+(#(j�f�E���ርŒBp~�2a<�l�ޅ3k�\u�a���^z9�ZLS�R�)��`2_@�e�uV�����A�Ӿ<���YE%�����i�n�{�2��^��6(r�]�z����x?�Br��R��,���iڄ�vY��C�]v�͛�w}c^\�-V\zʽ5	7h��j���cೊ�u-!T����̢W]��!�ujk�wL�H�������y�	����O��D����F՜�j2����X�N�Ft��B�A�!`cצp%C��g�E�uX
�P/���`Ǿ�D�)��7��e�c5u������2m9��ia�[揮��P��ß@�V<�D��#��kc�R�,��R\w#�i�f�BׄRq+g+���*TOu��\m
��b��|�����H��1	e�F>(��� �  �O����Nk���Q�} 9*aQ���r�2�m�hP�\�z�V���%y�J�`7�O��ʛG��}�^I�Qtue��_�T��>i��lR�U|r����xU�!�7�U��� �q+�$eD���ƷN!�v�̂�����j�+7������aGJ�_@��D��r�O�jT�4j>�y~�P�vm-
��%=!u��F�{�4���P$Ƞ�H���s��7�s, �QI��������fGz
����q/W���]��Pon�jFc�Ah�@�f���n�jG�6�M
���urY�~3�@ 2B���I���H�РCむ�:\"���D�5�hL�{�!���eBo�I!��B���DE�UX9�7�M
��r4b�>�7UL])����O��g3X��&�$��E��D@&�dl�Ծ���Ap��*G�˕��'�d:�]U���@G-t4�QE������5��������d�͆���C�)-�b���-t�JǄ>V�i��B���"J!��	�~kB����1[)>��6%x'�����W�J694�2L�~?U��g��At�@y��&�MԖ��������C��hԨ �n�L�?~KtA���%B�kqV�t���B�rtמnr�d'D�:��-�:���JGw�P�P�f�V�H��K��p�W��f�ƚI!���>O	W|4u�9�5_	>;*M�,K:M|c�Rh0���q�{�i&Q����1*)�2*��K?%�6lN
��L���%?=óMgF�F�P�n*�b�^��B�������m���$��as|�ݟ�Z��N�D|��VaF����~�ݽ�G�74&�@��W��N��(��x��;�C�V֢˹�(T��B�6�+�����Z�~|��n�p
����������0�)>��ǖ�iW9��y���:Z���e�2jC�S|����ʑ.|ȷ�ۗG+K. �t*�+�19s�eJ�S@�c�&����[�Z��AV&��@�]ȉ>Ak��%Q99>~�#��'e���lJ'G@��
�:�8$��Ǩ]��
h0Z�����m�Wq�6� �F&���m�-��K�*�B�6̞?��S�@���jk�ٷ�0Jy ��@�d��i(I���.�@Ȯ{�0�KU8J���ԸA���Ÿ�>�5�G�(��@T��C���(m��0Wt^W�5� ��[Ji���MR��/^���i���z_5=\:Mї@�ܦ>����%\y�g���f__�?�
�S~t�G����n�q	�"��eںj��9��?�;�v��
�fN��|���O�bdd7?��?Q?�-I�P`��z���32^�m��sh0V�'�idL/�_�~��]�!y�i۩($b3 ��Wӹ  �����{��h�o��eW���N+;ѧ��U���@�%�өNRcm�W�����h��r�>�/?�ʦ*��`g������pz��_��Ç.����dPd�O/��x��t�q	=1����2��,t���TdAƏjN�[��T^�^�]4-\`���+O�BA��l6��O�G�t?�_����'ڄ��d����4�-���!Ú� �>��ǯ�}��a��W���Y�A������o�Q�|dL�k�f��P���	����#=�������~%a�ۥ{��vAQɧ�v�8���H�����磆�
L�,}�<U�+55�1+���r���9�w3�������M�q�AK�W��\Tg�Ѳ�]��]�R�j� �)�.��E*mSE@���M#�]/>��ML��O
��O�t馚�Ɩ)�7�'���һ������j9K?����6ޗ�,�KJ26T*o̔�H�bYu���ب��zȯ��G�����p�%Z��K��S�R}
\��(��W���b���o���*|���"A��՟�Bӟ�~
=�5���&�.h�@?.��;M���n�b�!5��J�
#��������"�[�$�<�TA`�D��N���_i�ǟ��xkE��ʅVA���A+��{)i����R׆��Y,�qQM� ��4�#��w���{Rk̨ir�G�#�)/�� K�f�l�{�����'�$B�gm��H�QOG�L��oA8����٢���Q�dO�͖W�U� '�}�nUnqQa~%���!"2_)��ϥ�yt�Z��t���ҭ���/:�"E������O���a��~���m�ߗ2��Flѱ䕅�$�x8?��պjcu ������J�s\��E�d�?��6���@����lP�����R�U}Z�<'���ڜ�6>�MROQP��Y/�!�4;�a��b�Dû8`�B�ki�X���Ε��@�2���&�έ���A�y���ܠ���a�'mM��`��v��<4�vT��3O:&�Y�J���s_*

��54X�������lɿ�M��,��[�@ #�����kFE��ݰY�����%�@��^�������^��&�B�5kj:):0N����9��5�%�����RC ����1W�����+-Ȅx9*]�B�!�1����: �z:�4pm&iT$�e���@Ĳ/ըK�b[����E�JOrd|$�����H�~L�4&�@'�t��KH�[����$�`g��ǵ���G��݈��M�6ϥ�hv:ߞ�K���~��pB`9��#�����5.�t���h]γ�wS���x��.u���b���������W/Ƒδ����y��F�k�����D)��nc��lC+��rw, p1������	h�+M?���;ʻjL,����x��N���O#6T�回56��<����B�F^����d(o��!������ح=�-M�x+n|:�2x2���������%��m�m�Hj���b�@���=�·�o�M�.^��p�^.]� �+���s*��]���S����YY�7�~;���m�i�f����2t��U�e� �Q�i�8����G��F���$�h�{��帿lX�X�:4=�A��5��旮_Y�߭����}�4O-��o*�7������_&̰��~\�n��񠉋}5 ��/k�J$p������2�A'����Ƈ�d��z����]�U9w���qA�f=!�Z�r�j�S-r��\�\mPJ!p)�Й�yEf'�p*��H�g�:�[dN�%�.w-u�eD~
Eq{o6Zt�K�驷�lB�V�G��n��3��\�V.ee��s��)z�m�
�Hy�:�:o8�1A��u�D�;�tG5P) F�_�/�e���D�X0��՚ˡ��v��;���Xk��֊���k���*��F�����n�4"�dnbk�̗W�	=��x�i��q���:	�t_?�P��!���[��\�ÿ���̮�mL�Sb�rK��UA 6?bDČYO�O���by�l��p�O�d� �2��2�x���I�Z�Y6=R:za7h%hY�k����x�y���][�vˣ����4۝ *,�;�v��N[�VG'����H�H��(�"=�@3��5|n|��!�(�i���{�h!��)=���Ӥش�&�B1;͗�]78$B��]
Њ���ң�||�<z*��mB����vy���[���+�>���ŧ�rsaB�4���k3ɞ/E�H�EH����6(�e��m�K�5�J�0mYW���e�kC"D�B�._WH�i/����?e�>������zOc���p�s���r�A     