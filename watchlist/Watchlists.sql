CREATE SEQUENCE watchlist_id_seq
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;
  
CREATE TABLE Watchlists (
watchlist_id integer DEFAULT nextval('watchlist_id_seq'::regclass) NOT NULL,
name varchar(64),
date_created date NOT NULL DEFAULT now(),
CONSTRAINT pk_watchlist_id PRIMARY KEY (watchlist_id)
);
CREATE SEQUENCE stock_id_seq
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
 CACHE 1;
 
CREATE TABLE Stocks (
stock_id integer DEFAULT nextval('stock_id_seq'::regclass) NOT NULL,
watchlist_id integer not null, 
symbol varchar(64),
CONSTRAINT pk_stock_id PRIMARY KEY (stock_id),
CONSTRAINT fk_watchlist_id FOREIGN KEY (watchlist_id) REFERENCES Watchlists(watchlist_id)
);
