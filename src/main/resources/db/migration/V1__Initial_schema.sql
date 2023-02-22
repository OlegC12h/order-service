CREATE TABLE orders (
    id                  BIGSERIAL PRIMARY KEY NOT NULL ,
    book_isbn           varchar(255) NOT NULL ,
    book_name           varchar(255) ,
    book_price          float8 ,
    quality             int NOT NULL ,
    status              varchar(255) NOT NULL ,
    created_date        timestamp NOT NULL ,
    last_modified_date  timestamp NOT NULL ,
    version             int NOT NULL
)