


-- Creating Tony Stark record
INSERT INTO public.account(
	 account_firstname, account_lastname, account_email, account_password)
	VALUES ( 'Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@an');

-- Viewing the account table
SELECT * FROM public.account
ORDER BY account_id ASC 

-- Updating the Stark record to show Admin
UPDATE public.account
	SET   account_type='Admin'
	WHERE account_id=1;

-- Deleting the Tony Stark record
DELETE FROM public.account
	WHERE account_id=1;


-- Modifying the GM Hummer description
UPDATE public.inventory
SET inv_description = REPLACE(inv_description, 'the small interiors', 'a huge interior')
WHERE inv_id = 10;


-- Update of all the records to add "/vehicles"
UPDATE public.inventory
SET inv_image=REPLACE(inv_image, '/images', '/images/vehicles'),
	inv_thumbnail= REPLACE(inv_thumbnail, '/images', '/images/vehicles');

-- ready to submit