/* 1517. Find Users With Valid E-Mails */

select * from Users 
where mail regexp "^[a-zA-Z][a-zA-Z0-9._-]*(@leetcode[.]com)$";