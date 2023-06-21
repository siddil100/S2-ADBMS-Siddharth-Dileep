
create table account (accountno int primary key,amount decimal(10,2));
delimiter //
CREATE TRIGGER updtrig BEFORE UPDATE ON ACCOUNT 
FOR EACH ROW
BEGIN
    IF NEW.amount < 0 THEN
        SET NEW.amount = 0;
    ELSEIF NEW.amount > 100 then
        SET NEW.amount = 100;
    END IF;
END;//
delimiter ;


insert into account values(2,10);
update  account set amount=-30 where accountno=1;


SET @SUM=0;
CREATE TRIGGER ins_sum BEFORE INSERT ON account
FOR EACH ROW SET @sum = @sum + NEW.amount;
 
 
 select @sum as 'total';      

drop trigger ins_sum;

