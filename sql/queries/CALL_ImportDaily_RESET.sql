UPDATE trans SET pdaily = 'false';

DELETE FROM daily;

CALL ImportDaily;