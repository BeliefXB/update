
-- ----------------------------
-- Table structure for hs_export_column
-- ----------------------------
DROP TABLE IF EXISTS "public"."hs_export_column";
CREATE TABLE "public"."hs_export_column" (
  "pk" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "column_name" varchar(50) COLLATE "pg_catalog"."default",
  "name" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."hs_export_column"."pk" IS '主键pk';
COMMENT ON COLUMN "public"."hs_export_column"."column_name" IS '导出字段列名';
COMMENT ON COLUMN "public"."hs_export_column"."name" IS '导出字段名称';

-- ----------------------------
-- Records of hs_export_column
-- ----------------------------
INSERT INTO "public"."hs_export_column" VALUES ('1', 'callTime', 'Call Time');
INSERT INTO "public"."hs_export_column" VALUES ('2', 'callType', '呼入方向');
INSERT INTO "public"."hs_export_column" VALUES ('3', 'customerName', '客户姓名');
INSERT INTO "public"."hs_export_column" VALUES ('4', 'customerNo', '客户号');
INSERT INTO "public"."hs_export_column" VALUES ('5', 'customerLevel', '客户级别');
INSERT INTO "public"."hs_export_column" VALUES ('6', 'city', '所在城市');
INSERT INTO "public"."hs_export_column" VALUES ('7', 'businessType', '业务类型');
INSERT INTO "public"."hs_export_column" VALUES ('8', 'myBankCustomer', '是否是我行客户');
INSERT INTO "public"."hs_export_column" VALUES ('9', 'companyName', '公司名');
INSERT INTO "public"."hs_export_column" VALUES ('10', 'bankLocation', '行所');
INSERT INTO "public"."hs_export_column" VALUES ('11', 'phone', '电话');
INSERT INTO "public"."hs_export_column" VALUES ('12', 'referral', '是否转介');
INSERT INTO "public"."hs_export_column" VALUES ('13', 'referralTeam', '转介接收团队');
INSERT INTO "public"."hs_export_column" VALUES ('14', 'referralUser', '转介接收人');
INSERT INTO "public"."hs_export_column" VALUES ('15', 'planTime', '计划完成时间');
INSERT INTO "public"."hs_export_column" VALUES ('16', 'finishTime', '工单完成时间');
INSERT INTO "public"."hs_export_column" VALUES ('17', 'formNames', '工单模板');
INSERT INTO "public"."hs_export_column" VALUES ('18', 'procName', '工单流程');
INSERT INTO "public"."hs_export_column" VALUES ('19', 'identityVerifyType', '身份验证');
INSERT INTO "public"."hs_export_column" VALUES ('20', 'pass', '是否通过');
INSERT INTO "public"."hs_export_column" VALUES ('21', 'advisoryTypeTop', '咨询类型1');
INSERT INTO "public"."hs_export_column" VALUES ('22', 'advisoryTypeSecond', '咨询类型2');
INSERT INTO "public"."hs_export_column" VALUES ('23', 'advisoryTypeThird', '咨询类型3');
INSERT INTO "public"."hs_export_column" VALUES ('24', 'advisoryContent', '咨询内容');
INSERT INTO "public"."hs_export_column" VALUES ('25', 'followContent', '跟进内容');
INSERT INTO "public"."hs_export_column" VALUES ('26', 'referralResult', '转介结果');
INSERT INTO "public"."hs_export_column" VALUES ('27', 'referralFeedback', '转介反馈');
INSERT INTO "public"."hs_export_column" VALUES ('28', 'callBack', '是否需要回电');
INSERT INTO "public"."hs_export_column" VALUES ('29', 'transfer', '是否转交');
INSERT INTO "public"."hs_export_column" VALUES ('30', 'optVerify', 'OPT验证');
INSERT INTO "public"."hs_export_column" VALUES ('31', 'launchContentment', '是否发起满意度调研');
INSERT INTO "public"."hs_export_column" VALUES ('32', 'remark', '跟进备注');
INSERT INTO "public"."hs_export_column" VALUES ('33', 'creatorName', '创建人');
INSERT INTO "public"."hs_export_column" VALUES ('34', 'createTime', '创建时间');
INSERT INTO "public"."hs_export_column" VALUES ('35', 'editorName', '编辑人');
INSERT INTO "public"."hs_export_column" VALUES ('36', 'editeTime', '编辑时间');
INSERT INTO "public"."hs_export_column" VALUES ('37', 'status', '状态');
INSERT INTO "public"."hs_export_column" VALUES ('38', 'reject', '驳回标识');
INSERT INTO "public"."hs_export_column" VALUES ('39', 'priority', '优先级');
INSERT INTO "public"."hs_export_column" VALUES ('40', 'urge', '催单标识');

-- ----------------------------
-- Table structure for hs_export_column_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."hs_export_column_user";
CREATE TABLE "public"."hs_export_column_user" (
  "pk" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "user_pk" varchar(32) COLLATE "pg_catalog"."default",
  "column_pk" varchar(32) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."hs_export_column_user"."pk" IS '主键pk';
COMMENT ON COLUMN "public"."hs_export_column_user"."user_pk" IS '用户pk';
COMMENT ON COLUMN "public"."hs_export_column_user"."column_pk" IS '选择的字段pk';


-- ----------------------------
-- Primary Key structure for table hs_export_column
-- ----------------------------
ALTER TABLE "public"."hs_export_column" ADD CONSTRAINT "hs_export_column_pkey" PRIMARY KEY ("pk");

-- ----------------------------
-- Primary Key structure for table hs_export_column_user
-- ----------------------------
ALTER TABLE "public"."hs_export_column_user" ADD CONSTRAINT "hs_export_column_user_pkey" PRIMARY KEY ("pk");
