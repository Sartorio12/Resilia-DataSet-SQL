CREATE OR REPLACE FUNCTION aluno_delete_log_func()
RETURNS trigger
LANGUAGE PLPGSQL
AS $$

BEGIN
	INSERT INTO aluno_delete_audit (id_aluno, valor_antigo, email, DATA_INSERT)
	VALUES(OLD.id_aluno, OLD.NOME , OLD.email, current_timestamp);
RETURN NEW;
END;
$$;

CREATE TRIGGER aluno_delete_trigger
AFTER DELETE ON tb_aluno
FOR EACH ROW
EXECUTE PROCEDURE aluno_delete_log_func();