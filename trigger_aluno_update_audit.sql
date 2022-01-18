CREATE OR REPLACE FUNCTION aluno_update_log_func()
RETURNS trigger
LANGUAGE PLPGSQL
AS $$

BEGIN
	INSERT INTO aluno_update_audit (id_aluno, valor_antigo, valor_novo, DATA_INSERT)
	VALUES(OLD.id_aluno, OLD.ativo, NEW.ativo, current_timestamp);
RETURN NEW;
END;
$$;

CREATE TRIGGER aluno_update_trigger
AFTER UPDATE ON tb_aluno
FOR EACH ROW
EXECUTE PROCEDURE aluno_update_log_func();
