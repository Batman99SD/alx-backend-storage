-- Create a trigger that decreases stock of an item after an order is sent

CREATE TRIGGER decrease_items_quantity AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE name=NEW.item_name;
