-- SELECT ?
-- FROM ?
--    INNER JOIN ?
--    ON condition ;


-- AS 사용해야하는 이유? mebers와 members를 join 해야하는 경우가 있어서 AS 사용하는게 좋음

SELECT T_MEMS.*, T_MEMS_LOGIN.MEMBERS_LOGIN_ID
FROM members AS T_MEMS
     INNER JOIN members_login AS T_MEMS_LOGIN
     ON T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID 
GROUP BY T_MEMS.AGE    
; 
     