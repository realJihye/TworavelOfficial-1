DROP TABLE ChatJoin;
DROP TABLE ChatMessage;
DROP TABLE coronamap;
DROP TABLE GLike;
DROP TABLE GAdd;
DROP TABLE Gallery;
DROP TABLE Map;
DROP TABLE CompanionMap;
DROP TABLE CTag;
DROP TABLE Favor;
DROP TABLE Category;
DROP TABLE CAdd;
DROP TABLE CompanionInfo;
DROP TABLE Report;
DROP TABLE CLike;
DROP TABLE Out;
DROP TABLE BLike;
DROP TABLE Board;
DROP TABLE MLike;
DROP TABLE Companion;
DROP TABLE Member;

CREATE TABLE Member (
	M_ID	VARCHAR2(500)	NOT NULL,
	M_PW	VARCHAR2(500)	NULL,
	M_NAME	VARCHAR2(500)	NULL,
	M_NICK	VARCHAR2(500)	NULL,
	M_BIRTH	DATE	NULL,
	M_GENDER	CHAR(1)	CHECK (M_GENDER IN ('M', 'F')) NULL,
	M_ADDRESS	VARCHAR2(1000)	NULL,
    M_ADDRESS_DETAIL	VARCHAR2(1000)	NULL,
	M_LIKE	NUMBER DEFAULT 0	NULL,
	M_JOINDATE	DATE DEFAULT current_date	NULL,
	M_INTRO	VARCHAR2(1000)	NULL,
	M_VISIT	NUMBER DEFAULT 0	NULL,
	M_IMAGE	VARCHAR2(500)	NULL,
	M_STATUS	CHAR(1) DEFAULT 'L' CHECK (M_STATUS IN ('O','L'))	NULL,
	M_LOGINDATE	DATE	NULL,
	M_REPORTCOUNT	NUMBER DEFAULT 0	NULL,
	M_PHONE	VARCHAR2(100)	NULL,
	M_EMAIL	VARCHAR2(1000)	NULL,
	M_EMAILHASH	VARCHAR2(1000)	NULL,
	M_AUTHORIZATION	CHAR(1) DEFAULT 'U' CHECK(M_AUTHORIZATION IN ('U', 'M'))	NULL,
	M_JOINWAY	VARCHAR2(20) DEFAULT 'MY'	NULL,
	M_POINT	NUMBER DEFAULT 100	NULL
);



CREATE TABLE Category (
	C_LID	NUMBER	NOT NULL,
	C_SID	NUMBER	NOT NULL,
	C_NAME	VARCHAR2(500)	NULL
);


CREATE TABLE Out (
	M_ID	VARCHAR2(500)	NOT NULL,
	O_STATUS	CHAR(1) CHECK (O_STATUS IN ('Y', 'N'))	NULL,
	O_OUTDATE	DATE	NULL,
	O_REASON	VARCHAR2(2000)	NULL
);



CREATE TABLE Report (
	R_ID	NUMBER	NOT NULL,
	M_ID	VARCHAR2(500)	NOT NULL,
	M_ID2	VARCHAR2(500)	NOT NULL,
	R_REASON	VARCHAR2(4000)	NULL
);



CREATE TABLE Board (
	B_ID	NUMBER	NOT NULL,
	M_ID	VARCHAR2(500)	NOT NULL,
	B_TYPE	CHAR(1)	NULL,
	B_TITLE	VARCHAR2(1000)	NULL,
	B_TIMESTAMP	TIMESTAMP	NULL,
	B_VIEW	NUMBER	NULL,
	B_LIKE	NUMBER	NULL,
	B_CONTENT	VARCHAR2(4000)	NULL,
	B_SECRET	CHAR(1) CHECK(B_SECRET IN ('Y', 'N'))	NULL,
	B_SECRETNUMBER	NUMBER	NULL,
	B_REF	NUMBER	NULL,
	B_RE_STEP	NUMBER	NULL,
	B_RE_LEVEL	NUMBER	NULL
);



CREATE TABLE Favor (
	M_ID	VARCHAR2(500)	NOT NULL,
	C_LID	NUMBER	NOT NULL,
	C_SID	NUMBER	NOT NULL
);



CREATE TABLE CAdd (
	C_ID	NUMBER	NOT NULL,
	CA_IMG1	VARCHAR2(4000)	NULL,
	CA_IMG2	VARCHAR2(4000)	NULL,
	CA_IMG3	VARCHAR2(4000)	NULL
);



CREATE TABLE BLike (
	B_ID	NUMBER	NOT NULL,
	M_ID	VARCHAR2(500)	NOT NULL
);



CREATE TABLE CLike (
	C_ID	NUMBER	NOT NULL,
	M_ID	VARCHAR2(500)	NOT NULL
);



CREATE TABLE MLike (
	M_ID	VARCHAR2(500)	NOT NULL,
	M_ID2	VARCHAR2(500)	NOT NULL
);



CREATE TABLE Companion (
	C_ID	NUMBER	NOT NULL,
	M_ID	VARCHAR2(500)	NOT NULL,
	C_NAME	VARCHAR2(4000)	NULL,
	C_ADDDATE	DATE	NULL,
	C_VALUE	NUMBER	NULL,
	C_MANY	NUMBER	NULL,
	C_DESCRIPTION	VARCHAR2(4000)	NULL,
	C_LIKE	NUMBER	NULL,
	C_DEALSTATUS	CHAR(1)	NULL,
	C_VIEW	NUMBER	NULL,
	C_STARTD	DATE	NULL,
	C_ENDD	DATE	NULL,
	C_MEET	VARCHAR2(2000)	NULL,
	C_ADDRESS	VARCHAR2(4000)	NULL
);



CREATE TABLE CTag (
	C_ID	NUMBER	NOT NULL,
	C_LID	NUMBER	NOT NULL,
	C_SID	NUMBER	NOT NULL
);



CREATE TABLE CompanionInfo (
	C_ID	NUMBER	NOT NULL,
    M_ID2 VARCHAR2(500) NOT NULL,
	M_ID	VARCHAR2(500)	NOT NULL,
    C_NAME VARCHAR2(4000),
	C_YN	CHAR(1)	NULL
);



CREATE TABLE CompanionMap (
	CM_ID	NUMBER	NOT NULL,
	C_ID	NUMBER	NOT NULL,
	C_XY	VARCHAR(4000)	NULL
);



CREATE TABLE Map (
	MAP_X	varchar(200)	NULL,
	MAP_Y	varchar(200)	NULL,
	MAP_TEL	varchar(200)	NULL,
	MAP_TITLE	varchar(200)	NULL,
	MAP_ADDRESS	varchar(200)	NULL
);

CREATE TABLE Gallery (
    G_ID NUMBER NOT NULL,
    M_ID VARCHAR2(500) NOT NULL,
    G_LIKE NUMBER DEFAULT 0 NOT NULL,
    G_CONTENT VARCHAR2(500) NULL,
    G_VIEW NUMBER DEFAULT 0 NOT NULL
);

CREATE TABLE GAdd(
    G_ID NUMBER NOT NULL,
    G_IMG1 VARCHAR2(4000) NULL,
    G_IMG2 VARCHAR2(4000) NULL,
    G_IMG3 VARCHAR2(4000) NULL
);

CREATE TABLE GLike(
    G_ID NUMBER NOT NULL,
    M_ID VARCHAR2(500) NOT NULL
);

CREATE TABLE ChatMessage (
	CH_ID	NUMBER	NOT NULL,
	C_ID	NUMBER	NOT NULL,
	M_SENDER	VARCHAR2(500)	NOT NULL,
	M_RECEIVER	VARCHAR2(500)	NOT NULL,
	CH_CONTENT	VARCHAR2(4000)	NULL,
	CH_TIME	TIMESTAMP	NULL,
	CH_READ	NUMBER	NULL
);

CREATE TABLE ChatJoin (
	C_ID	NUMBER	NOT NULL,
	M_ID	VARCHAR2(500)	NOT NULL,
	CH_INOUT	CHAR(1)	NULL,
	CH_INTIME	TIMESTAMP	NULL,
	CH_OUTTIME	TIMESTAMP	NULL
);



ALTER TABLE Member ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	M_ID
);

ALTER TABLE Category ADD CONSTRAINT PK_CATEGORY PRIMARY KEY (
	C_LID,
	C_SID
);

ALTER TABLE Out ADD CONSTRAINT PK_OUT PRIMARY KEY (
	M_ID
);

ALTER TABLE Report ADD CONSTRAINT PK_REPORT PRIMARY KEY (
	R_ID
);

ALTER TABLE Board ADD CONSTRAINT PK_BOARD PRIMARY KEY (
	B_ID
);

ALTER TABLE CAdd ADD CONSTRAINT PK_CADD PRIMARY KEY (
	C_ID
);


ALTER TABLE BLike ADD CONSTRAINT PK_BLIKE PRIMARY KEY (
	B_ID,
	M_ID
);

ALTER TABLE CLike ADD CONSTRAINT PK_CLIKE PRIMARY KEY (
	C_ID,
	M_ID
);

ALTER TABLE Companion ADD CONSTRAINT PK_COMPANION PRIMARY KEY (
	C_ID
);



ALTER TABLE CompanionMap ADD CONSTRAINT PK_COMPANIONMAP PRIMARY KEY (
	CM_ID,
	C_ID
);
ALTER TABLE Gallery ADD CONSTRAINT PK_GALLERY PRIMARY KEY (
	G_ID
);
ALTER TABLE GAdd ADD CONSTRAINT PK_GADD PRIMARY KEY (
	G_ID
);
ALTER TABLE GLike ADD CONSTRAINT PK_GLIKE PRIMARY KEY (
	G_ID,
    M_ID
);
ALTER TABLE Out ADD CONSTRAINT FK_Member_TO_Out_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);

ALTER TABLE CAdd ADD CONSTRAINT FK_Companion_TO_CAdd_1 FOREIGN KEY (
	C_ID
)
REFERENCES Companion (
	C_ID
);

ALTER TABLE BLike ADD CONSTRAINT FK_Board_TO_BLike_1 FOREIGN KEY (
	B_ID
)
REFERENCES Board (
	B_ID
);

ALTER TABLE BLike ADD CONSTRAINT FK_Member_TO_BLike_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);

ALTER TABLE CLike ADD CONSTRAINT FK_Companion_TO_CLike_1 FOREIGN KEY (
	C_ID
)
REFERENCES Companion (
	C_ID
);

ALTER TABLE CLike ADD CONSTRAINT FK_Member_TO_CLike_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);

ALTER TABLE CompanionMap ADD CONSTRAINT FK_Companion_TO_CompanionMap_1 FOREIGN KEY (
	C_ID
)
REFERENCES Companion (
	C_ID
);

ALTER TABLE Report ADD CONSTRAINT FK_Member_TO_Report_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);

ALTER TABLE Report ADD CONSTRAINT FK_Member_TO_Report_2 FOREIGN KEY (
	M_ID2
)
REFERENCES Member (
	M_ID
);

ALTER TABLE Companion ADD CONSTRAINT FK_Member_TO_Companion_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);

ALTER TABLE Favor ADD CONSTRAINT FK_Member_TO_Favor_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);

ALTER TABLE Favor ADD CONSTRAINT FK_Category_TO_Favor_1 FOREIGN KEY (
	C_LID, C_SID
)
REFERENCES Category (
	C_LID, C_SID
);

ALTER TABLE CTag ADD CONSTRAINT FK_Companion_TO_CTag_1 FOREIGN KEY (
	C_ID
)
REFERENCES  Companion(
	C_ID
);

ALTER TABLE CTag ADD CONSTRAINT FK_Category_TO_CTag_1 FOREIGN KEY (
	C_LID, C_SID
)
REFERENCES Category (
	C_LID, C_SID
);

ALTER TABLE Board ADD CONSTRAINT FK_Member_TO_Board_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);

ALTER TABLE MLike ADD CONSTRAINT FK_Member_TO_MLike_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);

ALTER TABLE MLike ADD CONSTRAINT FK_Member_TO_MLike_2 FOREIGN KEY (
	M_ID2
)
REFERENCES Member (
	M_ID
);

ALTER TABLE CompanionInfo ADD CONSTRAINT FK_Member_TO_CompanionInfo_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);

ALTER TABLE CompanionInfo ADD CONSTRAINT FK_Member_TO_CompanionInfo_2 FOREIGN KEY (
	M_ID2
)
REFERENCES Member (
	M_ID
);

ALTER TABLE CompanionInfo ADD CONSTRAINT FKCompanionTOCompanionInfo1 FOREIGN KEY (
	C_ID
)
REFERENCES Companion (
	C_ID 
);

ALTER TABLE Gallery ADD CONSTRAINT FK_Member_TO_Gallery FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID 
);

ALTER TABLE GAdd ADD CONSTRAINT FK_Gallery_TO_GAdd FOREIGN KEY(
    G_ID
)
REFERENCES Gallery(
    G_ID
);

ALTER TABLE GLike ADD CONSTRAINT FK_Gallery_TO_GLike FOREIGN KEY(
    G_ID
)
REFERENCES Gallery(
    G_ID
);

ALTER TABLE GLike ADD CONSTRAINT FK_Member_TO_GLike FOREIGN KEY(
    M_ID
)
REFERENCES Member(
    M_ID
);
ALTER TABLE ChatMessage ADD CONSTRAINT PK_CHATMESSAGE PRIMARY KEY (
	CH_ID
);

ALTER TABLE ChatMessage ADD CONSTRAINT FK_Companion_TO_ChatMessage_1 FOREIGN KEY (
	C_ID
)
REFERENCES Companion (
	C_ID
);

ALTER TABLE ChatMessage ADD CONSTRAINT FK_Member_TO_ChatMessage_1 FOREIGN KEY (
	M_SENDER
)
REFERENCES Member (
	M_ID
);

ALTER TABLE ChatMessage ADD CONSTRAINT FK_Member_TO_ChatMessage_2 FOREIGN KEY (
	M_RECEIVER
)
REFERENCES Member (
	M_ID
);

ALTER TABLE ChatJoin ADD CONSTRAINT FK_Companion_TO_ChatJoin_1 FOREIGN KEY (
	C_ID
)
REFERENCES Companion (
	C_ID
);

ALTER TABLE ChatJoin ADD CONSTRAINT FK_Member_TO_ChatJoin_1 FOREIGN KEY (
	M_ID
)
REFERENCES Member (
	M_ID
);




DROP SEQUENCE COMPANION_SEQ;
CREATE SEQUENCE COMPANION_SEQ START WITH 1 INCREMENT BY 1
MAXVALUE 9999 NOCACHE CYCLE NOORDER;

DROP SEQUENCE BOARD_SEQ;
CREATE SEQUENCE BOARD_SEQ START WITH 1 INCREMENT BY 1
NOCACHE;

insert into Member values('potatotravel', 'potatotravel', 'potatotravel', 'potatotravel', current_date, 'M', 'potatotravel_address', 'potatotravel_address_detail', 0, current_date, 'potatotravel', 0, 'potatotravel', 'O', current_date, 0, '010-0000-0000', 'nothing1360@gmail.com', 'potatotravel', 'M', 'MY', 99999999);
insert into Out values('potatotravel', 'N', null, null);

insert into Category values(1,1,'강원도');
insert into Category values(1,2,'경기도');
insert into Category values(1,3,'경상남도');
insert into Category values(1,4,'경상북도');
insert into Category values(1,5,'전라남도');
insert into Category values(1,6,'전라북도');
insert into Category values(1,7,'충청남도');
insert into Category values(1,8,'충청북도');
insert into Category values(2,1,'4명 이내');
insert into Category values(2,2,'5~8명');
insert into Category values(2,3,'9명 이상');
insert into Category values(3,1,'호캉스');
insert into Category values(3,2,'청춘');
insert into Category values(3,3,'자연');
insert into Category values(3,4,'유적지');
insert into Category values(3,5,'액티비티');



CREATE TABLE CORONAMAP(
    C_ID NUMBER NOT NULL PRIMARY KEY,
    C_NAME VARCHAR2(500) NOT NULL,
    C_LA NUMBER DEFAULT 0 NOT NULL,
    C_MA NUMBER DEFAULT 0 NOT NULL,
    
    C_defCnt NUMBER DEFAULT 0 NOT NULL,
    C_isolIngCnt NUMBER DEFAULT 0 NOT NULL,
    C_isolClearCnt NUMBER DEFAULT 0 NOT NULL,
    C_incDec NUMBER DEFAULT 0 NOT NULL,
    C_deathCnt NUMBER DEFAULT 0 NOT NULL,
    C_qurRate NUMBER DEFAULT 0 NOT NULL,
    C_createDt timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);

insert into coronamap(c_id, c_name, c_la, c_ma) values(1, '제주', 33.381220474822456, 126.55209923841961 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(2, '경남', 35.45493767072407 ,128.24133120399318 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(3, '경북', 36.487386382117776 ,128.7032451831453 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(4, '전남', 34.953678680349284 ,126.99495290018044 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(5, '전북', 35.71966893333553 ,127.13071146767636 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(6, '충남', 36.55478111945538 ,126.82328431906157 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(7, '충북', 36.884643908179356 ,127.76443655955607 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(8, '강원', 37.75201410093334 ,128.28451077361314 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(9, '경기', 37.39360405432566 ,127.48048000689587 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(10, '세종', 36.471504482025736 ,127.28791947106744 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(11, '울산',35.54434648591786  ,129.36048074067796 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(12, '대전', 36.33742437414337 ,127.38836806147543 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(13, '광주', 35.165883075310454 ,126.85444042235414 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(14, '인천', 37.3894254296891 ,126.64211275332286 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(15, '대구', 35.87974934781362 ,128.6050987538175 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(16, '부산',35.189534061992774  ,129.08601979430216 );
insert into coronamap(c_id, c_name, c_la, c_ma) values(17, '서울',37.56526399403646  ,126.97160107885908 );

commit;
