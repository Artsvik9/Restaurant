USE Restaurant;

INSERT INTO Menu (MenuID,MenuType)
VALUES (1, 'Breakfast'),
       (2, 'Cocktails'),
       (3, 'Desserts'),
       (4, 'Main Dishes');
       

INSERT INTO MenuItem
VALUES 
    (101, 1, 'Pancakes', 9.99, 'Fluffy pancakes served with syrup and butter', 10),
    (102, 1, 'Eggs Benedict', 12.50, 'Poached eggs on English muffins with hollandaise sauce', 15),
    (103, 1, 'Avocado Toast', 8.95, 'Sliced avocado on toasted bread with toppings', 12),
    (104, 1, 'French Toast', 10.99, 'Thick slices of bread dipped in egg mixture and fried', 8),
    (105, 1, 'Waffles', 11.75, 'Crispy waffles topped with fresh fruits and whipped cream', 10),
    (106, 1, 'Omelette', 9.50, 'Fluffy omelette with choice of fillings', 12),
    (107, 1, 'Breakfast Burrito', 8.99, 'Scrambled eggs, cheese, and bacon wrapped in a tortilla', 15),
    (108, 1, 'Bagel with Lox', 14.25, 'Toasted bagel with cream cheese, smoked salmon, and toppings', 10),
    (109, 1, 'Cinnamon Roll', 7.50, 'Warm and gooey cinnamon roll with icing', 8),
    (110, 1, 'Fruit Bowl', 6.99, 'Assorted fresh fruits served in a bowl', 20),
    
	(201, 2, 'Margarita', 7.50, 'Classic margarita with tequila, lime juice, and triple sec', 20),
    (202, 2, 'Cosmopolitan', 9.25, 'Vodka, cranberry juice, lime juice, and triple sec', 18),
    (203, 2, 'Martini', 8.75, 'Iconic cocktail with gin or vodka and vermouth', 15),
    (204, 2, 'Mojito', 10.50, 'Refreshing mix of rum, mint, lime, and sugar', 25),
    (205, 2, 'Bloody Mary', 9.99, 'Spicy tomato-based cocktail with vodka and various spices', 12),
    (206, 2, 'Mai Tai', 12.95, 'Tropical cocktail with rum, lime juice, and orgeat syrup', 18),
    (207, 2, 'Pina Colada', 11.50, 'Creamy blend of rum, coconut cream, and pineapple juice', 15),
    (208, 2, 'Old Fashioned', 10.75, 'Classic whiskey cocktail with sugar, bitters, and orange twist', 20),
    (209, 2, 'Negroni', 11.25, 'Bitter and sweet cocktail with gin, vermouth, and Campari', 16),
    (210, 2, 'Screwdriver', 8.50, 'Simple mix of vodka and orange juice', 14),
    
    (301, 3, 'Chocolate Cake', 6.99, 'Rich and moist chocolate cake with fudge frosting', 8),
    (302, 3, 'Cheesecake', 8.50, 'Creamy cheesecake with a graham cracker crust', 10),
    (303, 3, 'Tiramisu', 9.75, 'Italian dessert with layers of coffee-soaked ladyfingers and mascarpone cream', 12),
    (304, 3, 'Apple Pie', 7.25, 'Homemade apple pie with a flaky crust and cinnamon-apple filling', 8),
    (305, 3, 'Ice Cream Sundae', 8.99, 'Classic sundae with ice cream, toppings, and whipped cream', 10),
    (306, 3, 'Chocolate Brownie', 5.50, 'Warm chocolate brownie with a scoop of vanilla ice cream', 15),
    (307, 3, 'Lemon Tart', 7.75, 'Tangy lemon tart with a buttery crust', 12),
    (308, 3, 'Banana Split', 9.50, 'Indulgent banana split with ice cream, bananas, and toppings', 18),
    (309, 3, 'Panna Cotta', 6.25, 'Italian dessert with creamy vanilla pudding and fruit topping', 10),
    (310, 3, 'Red Velvet Cake', 8.99, 'Classic red velvet cake with cream cheese frosting', 8),
    
     (401, 4, 'Water', 1.50, 'Bottled water', 50),
    (402, 4, 'Coca-Cola', 2.00, 'Carbonated soft drink', 30),
    (403, 4, 'Cheese Assortment', 15.99, 'Selection of cheeses with crackers and fruit', 12),
    (404, 4, 'Grilled Chicken', 14.95, 'Tender grilled chicken breast served with vegetables', 20),
    (405, 4, 'Spaghetti Bolognese', 12.75, 'Pasta with meat sauce and grated cheese', 18),
    (406, 4, 'Fish and Chips', 16.50, 'Deep-fried fish and fries with tartar sauce', 15),
    (407, 4, 'Vegetarian Stir-Fry', 11.99, 'Assorted vegetables stir-fried with tofu or tempeh', 12),
    (408, 4, 'Steak Dinner', 24.99, 'Juicy steak cooked to your preference', 10),
    (409, 4, 'Lasagna', 13.50, 'Layered pasta dish with meat, cheese, and tomato sauce', 16),
    (410, 4, 'Shrimp Scampi', 18.75, 'Garlic-butter shrimp served over pasta', 14),
    (411, 4, 'Chicken Caesar Salad', 11.25, 'Classic Caesar salad with grilled chicken', 20),
    (412, 4, 'BBQ Ribs', 19.99, 'Tender ribs glazed with barbecue sauce', 15),
    (413, 4, 'Pizza Margherita', 10.50, 'Traditional pizza with tomato, mozzarella, and basil', 12),
    (414, 4, 'Burger and Fries', 13.75, 'Juicy beef burger with fries', 18),
    (415, 4, 'Sushi Platter', 22.95, 'Assorted sushi rolls with soy sauce and wasabi', 15),
    (416, 4, 'Chicken Wings', 9.99, 'Crispy chicken wings with dipping sauce', 20),
    (417, 4, 'Pasta Alfredo', 11.50, 'Creamy pasta with Parmesan cheese sauce', 14),
    (418, 4, 'Tacos', 8.75, 'Soft tacos with choice of filling and toppings', 20),
    (419, 4, 'Roast Beef', 16.99, 'Slow-roasted beef with gravy and mashed potatoes', 12),
    (420, 4, 'Fish Tacos', 14.25, 'Grilled fish in soft tortillas with salsa and slaw', 15),
    (421, 4, 'Vegetable Curry', 12.99, 'Spicy vegetable curry with rice', 16),
    (422, 4, 'Pork Chop', 17.50, 'Grilled pork chop with apple sauce', 12),
    (423, 4, 'Stuffed Bell Peppers', 10.75, 'Bell peppers stuffed with rice and vegetables', 14),
    (424, 4, 'Chicken Parmesan', 15.75, 'Breaded chicken with marinara sauce and cheese', 18),
    (425, 4, 'Pad Thai', 13.99, 'Thai stir-fried noodles with shrimp or chicken', 16),
    (426, 4, 'Beef Stroganoff', 14.50, 'Tender beef in creamy mushroom sauce over noodles', 12),
    (427, 4, 'Chicken Quesadilla', 10.99, 'Grilled chicken and cheese in a crispy tortilla', 20),
    (428, 4, 'Ratatouille', 12.25, 'French vegetable stew with herbs and spices', 10),
    (429, 4, 'Sausage and Mash', 11.95, 'Sausages served with mashed potatoes and gravy', 15),
    (430, 4, 'Beef Tacos', 13.25, 'Grilled beef in soft tortillas with salsa and toppings', 18);



INSERT INTO TheTable (TableNumber, Capacity, Location)
VALUES
    (1, 2, 'Main Dining Area'),
    (2, 2, 'Main Dining Area'),
    (3, 2, 'Main Dining Area'),

    (4, 4, 'Main Dining Area'),
    (5, 4, 'Main Dining Area'),
    (6, 4, 'Main Dining Area'),
    (7, 4, 'Main Dining Area'),
    (8, 4, 'Main Dining Area'),
    (9, 4, 'Main Dining Area'),

    (10, 6, 'Main Dining Area'),
    (11, 6, 'Main Dining Area'),
    (12, 6, 'Main Dining Area'),
    (13, 6, 'Main Dining Area'),

    (14, 8, 'Main Dining Area'),
    (15, 8, 'Main Dining Area'),

    (16, 2, 'Patio'),
    (17, 2, 'Patio'),
    (18, 4, 'Patio'),
    (19, 4, 'Patio'),
    (20, 4, 'Patio'),
    (21, 4, 'Patio'),
    (22, 6, 'Patio'),
    (23, 6, 'Patio'),

    (24, 1, 'Bar Area'),
    (25, 1, 'Bar Area'),
    (26, 1, 'Bar Area'),
    (27, 1, 'Bar Area'),
    (28, 1, 'Bar Area'),

    (29, 10, 'Private Room'),
    (30, 10, 'Private Room');



INSERT INTO Employee 
VALUES
-- Director!
(1, 'Alex', 'Titan', '088-888-888', 'alex.titan@1may.com', 'Director', 1600000.00, NULL),

-- Manager!
(2, 'Vladimir', 'Vladimir', '088-800-800', 'vladimir.vladimir@1may.com', 'Manager', 100000.00, 1),

-- Chef Cook!
(3, 'Ponch', 'HamovSarqox', '088-008-800', 'ponch.hamovsarqox@1may.com', 'Chef Cook', 80000.00, 2), 

-- waiters from Spain
(4, 'Sofía', 'Gómez', '088-333-444', 'sofia.gomez@1may.com', 'Head Waiter', 60000.00, 2), 


(5, 'Diego', 'Garcia', '088-002-555', 'diego.garcia@1may.com', 'Waiter', 30000.00, 4), 
(6, 'Elena', 'Martinez', '088-116-777', 'elena.martinez@1may.com', 'Waiter', 30000.00, 4), 
(7, 'Pablo', 'Sanchez', '088-193-789', 'pablo.sanchez@1may.com', 'Waiter', 30000.00, 4), 
(8, 'Maria', 'Lopez', '088-387-321', 'maria.lopez@1may.com', 'Waiter', 30000.00, 4), 
(9, 'Carlos', 'Rodriguez', '088-345-444', 'carlos.rodriguez@1may.com', 'Waiter', 30000.00, 4), 
(10, 'Sofia', 'Hernandez', '088-114-555', 'sofia.hernandez@1may.com', 'Waiter', 30000.00, 4), 
(11, 'Antonio', 'Perez', '088-808-909', 'antonio.perez@1may.com', 'Waiter', 30000.00, 4), 
(12, 'Isabella', 'Gomez', '088-294-789', 'isabella.gomez@1may.com', 'Waiter', 30000.00, 4), 
(13, 'Manuel', 'Ruiz', '088-789-123', 'manuel.ruiz@1may.com', 'Waiter', 30000.00, 4), 
(14, 'Eva', 'Fernandez', '088-678-345', 'eva.fernandez@1may.com', 'Waiter', 30000.00, 4), 
(15, 'Javier', 'Diaz', '088-432-678', 'javier.diaz@1may.com', 'Waiter', 30000.00, 4), 

-- receptionist from Georgia    
(16, 'Nino', 'Gogoladze', '088-321-987', 'nino.gogoladze@1may.com', 'Receptionist', 40000.00, 1),


-- cleaners and dishwashers from Africa
(17, 'Kwame', 'Asante', '088-80-513', 'kwame.asante@1may.com', 'Cleaner', 25000.00, 2), 
(18, 'Oluwakemi', 'Adeleke', '088-907-654', 'oluwakemi.adeleke@1may.com', 'Cleaner', 25000.00, 2), 
(19, 'Chinonso', 'Okonkwo', '088-604-789', 'chinonso.okonkwo@1may.com', 'Cleaner', 25000.00, 2), 
(20, 'Folake', 'Adeboye', '088-789-456', 'folake.adeboye@1may.com', 'Cleaner', 25000.00, 2), 
(21, 'Abdul', 'Sesay', '088-567-234', 'abdul.sesay@1may.com', 'Dishwasher', 25000.00, 2), 
(22, 'Fatou', 'Diop', '088-123-789', 'fatou.diop@1may.com', 'Dishwasher', 25000.00, 2), 
(23, 'Kwesi', 'Doe', '088-234-456', 'kwesi.doe@1may.com', 'Dishwasher', 25000.00, 2), 
(24, 'Naledi', 'Mbatha', '088-345-123', 'naledi.mbatha@1may.com', 'Dishwasher', 25000.00, 2), 
(25, 'Simba', 'Kamau', '088-416-789', 'simba.kamau@1may.com', 'Dishwasher', 25000.00, 2),

-- barmen from China
(26, 'Wei', 'Li', '088-100-222', 'wei.li@1may.com', 'Head Barmen', 35000.00, 2),
(27, 'Yuan', 'Zhang', '088-002-323', 'yuan.zhang@1may.com', 'Barmen', 35000.00, 26),
(28, 'Cheng', 'Wu', '088-313-414', 'cheng.wu@1may.com', 'Barmen', 35000.00, 26),
(29, 'Jin', 'Li', '088-444-555', 'jin.li@1may.com', 'Barmen', 35000.00, 26),
(30, 'Tao', 'Wang', '088-255-866', 'tao.wang@1may.com', 'Barmen', 35000.00, 26),

-- Russian Cookers
(31, 'Ivan', 'Ivanov', '088-111-222', 'ivan.ivanov@1may.com', 'Cooker', 40000.00, 3),
(32, 'Dmitri', 'Petrov', '088-234-567', 'dmitri.petrov@1may.com', 'Cooker', 40000.00, 3),
(33, 'Nikolai', 'Sidorov', '088-345-678', 'nikolai.sidorov@1may.com', 'Cooker', 40000.00, 3),
(34, 'Sergei', 'Ivanov', '088-456-789', 'sergei.ivanov@1may.com', 'Cooker', 40000.00, 3),
(35, 'Yuri', 'Smirnov', '088-567-890', 'yuri.smirnov@1may.com', 'Cooker', 40000.00, 3),
(36, 'Alexei', 'Popov', '088-678-901', 'alexei.popov@1may.com', 'Cooker', 40000.00, 3),
(37, 'Oleg', 'Kuznetsov', '088-789-012', 'oleg.kuznetsov@1may.com', 'Cooker', 40000.00, 3),
(38, 'Pavel', 'Volkov', '088-890-123', 'pavel.volkov@1may.com', 'Cooker', 40000.00, 3),
(39, 'Viktor', 'Smirnov', '088-901-234', 'viktor.smirnov@1may.com', 'Cooker', 40000.00, 3),
(40, 'Andrei', 'Ivanov', '088-012-345', 'andrei.ivanov@1may.com', 'Cooker', 40000.00, 3);


INSERT INTO Customer (CustomerID, FirstName, LastName, Phone, Email, Budget)
VALUES
(1, 'Johann', 'Schmidt', '088-987-123', 'johann.schmidt@guest.com', 50000.00),
(2, 'Anna', 'Müller', '088-987-234', 'anna.muller@guest.com', 75000.00),
(3, 'Michael', 'Meier', '088-987-345', 'michael.meier@guest.com', 60000.00),
(4, 'Emilia', 'Braun', '088-987-456', 'emilia.braun@guest.com', 45000.00),
(5, 'Wilhelm', 'Schneider', '088-987-567', 'wilhelm.schneider@guest.com', 80000.00),
(6, 'Olivia', 'Schulz', '088-987-678', 'olivia.schulz@guest.com', 70000.00),
(7, 'Jakob', 'Anders', '088-987-789', 'jakob.anders@guest.com', 55000.00),
(8, 'Sophie', 'Hernandez', '088-987-890', 'sophie.hernandez@guest.com', 65000.00),

(9, 'Sophia', 'Keller', '087-987-901', 'sophia.keller@guest.com', 70000.00),
(10, 'Leon', 'Wagner', '087-987-012', 'leon.wagner@guest.com', 65000.00),
(11, 'Elena', 'Becker', '087-987-123', 'elena.becker@guest.com', 60000.00),
(12, 'Noah', 'Hofmann', '087-987-234', 'noah.hofmann@guest.com', 55000.00),
(13, 'Lina', 'Wolf', '087-987-345', 'lina.wolf@guest.com', 80000.00),
(14, 'Finn', 'Schulze', '087-987-456', 'finn.schulze@guest.com', 70000.00),
(15, 'Emma', 'Franz', '087-987-567', 'emma.franz@guest.com', 75000.00),
(16, 'Julian', 'Kaiser', '087-987-678', 'julian.kaiser@guest.com', 60000.00),
(17, 'Mila', 'Pohl', '087-987-789', 'mila.pohl@guest.com', 70000.00),
(18, 'Paul', 'Bach', '087-987-890', 'paul.bach@guest.com', 65000.00);


INSERT INTO Reservation (ReserveID, ReserveDate, TableNumber, PeopleCount, CustomerID)
VALUES
(1, '2024-05-10', 1, 2, 1),  
(2, '2024-05-10', 2, 2, 2),  
(3, '2024-05-10', 4, 4, 3),   
(4, '2024-05-10', 8, 4, 4),  
(5, '2024-05-10', 15, 8, 5),  
(6, '2024-05-10', 18, 4, 6),  
(7, '2024-05-10', 23, 6, 7),  
(8, '2024-05-10', 24, 1, 8),

(9, '2024-05-18', 3, 2, 9),  
(10, '2024-05-18', 6, 2, 10),  
(11, '2024-05-18', 9, 4, 11),   
(12, '2024-05-18', 12, 4, 12),  
(13, '2024-05-18', 16, 8, 13),  
(14, '2024-05-18', 19, 4, 14),  
(15, '2024-05-18', 21, 6, 15),  
(16, '2024-05-18', 25, 1, 16),
(17, '2024-05-18', 27, 4, 17),
(18, '2024-05-18', 29, 2, 18);


UPDATE TheTable
SET TableStatus = 'Not Available'
WHERE TableNumber IN (1, 2, 4, 8, 15, 18, 23, 24,3,6,9,12,16,19,21,25,27,29);


INSERT INTO Orders (OrderNumber, DateCreated, DateCompleted, OrderStatus, CustomerID, EmployeeID, Creates)
VALUES

(1, '2024-05-10', '2024-05-10','Completed', 1, 4, 26),
(2, '2024-05-10', '2024-05-10',  'Completed', 1, 5, 31),

(3, '2024-05-10', '2024-05-10',  'Completed', 2, 6, 27),
(4, '2024-05-10', '2024-05-10',  'Completed', 2, 7, 32),

(5, '2024-05-11', '2024-05-11', 'Completed', 3, 8, 33),
(6, '2024-05-11', '2024-05-11',  'Completed', 3, 9, 34),

(7, '2024-05-12', '2024-05-12', 'Completed', 4, 10, 35),
(8, '2024-05-12', '2024-05-12', 'Cancelled', 4, 11, 36),

(9, '2024-05-13', '2024-05-13', 'Completed', 5, 12, 37),
(10, '2024-05-13', '2024-05-13', 'Completed', 5, 13, 38),

(11, '2024-05-14', '2024-05-14', 'Cancelled', 6, 14, 39),
(12, '2024-05-14', '2024-05-14', 'Completed', 6, 15, 40),

(13, '2024-05-15', '2024-05-15', 'Completed', 7, 4, 26),
(14, '2024-05-15', '2024-05-15', 'Completed', 7, 5, 31),

(15, '2024-05-16', '2024-05-16','Completed', 8, 6, 27),

(16, '2024-05-18', '2024-05-18', 'Completed', 9, 8, 31),
(17, '2024-05-18', '2024-05-18', 'Completed', 9, 7, 32),

(18, '2024-05-18', '2024-05-18', 'Completed', 10, 5, 33),
(19, '2024-05-18', '2024-05-18', 'Completed', 10, 15, 34),

(20, '2024-05-18', '2024-05-18', 'Completed', 11, 4, 35),
(21, '2024-05-18', '2024-05-18', 'Completed', 11, 14, 36),

(22, '2024-05-18', '2024-05-18', 'Completed', 12, 13, 37),
(23, '2024-05-18', '2024-05-18', 'Cancelled', 12, 12, 38),

(24, '2024-05-18', '2024-05-18', 'Completed', 13, 9, 39),
(25, '2024-05-18', '2024-05-18', 'Completed', 13, 9, 40),

(26, '2024-05-18', '2024-05-18', 'Cancelled', 14, 8, 26),
(27, '2024-05-18', '2024-05-18', 'Completed', 14, 10, 27),

(28, '2024-05-18', '2024-05-18', 'Completed', 15, 3, 28),
(29, '2024-05-18', '2024-05-18', 'Completed', 15, 4, 29),

(30, '2024-05-18', '2024-05-18', 'Completed', 16, 7, 30),
(31, '2024-05-18', '2024-05-18', 'Completed', 16, 7, 31),

(32, '2024-05-18', '2024-05-18', 'Completed', 17, 7, 32),
(33, '2024-05-18', '2024-05-18', 'Completed', 17, 4, 33),

(34, '2024-05-18', '2024-05-18', 'Completed', 18, 4, 34),
(35, '2024-05-18', '2024-05-18', 'Completed', 18, 4, 35);


INSERT INTO OrderItem (OrderNumber, ID, Quantity)
VALUES
(1, 401, 1),  -- 1 water
(2, 303, 2),  -- 2 Tiramisu

(3, 402, 3),  -- 3 Coca-Cola
(4, 310, 1),  -- 1 Red Velvet Cake

(5, 401, 4),  -- 4 Water
(6, 402, 1),  -- 1 Coca-Cola

(7, 101, 2),  -- 2 Pancakes
(8, 102, 1),  -- 1 Eggs Benedict

(9, 104, 3),  -- 3 French Toast
(10, 106, 3),  -- 3 Omelette

(11, 305, 2),  -- 2 Ice Cream Sundae
(12, 308, 1),  -- 1 Banana Split

(13, 204, 1),  -- 1 Mojito
(14, 426, 1),  -- 1 Beef Stroganoff

(15, 206, 2),  -- 2 Mai Tai

(16, 401, 1),  -- 1 Water
(17, 303, 2),  -- 2 Tiramisu

(18, 402, 3),  -- 3 Coca-Cola
(19, 310, 1),  -- 1 Red Velvet Cake

(20, 401, 4),  -- 4 Water
(21, 402, 1),  -- 1 Coca-Cola

(22, 101, 2),  -- 2 Pancakes
(23, 102, 1),  -- 1 Eggs Benedict

(24, 104, 3),  -- 3 French Toast
(25, 106, 3),  -- 3 Omelette

(26, 305, 2),  -- 2 Ice Cream Sundae
(27, 308, 1),  -- 1 Banana Split

(28, 204, 1),  -- 1 Mojito
(29, 426, 1),  -- 1 Beef Stroganoff

(30, 206, 2),  -- 2 Mai Tai
(31, 202, 1),  -- 1 Cosmopolitan

(32, 301, 2),  -- 2 Chocolate Cake
(33, 308, 1),  -- 1 Banana Split

(34, 305, 2),  -- 2 Ice Cream Sundae
(35, 308, 1);  -- 1 Banana Split


INSERT INTO Payment 
VALUES
(1, 6, 9.5, '2024-05-17', 'Card', 'Approved'),
(2, 5, 61.47, '2024-05-17', 'Cash', 'Approved'),    
(3, 3, 8.00, '2024-05-17', 'Card', 'Approved'),    
(4, 1, 21.00, '2024-05-17', 'Cash', 'Approved'),    
(5, 4, 19.98, '2024-05-17', 'Card', 'Approved'),   
(6, 8, 130.00, '2024-05-17', 'Cash', 'Approved'),    
(7, 2, 25.90, '2024-05-17', 'Card', 'Approved'),   
(8, 7, 25.00, '2024-05-17', 'Cash', 'Approved'), 
(9, 9, 9.5, '2024-05-19', 'Card', 'Approved'),

(10, 11, 61.47, '2024-05-19', 'Cash', 'Approved'),    
(11, 12, 8.00, '2024-05-19', 'Card', 'Approved'),    
(12, 14, 21.00, '2024-05-19', 'Cash', 'Approved'),    
(13, 15, 19.98, '2024-05-19', 'Card', 'Approved'),   
(14, 17, 130.00, '2024-05-19', 'Cash', 'Approved'),    
(15, 16, 25.90, '2024-05-19', 'Card', 'Approved'),   
(16, 18, 25.00, '2024-05-19', 'Cash', 'Approved'),
(17, 13, 25.00, '2024-05-19', 'Cash', 'Approved'),
(18, 10, 25.00, '2024-05-19', 'Cash', 'Approved');


