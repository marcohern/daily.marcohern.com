UPDATE trans SET processed = 'false';

DELETE FROM daily;

CALL ImportDaily;