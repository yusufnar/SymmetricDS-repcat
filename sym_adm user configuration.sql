/*
sym-node1
http://sym-node1:31415/app 

sym-node2
http://sym-node2:31415/app 
*/

CREATE USER SYM_ADM
IDENTIFIED BY SYM_ADM
DEFAULT TABLESPACE SYMMETRIC_TS
TEMPORARY TABLESPACE TEMP
PROFILE DEFAULT
ACCOUNT UNLOCK;

GRANT CONNECT TO SYM_ADM;
GRANT RESOURCE TO SYM_ADM;
ALTER USER SYM_ADM DEFAULT ROLE ALL;

GRANT UNLIMITED TABLESPACE TO SYM_ADM;

ALTER USER SYM_ADM QUOTA UNLIMITED ON SYMMETRIC_TS;
ALTER USER SYM_ADM QUOTA UNLIMITED ON USERS;

GRANT SELECT ON SYS.V_$INSTANCE TO SYM_ADM;
GRANT SELECT ON SYS.V_$MYSTAT TO SYM_ADM;
GRANT SELECT ON SYS.V_$SESSION TO SYM_ADM;


--just on node1
CREATE OR REPLACE FUNCTION SYM_ADM.get_node_name RETURN varchar2 IS
BEGIN
   RETURN 'NODE1';
END get_node_name;
/
 
--just on nodes inside group 1
CREATE OR REPLACE FUNCTION SYM_ADM.get_node_group RETURN varchar2 IS
BEGIN
   RETURN 'GROUP1';
END get_node_group;
/

GRANT EXECUTE ON SYM_ADM.GET_NODE_GROUP TO SYMMETRIC;
GRANT EXECUTE ON SYM_ADM.GET_NODE_NAME TO SYMMETRIC;


 