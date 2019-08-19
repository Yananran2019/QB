SET NAMES UTF8;
DROP DATABASE IF EXISTS QBXS;
#情报线索数据库
CREATE DATABASE QBXS CHARSET=UTF8;
USE QBXS;
/**QB_HOME_SJYD(情报首页收集要点表)**/
CREATE TABLE QB_HOME_SJYD(
   ID VARCHAR(32) PRIMARY KEY NOT NULL,#主键
   XXZW VARCHAR(4000), #要点正文
   CREATE_USER VARCHAR(32),#创建人
   CREATE_TIME DATETIME,  #创建时间
   ATTACH_NAME VARCHAR(256),#附件名称
   ATTACH_PATH VARCHAR(32),#附件路径
   ATTACH_IDS VARCHAR(256) #附件ID
);
/**插入QB_HOME_SJYD表数据**/
INSERT INTO QB_HOME_SJYD VALUES(1,"2月份以来影响国家政治安全,政权安全,制度安全和社会稳定的突出动向,特别是针对全国'两会'的突出情况","王鹏","2019-03-16",NULL,NULL,NULL);
INSERT INTO QB_HOME_SJYD VALUES(2,"当前境内外暴恐形式暴恐极端势力策划实施滋扰破坏活动的突出动向","王鹏","2019-04-20",NULL,NULL,NULL);

/**QB_HOME_YJXX(首页突出预警信息)**/
CREATE TABLE QB_HOME_YJXX(
   ID VARCHAR(32) PRIMARY KEY NOT NULL,#主键
   BT VARCHAR(256),#标题
   XSID VARCHAR(32),#关联线索ID
   CREATE_USER VARCHAR(32),#创建人
   CREATE_TIME DATETIME,#创建时间
   SNSW VARCHAR(2),#省内0省外1
   ORDERNUM VARCHAR(6) #排序默认0
);
/**插入QB_HOME_YJXX表数据**/
INSERT INTO QB_HOME_YJXX VALUES(1,"济南槐荫区重点人拟于1月23日进京维权",0101,"孙汉江","2019-01-25",0,0);
INSERT INTO QB_HOME_YJXX VALUES(2,"济南伤残军人鼓动拟于2月20日进京维权",0102,"孙汉江","2019-02-21",0,0);
/**QB_HOME_XSTJPM(首页线索统计排名)**/
CREATE TABLE QB_HOME_XSTJPM(
   ID VARCHAR(32) PRIMARY KEY NOT NULL,#排名
   DSCODE VARCHAR(32),#地市编码
   DSNAME VARCHAR(64),#地市名称
   CYS VARCHAR(4),#采用数
   BSS VARCHAR(4),#报送数
   CYL DECIMAL(6,2) #采用率
);
/**插入QB_HOME_XSTJPM首页线索统计排名表数据**/
INSERT INTO QB_HOME_XSTJPM VALUES(1,3701,"济南",25,112,22.0);
INSERT INTO QB_HOME_XSTJPM VALUES(2,3702,"青岛",56,95,58.0);
INSERT INTO QB_HOME_XSTJPM VALUES(3,3703,"淄博",65,73,22.0);
INSERT INTO QB_HOME_XSTJPM VALUES(4,3704,"枣庄",36,110,45.0);
INSERT INTO QB_HOME_XSTJPM VALUES(5,3705,"东营",45,99,45.0);
INSERT INTO QB_HOME_XSTJPM VALUES(6,3706,"烟台",12,80,15.0);
INSERT INTO QB_HOME_XSTJPM VALUES(7,3707,"潍坊",55,130,42.0);
INSERT INTO QB_HOME_XSTJPM VALUES(8,3708,"济宁",33,100,33.0);
INSERT INTO QB_HOME_XSTJPM VALUES(9,3709,"泰安",11,78,14.0);
INSERT INTO QB_HOME_XSTJPM VALUES(10,3710,"威海",32,111,28.0);
INSERT INTO QB_HOME_XSTJPM VALUES(11,3711,"日照",15,54,28.0);
INSERT INTO QB_HOME_XSTJPM VALUES(12,3712,"莱芜",27,60,45.0);
INSERT INTO QB_HOME_XSTJPM VALUES(13,3713,"临沂",77,115,68.0);
INSERT INTO QB_HOME_XSTJPM VALUES(14,3714,"德州",40,130,31.0);
INSERT INTO QB_HOME_XSTJPM VALUES(15,3715,"聊城",33,82,40.0);
INSERT INTO QB_HOME_XSTJPM VALUES(16,3716,"滨州",21,90,23.0);
INSERT INTO QB_HOME_XSTJPM VALUES(17,3717,"菏泽",28,95,29.0);
/***QB_LZXX (公安部下达的指令流转信息)***/
CREATE TABLE QB_LZXX(
   ID VARCHAR(32) PRIMARY KEY NOT NULL,#主键
   BT VARCHAR(500),#标题
   GJC VARCHAR(500),#关键词
   XXWH VARCHAR(40),#信息文号
   XXLX VARCHAR(1),#信息类型
   XXZW TEXT,#信息正文
   GZYQJB VARCHAR(2),#工作要求级别
   SSLB VARCHAR(3),#涉事类别
   XXFBDW VARCHAR(70),#信息发布单位
   XXFBR VARCHAR(30),#信息发布人
   XXSHR VARCHAR(30),#信息审核人
   QSSX DATE,#签收时限yyyymmddhhmmss,24小时格式
   SCFKSX DATE,#首次反馈时限yyyymmddhhmmss,24小时格式
   LDXXBH VARCHAR(27),#联动信息编号
   XXJSDW VARCHAR(70),#信息接收单位
   XXFBDWJGDM VARCHAR(12),#信息发布单位机构代码
   SHFBSJ DATE,#审核发布时间yyyymmddhhmmss,24小时格式
   FKZT VARCHAR(2),#省厅反馈状态0未反馈，1已反馈
   ZFDS VARCHAR(1000),#省厅转发到地市单位，逗号分隔
   ZFZT VARCHAR(2),#转发状态0未转发，1已转发
   BZ VARCHAR(4000) #备注
);
/**插入QB_LZXX 公安部下达的指令流转信息表数据**/
INSERT INTO QB_LZXX VALUES(1,"网民煽动志愿兵士官两会前赴各自省会维权","维权","公情报预警[2019]248号","预警发布","网民煽动志愿兵士官两会前赴各自省会维权","橙色预警","群体性事件","公安部","陈阳","张大伟","2019-02-23","2019-02-28","248","山东省公安厅情报处",3710,"2019-03-02",0,"青岛、烟台、枣庄",1,null);
INSERT INTO QB_LZXX VALUES(2,"越战退役军人串联策划2月17日湖南、湖北、山东、四川、云南、广西等地纪念维权活动","维权","公情报预警[2019]245号","预警发布","网民煽动志愿兵士官'两会'前赴各自省会维权","蓝色预警","群体性事件","公安部","陈阳","张大伟","2019-02-24","2019-03-01","245","山东省公安厅情报处",3705,"2019-03-02",1,"潍坊、德州",1,null);

/**QB_LZXX_QS (流转信息签收反馈信息表)**/
CREATE TABLE QB_LZXX_QS(
    ID VARCHAR(32) PRIMARY KEY NOT NULL,#主键
    LDXXBH VARCHAR(27),#联动信息编号
    YLDXXBH VARCHAR(27), #源联动信息编号
    FKDWJGDM VARCHAR(12), #反馈单位机构代码
    FKDW VARCHAR(50),#反馈单位
    FKR VARCHAR(30),#反馈人
    FKSJ DATE,#反馈时间
    FKNR VARCHAR(2000),#反馈内容
    FKZT VARCHAR(2),#反馈状态1正在反馈中，2已核查
    SHZT VARCHAR(2),#审核状态0未审核,1已审核
    SSRYID VARCHAR(128),#涉事人员id
    QSID VARCHAR(32),#签收id 0未签收,1已签收
    SHRQSSJ DATE #审核人签收时间
);

/**插入QB_LZXX_QS流转信息签收反馈信息表数据**/
INSERT INTO QB_LZXX_QS VALUES(1,248,248,3702,"青岛市公安局指挥中心","张伟","2019-03-03","已接收该预警,已将该预警通知辖区教育部门,并密切关注此事。如有情况,另行上报。",2,0,"040728,042539",1,"2019-03-05");
INSERT INTO QB_LZXX_QS VALUES(2,245,245,3707,"潍坊市公安局指挥中心","沈璐","2019-03-03","已接收该预警,已将该预警通知向本地教育部门通报,对类似情况进行实时监控。",2,1,"062310,011352",1,"2019-03-04");

/**QB_XS(线索上报表)**/
CREATE TABLE QB_XS(
  ID VARCHAR(32) PRIMARY KEY NOT NULL,#主键
  LDXXBH VARCHAR(27),#联动信息编号
  BSSJ DATE,#报送时间yyyymmddhhmmss，24小时制格式
  JJCD VARCHAR(1),#紧急程度
  FSZT VARCHAR(1),#发生状态
  BGCX VARCHAR(1),#报告次序
  XSXXLY VARCHAR(2),#线索信息来源
  BT VARCHAR(200),#标题
  GJC VARCHAR(500),#关键词,多个关键词以空格间隔
  XXZW VARCHAR(2000),#信息正文
  CJDWJGDM VARCHAR(12),#采集单位机构代码
  CJDW VARCHAR(70),#采集单位
  CJR VARCHAR(30),#采集人
  TBDWJGDM VARCHAR(12),#填报单位机构代码
  TBDW VARCHAR(70),#填报单位
  TBR VARCHAR(30),#填报人
  SHR VARCHAR(30),#审核人
  SSZT VARCHAR(2),#涉事主体
  SSLB VARCHAR(3),#涉事类别
  SJMGSD VARCHAR(3),#涉及敏感时点
  SJZDHD VARCHAR(3),#涉及重大活动
  SJRSGM VARCHAR(1),#涉及人数规模
  SJCCSSGM VARCHAR(1),#涉及财产损失规模
  SSYY VARCHAR(2),#涉事诱因
  BXXS VARCHAR(2),#表现形式
  ASJFSSJ DATE,#案(事)件发生时间,采用格式yyyymmddhhmmss，24小时制格式
  ASJDLB VARCHAR(2),#案(事)件发生地类别
  ASJFSDXQ VARCHAR(70),#案(事)件发生地所属省市,可多值，最多10个，以半角逗号间隔
  ASJFSDXZ VARCHAR(100),#案(事)件发生地详址
  YLDXXBH VARCHAR(32),#源联动信息编号
  SHZT VARCHAR(2),#审核状态
  DSSBZT VARCHAR(2),#地市上报状态0未上报，1已上报
  STSBZT VARCHAR(2),#省厅上报状态0未上报，1已上报
  XSLX VARCHAR(2),#线索类型
  SNSW VARCHAR(2),#省内省外
  CYLX VARCHAR(2),#采用类型，1采用，0未采用
  XSDLB VARCHAR(12),#线索群体大类别
  XSXLB VARCHAR(12),#线索群体细类别
  CJSJ DATE,#创建时间
  SBSJ DATE,#报送时间
  ZFZT VARCHAR(2) #转发状态0未转发1已转发
);
/**QB_XS_QS(线索转发签收表)**/
CREATE TABLE QB_XS_QS(
   ID VARCHAR(32) PRIMARY KEY NOT NULL,#主键
   LDXXBH VARCHAR(32),#联动信息编号
   YLDXXBH VARCHAR(32),#源联动信息编号
   QSDWJGDM VARCHAR(12),#签收单位机构代码
   QSDW VARCHAR(70),#签收单位
   QSR VARCHAR(30),#签收人
   QSSJ VARCHAR(14),#签收时间
   QSZT VARCHAR(2),#签收状态0:未签收，1:已签收
   QSSX DATE,#签收时限
   FKZT VARCHAR(2),#反馈状态0:未反馈，1:已反馈
   FKSX DATE,#反馈时限
   ZFRDW VARCHAR(70),#转发人单位
   ZFYQ VARCHAR(2000),#转发要求
   ZFSJ DATE,#转发时间
   ZFR VARCHAR(30),#转发人
   ZFRDWJGDM VARCHAR(12),#转发人机构代码
   XSID VARCHAR(32),#线索id
   QSRQ DATE #签收日期
);
/**QB_XS_FK(线索反馈表)**/
CREATE TABLE QB_XS_FK(
   ID VARCHAR(32) PRIMARY KEY NOT NULL,#主键
   LDXXBH VARCHAR(32),#联动信息编号
   YLDXXBH VARCHAR(32),#源联动信息编号
   FKDWJGDM VARCHAR(12),#反馈单位机构代码
   FKDW VARCHAR(70),#反馈单位
   FKR VARCHAR(30),#反馈人
   FKSJ DATE,#反馈时间
   FKNR VARCHAR(4000),#反馈时内容
   FKZT VARCHAR(2),#反馈状态
   SHZT VARCHAR(2),#审核状态
   SSRYID VARCHAR(32),#涉事人员id
   QSID VARCHAR(32),#签收id
   FKRQ DATE #反馈日期
);
/**QB_XS_SCJ (线索收藏夹)**/
CREATE TABLE QB_XS_SCJ(
   ID VARCHAR(32) PRIMARY KEY NOT NULL,#主键
   XSID VARCHAR(32),#线索id
   SCSJ DATE,#收藏时间
   SCR VARCHAR(32),#收藏人
   SCRBM VARCHAR(64) #收藏人部门
);

