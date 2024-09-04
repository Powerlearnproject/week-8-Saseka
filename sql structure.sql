DELIMITER //

CREATE TRIGGER UpdateComplications
AFTER INSERT ON Diabetes_Records
FOR EACH ROW
BEGIN
    IF NEW.blood_sugar_level > 180 THEN
        UPDATE Diabetes_Records
        SET complications = 'High risk of complications'
        WHERE record_id = NEW.record_id;
    END IF;
END; //

DELIMITER ;
