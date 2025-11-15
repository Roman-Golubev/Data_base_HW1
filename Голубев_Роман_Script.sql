create table transaction (
	transaction_id  integer primary key,
	product_id integer not null,
	customer_id integer not null,
	transaction_date date not null,
	online_order text not null,
	order_status text not null
);

create table product (
	product_id integer primary key,
	brand text not null,
	product_line text not null,
	product_class text not null,
	product_size text not null,
	list_price text not null,
	standard_cost real not null
);

create table address (
	address_id serial primary key,
	address text not null,
	postcode integer not null,
	state text not null,
	country text not null
);

create table job (
	job_id serial primary key,
	job_title text,
	job_industry_category text
);

create table wealth (
	wealth_id serial primary key,
	wealth_segment text not null,
	owns_car text not null,
	property_valuation integer not null
);

create table customer (
	customer_id integer primary key,
	address_id integer not null,
	job_id integer not null,
	wealth_id integer not null,
	first_name text not null,
	last_name text,
	gender text not null,
	DOB date not null,
	deceased_indicator text not null
);