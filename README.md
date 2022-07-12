# promotion-engine
## a simple ruby based promotion engine

## class structures

### product
- name
    - string
- price 
    - base price

### promotion
- is_combo
    - true / false
    - describes if the promotion applies to a combination of two or more products
- has_qualifying_amount
    - true / false
    - describes if there is a minimum requirement of items to recieve the promotional price
- price
    - float
    - promotional price
- qualifying_amoutn
    - number of items required to receive the promotion
