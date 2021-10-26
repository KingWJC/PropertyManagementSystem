CREATE TABLE tbl_user_record  (
  id NUMBER(8,0) PRIMARY KEY,
  user_name VARCHAR2(20)  NULL ,
  user_password VARCHAR2(100)  NULL ,
  user_type VARCHAR2(8)  NULL  ,
  user_role NUMBER(8,0) NULL ,
  user_gender VARCHAR2(2)  NULL  ,
  user_dept NUMBER(8,0) NULL ,
  user_job NUMBER(8,0) NULL  ,
  user_status VARCHAR2(8)  NULL  ,
  office_phone VARCHAR2(20)  NULL  ,
  inner_phone VARCHAR2(20)  NULL  ,
  move_phone VARCHAR2(20)  NULL  ,
  email VARCHAR2(30)  NULL  ,
  is_send_msg VARCHAR2(2)  NULL  ,
  start_date DATE NULL  ,
  stop_date DATE NULL  ,
  birthday DATE NULL  ,
  ip_rule VARCHAR2(50)  NULL  ,
  user_hiredate DATE NULL  ,
  is_send_wchat char(1)  NULL  ,
  remark VARCHAR2(100)  NULL  ,
  company VARCHAR2(10)  NULL  ,
  is_dept_admin VARCHAR2(1)  NULL  ,
  last_login_date DATE NULL  ,
  create_person VARCHAR2(50)  NULL  ,
  create_date DATE NULL 
);

INSERT INTO tbl_user_record VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', '企业', 1, '', 1, 1, '正常', '', '', '13888888888', 'ceshi@126.com', 'Y', to_date('2020-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'), to_date('2022-12-31 00:00:00','yyyy-mm-dd hh24:mi:ss'), to_date('2020-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'), 'N', to_date('2020-01-01 00:00:00','yyyy-mm-dd hh24:mi:ss'), 'N', '', '001', 'Y', to_date('2020-02-03 09:40:33','yyyy-mm-dd hh24:mi:ss'), 'admin', to_date('2020-01-08 12:08:20','yyyy-mm-dd hh24:mi:ss'));


CREATE TABLE tbl_dept  (
  id NUMBER(8,0) primary key ,
  dept_code VARCHAR2(50)  NULL  ,
  dept_name VARCHAR2(50)  NULL  ,
  dept_leader VARCHAR2(50)  NULL  ,
  dept_phone VARCHAR2(50)  NULL  ,
  dept_type number(8,0) NULL  ,
  dept_fax VARCHAR2(50)  NULL  ,
  dept_parent NUMBER(8,0) NULL  ,
  dept_line VARCHAR2(50)  NULL  ,
  dept_privileges VARCHAR2(50)  NULL  ,
  dept_manage_privileges char(1)  NULL  ,
  organ_category char(1)  NULL  ,
  dept_person_number NUMBER(8,0) NULL  ,
  input_person VARCHAR2(50)  NULL  ,
  input_time DATE NULL  ,
  dept_remark long  NULL 
);

INSERT INTO tbl_dept VALUES (1, '01', '公司本部', '', '', NULL, '', 0, '|-', 'aaaaaa', '', '0', NULL, 'admin',to_date( '2020-04-10 22:57:13','yyyy-mm-dd hh24:mi:ss'), NULL);

CREATE TABLE tbl_role  (
  id NUMBER(8,0) primary key ,
  role_name VARCHAR2(30)  NULL  ,
  role_type VARCHAR2(6)  NULL  ,
  role_privileges long  NULL ,
  role_remark VARCHAR2(100)  NULL  ,
  create_person VARCHAR2(50)  NULL  ,
  create_date DATE NULL 
);

INSERT INTO tbl_role VALUES (1, '超级管理员', '企业', '221-223-226-901', '', 'admin', to_date('2020-01-08 12:08:19','yyyy-mm-dd hh24:mi:ss'));

CREATE TABLE tbl_company  (
  id NUMBER(8,0) primary key ,
  company_full_name VARCHAR2(50)  NULL  ,
  company_simple_name VARCHAR2(50)  NULL  ,
  company_english_name VARCHAR2(100)  NULL  ,
  company_brand VARCHAR2(20)  NULL  ,
  company_type VARCHAR2(20)  NULL  ,
  company_trade VARCHAR2(50)  NULL  ,
  company_addr VARCHAR2(100)  NULL  ,
  post_code VARCHAR2(6)  NULL  ,
  company_phone VARCHAR2(20)  NULL  ,
  company_fax VARCHAR2(20)  NULL  ,
  company_website VARCHAR2(50)  NULL  ,
  company_email VARCHAR2(30)  NULL  ,
  company_national VARCHAR2(40)  NULL  ,
  company_land VARCHAR2(40)  NULL  ,
  open_bank VARCHAR2(100)  NULL  ,
  bank_account VARCHAR2(40)  NULL  ,
  company_leader VARCHAR2(50)  NULL  ,
  register_date DATE NULL  ,
  register_money NUMBER(8,2) NULL  ,
  employee_number VARCHAR2(50)  NULL  ,
  company_intro VARCHAR2(255)  NULL  ,
  remark VARCHAR2(200)  NULL 
);

INSERT INTO tbl_company VALUES (1, '马士兵教育科技有限公司', '马士兵老师', 'mashibing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO tbl_company VALUES (2, '马士兵教育上海分公司', '马士兵_SH', 'mashibing_sh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO tbl_company VALUES (3, '马士兵教育深圳分公司', '马士兵_SZ', 'mashibing_sz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO tbl_company VALUES (4, '马士兵教育杭州分公司', '马士兵_HZ', 'mashibing_hz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


        select a.* from tbl_user_record a
        left join tbl_dept b on a.user_dept = b.id
        left join tbl_role c on a.user_role = c.id
        left join tbl_company d on a.company = d.id
        where user_password='21232f297a57a5a743894a0e4a801fc3'
