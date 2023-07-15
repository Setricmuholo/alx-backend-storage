-- Script that creates a trigger that decreases the

CREATE TRIGGER decrease_q AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name=NEW.item_name;
